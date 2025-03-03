package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller("demo")
public class Testing {

	
	@GetMapping("demo")
	public String demo() {
		return "demo";
	}
	@GetMapping("SIGNUPNICE")
	public String SIGNUPNICE() {
		return "SIGNUPNICE";
	}
}
