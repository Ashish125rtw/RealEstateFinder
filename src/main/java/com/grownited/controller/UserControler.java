package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserControler {
	
	@GetMapping("UserHome")
	public String userHome(){
		
		
		return "UserHome";
	}
}
