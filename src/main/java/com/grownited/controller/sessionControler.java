package com.grownited.controller;
import java.util.List;	

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
    
    @PostMapping("authenticate")
    public String authenticate(String email , String password ,  Model model) {
    	
    	System.out.println(email);
    	System.out.println(password);
    	
//    	= repositoryUser.findEmail();
    	
    	return "login";
    }
    
}


