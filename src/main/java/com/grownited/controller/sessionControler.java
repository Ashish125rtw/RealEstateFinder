package com.grownited.controller;

import java.io.IOException;
import java.util.List;
import java.util.Optional;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import com.cloudinary.Cloudinary;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

import jakarta.mail.Multipart;
import jakarta.servlet.http.HttpSession; 
import org.springframework.web.multipart.MultipartFile;
import com.cloudinary.utils.ObjectUtils;

@Controller
public class sessionControler {
	
	@Autowired
	private UserRepository repositoryUser;
	
	@Autowired
	private MailService serviceMail;
	
	@Autowired
	private PasswordEncoder encoder;
	
	 @Autowired
	private Cloudinary cloudinary;

	// Homepage
	@GetMapping({"homepage"})
	public String homepage() {
		return "homepage";
	}
	
	// Signup Page
	@GetMapping("signup")
	public String signup() {
		return "signup";
	}

	// Login Page
	@GetMapping({"login", "firstpage"})
	public String login() {
		return "login";
	}

	// Save User (Signup Process)
	 @PostMapping("saveuser")
	public String saveUser(UserEntity userEntity, @RequestParam("profilePic") MultipartFile profilePic) {

		    if (profilePic == null || profilePic.isEmpty()) {
		        return "signup"; // Return to signup if no file is provided
		    }

		    System.out.println("Uploaded File Name: " + profilePic.getOriginalFilename());

		    // Check for valid file extensions
		    String fileName = profilePic.getOriginalFilename();
		    if (!(fileName.endsWith(".jpg") || fileName.endsWith(".jpeg") || fileName.endsWith(".png"))) {
		        return "signup"; // Return if file format is invalid
		    }

		    try {
		        // Upload to Cloudinary
		        Map<String, Object> result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
		        System.out.println("Upload Response: " + result);
		        System.out.println("Profile Pic URL: " + result.get("url"));

		        // Save profile picture URL
		        userEntity.setProfilePicPath(result.get("url").toString());
		    } catch (IOException e) {
		        e.printStackTrace();
		        return "signup"; // Return in case of upload failure
		    }

		    // Encrypt password before saving
		    String encPassword = encoder.encode(userEntity.getPassword());
		    userEntity.setPassword(encPassword);

		    // Save user and send welcome mail
		    repositoryUser.save(userEntity);
		    serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());

		    return "redirect:/login";
		

	}

	// List Users
	@GetMapping("ListUser")
	public String listUsers(Model model) {
		List<UserEntity> userList = repositoryUser.findAll();
		model.addAttribute("userList", userList);
		return "ListUser";
	}

	// Forgot Password Page
	@GetMapping("forgotpassword")
	public String forgotPasswordPage() {
		return "forgotpassword";
	}
    
	// Send OTP for Forgot Password
	@PostMapping("sendOtp")
	public String sendOtp(@RequestParam String email, Model model) {
		Optional<UserEntity> op = repositoryUser.findByEmail(email);

		if (op.isEmpty()) {
			model.addAttribute("error", "Email not found");
			return "forgotpassword";
		}

		// Generate 6-digit OTP
		String otp = String.valueOf((int)(Math.random() * 1000000));

		// Save OTP to user entity
		UserEntity user = op.get();
		user.setOtp(otp);
		repositoryUser.save(user);

		// Send OTP via email
		serviceMail.sendOtpForForgotPassword(email, user.getFirstName(), otp);

		return "changpassword";
	}

	// Open Change Password Page
	@PostMapping("updatepassword")
	public String updatePassword(@RequestParam String email, 
	                             @RequestParam String password, 
	                             @RequestParam String otp, 
	                             Model model) {
		Optional<UserEntity> op = repositoryUser.findByEmail(email);

		if (op.isEmpty()) {
			model.addAttribute("error", "Invalid Data");
			return "changpassword";
		}

		UserEntity user = op.get();
		if (!user.getOtp().equals(otp)) {
			model.addAttribute("error", "Invalid OTP");
			return "changpassword";
		}

		// Update password
		String encPwd = encoder.encode(password);
		user.setPassword(encPwd);
		user.setOtp(""); // Clear OTP after use
		repositoryUser.save(user);

		model.addAttribute("msg", "Password updated successfully.");
		return "login";
	}

	// User Authentication (Login)
	@PostMapping("authenticate")
	public String authenticate(@RequestParam("email") String email, 
	                           @RequestParam("password") String password, 
	                           Model model, HttpSession session) {
		Optional<UserEntity> op = repositoryUser.findByEmail(email);

		if (op.isPresent()) {
			UserEntity dbUser = op.get();

			// Verify password
			if (encoder.matches(password, dbUser.getPassword())) {
				session.setAttribute("user", dbUser); // Store user session

				// Redirect based on user role
				switch (dbUser.getRole()) {
					case "Admin":  return "redirect:/AdminDashboard";
					case "Buyer":  return "redirect:/BuyerDashboard"; 
					case "Seller": return "redirect:/SellerDashboard";
					case "Agent":  return "redirect:/AgentDashboard"; 
					default:
						model.addAttribute("error", "Please contact Admin (Error Code #0991)");
						return "login";
				}
			} else {
				model.addAttribute("error", "Incorrect Password");
			}
		} else {
			model.addAttribute("error", "User Not Found");
		}

		return "login";
	}

	// Logout User
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login"; // Redirect to login page
	}

	// View User Details
	@GetMapping("/viewUser/{id}")
	public String viewUser(@PathVariable("id") Integer id, Model model) {
		Optional<UserEntity> user = repositoryUser.findById(id);

		if (user.isPresent()) {
			model.addAttribute("user", user.get());
			return "ViewUser";
		}

		return "redirect:/ListUser"; 
	}

	// Delete User
	@GetMapping("/deleteUser/{id}")
	public String deleteUser(@PathVariable("id") Integer id) {
		repositoryUser.deleteById(id);
		return "redirect:/ListUser";
	}

	// Edit User
	@GetMapping("/editUser/{id}")
	public String editUser(@PathVariable("id") Integer id, Model model) {
		Optional<UserEntity> user = repositoryUser.findById(id);

		if (user.isPresent()) {
			model.addAttribute("user", user.get());
			return "EditUser"; // Load EditUser.jsp
		}

		return "redirect:/ListUser"; // Redirect if user is not found
	}

	// Update User
	@PostMapping("/updateUser")
	public String updateUser(@ModelAttribute UserEntity userEntity) {
		repositoryUser.save(userEntity);  // Update user in the database
		return "redirect:/ListUser";  // Redirect to user list
	}

	// Privacy Policy Page
	@GetMapping("privacy")
	public String privacy() {
		return "privacy";
	}
}

