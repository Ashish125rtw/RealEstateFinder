package com.grownited.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.grownited.repository.*;
import org.springframework.web.bind.annotation.*;
import com.grownited.entity.*;
import com.grownited.service.MailService;
@Controller
public class sessionControler {
	
	@Autowired
	
	UserRepository repositoryUser;
	
	@Autowired
	
	MailService serviceMail;
	
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
    // send mail
    	
    	repositoryUser.save(userEntity);
    	
    	serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
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
