package com.grownited.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;
import com.grownited.entity.*;

@Controller
public class sessionControler {

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
		// read
		System.out.println(userEntity.getFirstName());
		System.out.println(userEntity.getLastName());
		System.out.println(userEntity.getGender());
		System.out.println(userEntity.getEmail());
		System.out.println(userEntity.getPassword());
//		return "login";// 
		
		 return "redirect:/login";
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
}
