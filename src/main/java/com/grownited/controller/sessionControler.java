package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class sessionControler {

	
	@GetMapping("signup")
	
	public String signup() {
		
		return "signup";
	}
	
	@GetMapping("login")
	public String login() {
		
		return "login";
	}
	
	@GetMapping("forgotpassword")
	public String forgotpassword() {
		
		return "forgotpassword";
	}
	
	
	@PostMapping("saveuser")
	public String saveUser() {
		
		return "login";
	}
	
}