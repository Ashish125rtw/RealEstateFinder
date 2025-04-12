package com.grownited.controller.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller
public class AdminReportControler {
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("/BuyerReport")
	public String BuyerReport(Model model) {
		
		List<UserEntity> users = userRepository.findByRoleAndActive("Buyer", true);  // Fetching only active USERs
		
		model.addAttribute("users", users);  
		
		return "BuyerReport";
	}
	@GetMapping("/SellerReport")
	public String SellerReport(Model model) {
		
		List<UserEntity> users = userRepository.findByRoleAndActive("Seller", true);  // Fetch only active USERs
		
		model.addAttribute("users", users);  // Send to JSP
		
		return "SellerReport";
	}
	@GetMapping("/AgentReport")
	public String AgentReport(Model model) {
		
		List<UserEntity> users = userRepository.findByRoleAndActive("Agent", true);  // Fetch only active USERs
		
		model.addAttribute("users", users);  // Send to JSP
		
		return "AgentReport";
	}
}
