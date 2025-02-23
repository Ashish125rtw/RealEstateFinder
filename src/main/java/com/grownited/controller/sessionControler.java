package com.grownited.controller;
//import java.lang.foreign.Linker.Option;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import com.grownited.repository.*;
import org.springframework.web.bind.annotation.*;
import com.grownited.entity.*;
import com.grownited.service.MailService;
import org.springframework.ui.Model;

@Controller
public class sessionControler {
	
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	MailService serviceMail;
	
	@Autowired
	PasswordEncoder encoder;
	
	
	@GetMapping({"homepage"})
	public String homepage() {
		return "homepage";
	}
	
    @GetMapping({"signup"})
    public String signup() {
        return "signup";
    }

    @GetMapping({"login", "firstpage"})
    public String login() {
        return "login";
        
    }

    @PostMapping("saveuser")
    public String saveUser(UserEntity userEntity) {
//    	
//    	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(5); // salt
    	String encPassword  = encoder.encode(userEntity.getPassword());
    	userEntity.setPassword(encPassword);
//    	
    	// send mail
    	repositoryUser.save(userEntity);
    	
    	serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
		 return "redirect:/login";
	}
    
    // User List
    
    @GetMapping("ListUser")
    public String listuser(Model model) {
    	
    	List<UserEntity> userList= repositoryUser.findAll();
    	model.addAttribute("userList", userList);
    	
    	return "ListUser";
    }

    @GetMapping("forgotpassword")
    public String forgotPasswordPage() {
        return "forgotpassword";
    }

    @PostMapping("forgotpassword")
    public String forgotpassword() {
        return "forgotpassword";
    }

    // Open change password page
    @GetMapping("changpassword")
    public String showChangePasswordPage() {
        return "changpassword";  // Redirects to changepassword.jsp
    }

    // Handle password change request
    @PostMapping("changpassword")
    public String changPassword() {
        
        return "login";  // Redirects to login.jsp after successful password change
    }
    
    
 // login authentication
    

    @PostMapping("authenticate")
    public String authenticate(@RequestParam("email") String email, 
                               @RequestParam("password") String password, 
                               Model model) {
        System.out.println("Login Attempt: " + email);
        
        Optional<UserEntity> op = repositoryUser.findByEmail(email);
        
        if (op.isPresent()) {
            UserEntity dbUser = op.get();
            System.out.println("User Found: " + dbUser.getEmail());

            if (encoder.matches(password, dbUser.getPassword())) {
                System.out.println("Password Matched, Redirecting to UserHome");
                return "redirect:/UserHome";
            } else {
                System.out.println("Incorrect Password");
            }
        } else {
            System.out.println("User Not Found");
        }

        model.addAttribute("error", "Invalid Credentials");
        return "login";
    }
    
    // ViewUser
    @GetMapping("/viewUser/{id}")
    public String viewUser(@PathVariable("id") Integer id, Model model) {
        Optional<UserEntity> user = repositoryUser.findById(id);
        if (user.isPresent()) {
            model.addAttribute("user", user.get());
            return "ViewUser";
        }
        return "redirect:/ListUser"; 
    }
    
    //Delete User
    @GetMapping("/deleteUser/{id}")
    public String deleteUser(@PathVariable("id") Integer id) {
    	repositoryUser.deleteById(id);
    	return "redirect:/ListUser";
    }
    
    
    // Edit 
    @GetMapping("/editUser/{id}")
    public String editUser(@PathVariable("id") Integer id, Model model) {
        Optional<UserEntity> user = repositoryUser.findById(id);
        if (user.isPresent()) {
            model.addAttribute("user", user.get());
            return "EditUser"; // This will load EditUser.jsp
        }
        return "redirect:/ListUser"; // Redirect if user is not found
    }

    
    @PostMapping("/updateUser")
    public String updateUser(@ModelAttribute UserEntity userEntity) {
        repositoryUser.save(userEntity);  // Updates user in the database
        return "redirect:/ListUser";  // Redirects back to the user list
    }


}


