package com.grownited.controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.repository.AgentRepository;
import com.grownited.repository.InquiryRepository;
import com.grownited.repository.PropertyRepository;
import com.grownited.repository.UserRepository;


@Controller
public class AdminController {

	@Autowired
	private PropertyRepository propertyRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private InquiryRepository inquiryRepository;

	@Autowired
	private AgentRepository agentRepository;
	
	@GetMapping("AdminDashboard")
	public String adminDashboard(Model model) {
		 long totalProperties = propertyRepository.count();
	        long totalAgents = agentRepository.count();
	        long totalUsers = userRepository.count();
//	        
//	        long pendingInquiries = inquiryRepository.countByStatus("Pending");

	        System.out.println("Total Properties: " + totalProperties);
	        System.out.println("Total Agents: " + totalAgents);
	        System.out.println("Total Users: " + totalUsers);
////	        System.out.println("Pending Inquiries: " + pendingInquiries);
//
	        model.addAttribute("totalProperties", totalProperties);
	        model.addAttribute("totalAgents", totalAgents);
	        model.addAttribute("totalUsers", totalUsers);
//	        model.addAttribute("pendingInquiries", pendingInquiries);
	        
		
		return "AdminDashboard";
	}
	
}
