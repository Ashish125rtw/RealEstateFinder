package com.grownited.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;


@Controller
public class GuestController {

	@PostMapping("saveguest")
	public String saveGuest() {
		return "Login";
	}
	
}
