package com.grownited.controller.Admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.PropertyEntity;
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
	
	@GetMapping("admin-pending-properties")
	public String showPendingProperties(Model model) {
	    List<PropertyEntity> pendingProperties = propertyRepository.findByStatus("Pending");
	    model.addAttribute("pendingProperties", pendingProperties);
	    return "admin-pending-properties"; 
	}
	
	// aprove pending properties
	
	@PostMapping("approve-property")
	public String approveProperty(@RequestParam Long propertyId) {
	    Optional<PropertyEntity> optionalProperty = propertyRepository.findById(propertyId);
	    if (optionalProperty.isPresent()) {
	        PropertyEntity property = optionalProperty.get();
	        property.setStatus("Active");
	        propertyRepository.save(property);
	    }
	    return "redirect:/admin-pending-properties"; 
	}
	
	// admin reject property
	@PostMapping("reject-property")
	public String rejectProperty(@RequestParam Long propertyId) {
	    Optional<PropertyEntity> optionalProperty = propertyRepository.findById(propertyId);
	    if (optionalProperty.isPresent()) {
	        PropertyEntity property = optionalProperty.get();
	        property.setStatus("Rejected");
	        propertyRepository.save(property);
	    }
	    return "redirect:/admin-pending-properties"; // Refresh list
	}



	
}
