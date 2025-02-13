package com.grownited.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;


@Controller
public class GuestController {
	
	@GetMapping("newguest")
	public String newGuest() {
		return "newGuest";
	}
	@PostMapping("saveguest")
	public String saveGuest() {
		return "Login";
	}
	
}
