package com.grownited.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.AgentEntity;
import com.grownited.entity.AreaEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AgentRepository;
import com.grownited.repository.InquiryRepository;
import com.grownited.repository.PropertyRepository;
import com.grownited.repository.UserRepository;
import com.grownited.repository.BuyerInquiryRepository;



@Controller
public class AgentController {
	
//	@Autowired
//	
//	private AgentRepository repoagent;
	
	@Autowired
	private PropertyRepository propertyRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private InquiryRepository inquiryRepository;

	@Autowired
	private AgentRepository agentRepository;
	@Autowired
	private BuyerInquiryRepository  inquiryRepo;
	
	@GetMapping("/Agentdetails")
	
	public String AgentDetails() {
		return "Agentdetails";
		
	}
	
//	@PostMapping("/saveagent")
//	
//	public String saveagent(AgentEntity agentEntity){
//		System.out.println(agentEntity.getAddress());
//		System.out.println(agentEntity.getAgencyName());
//		System.out.println(agentEntity.getAddress());
//		
//		repoagent.save(agentEntity);
//		return "Agentdetails";
//	}
//	
	@GetMapping("ListAgent")
    public String listagent(Model model) {
    	
    	List<AgentEntity> agentList= agentRepository.findAll();
    	model.addAttribute("agentList", agentList);
    	
    	return "ListAgent";
    }
	

	@GetMapping("AgentDashboard")
		  public String AgentDashboard(Model model) {
		        long totalProperties = propertyRepository.count();
		        long totalAgents = agentRepository.count();
		        long totalUsers = userRepository.count();
		        long totalInquiries = inquiryRepo.count();


		        System.out.println("Total Properties: " + totalProperties);
		        System.out.println("Total Agents: " + totalAgents);
		        System.out.println("Total Users: " + totalUsers);
		        model.addAttribute("pendingInquiries", totalInquiries);

		        model.addAttribute("inquiryCount", totalInquiries);
		        model.addAttribute("totalProperties", totalProperties);
		        model.addAttribute("totalAgents", totalAgents);
		        model.addAttribute("totalUsers", totalUsers);
		        
		       		
		return "AgentDashboard";
	}
//	@GetMapping("NewAgent")
//	public String newAgent() {
//		
//		return "NewAgent";
//	}
	
	
	

	    // Show the Agent Registration Form
	    @GetMapping("/NewAgent")
	    public String showAgentRegistrationForm(Model model) {
	        model.addAttribute("successMessage", null); // Clear message on page load
	        return "NewAgent"; // JSP page name
	    }

	    // Handle Agent Registration Form Submission (Stay on the Same Page)
	    @PostMapping("/saveagent")
	    public String saveAgent(
	            @RequestParam("licenseNo") String licenseNo,
	            @RequestParam("agencyName") String agencyName,
	            @RequestParam("experienceYears") Integer experienceYears,
	            @RequestParam(value = "rating", required = false) Double rating,
	            @RequestParam("address") String address,
	            Model model
	    ) {
	        try {
	            AgentEntity agent = new AgentEntity();
	            agent.setLicenseNo(licenseNo);
	            agent.setAgencyName(agencyName);
	            agent.setExperienceYears(experienceYears);
	            agent.setRating(rating != null ? rating : 0.0); // Default rating 0 if not provided
	            agent.setAddress(address);

	            agentRepository.save(agent); // Save to database

	            model.addAttribute("successMessage", "Agent registered successfully!");
	        } catch (Exception e) {
	            model.addAttribute("errorMessage", "Error registering agent: " + e.getMessage());
	        }
	        return "NewAgent"; // Stay on the same page
	    }
	    

	    @GetMapping("/AgentDashb")
	    public String showDashboard(Model model) {
	        long totalProperties = propertyRepository.count();
	        long totalAgents = agentRepository.count();
	        long totalUsers = userRepository.count();
	        
//	        long pendingInquiries = inquiryRepository.countByStatus("Pending");

	        System.out.println("Total Properties: " + totalProperties);
	        System.out.println("Total Agents: " + totalAgents);
	        System.out.println("Total Users: " + totalUsers);
//	        System.out.println("Pending Inquiries: " + pendingInquiries);

	        model.addAttribute("totalProperties", totalProperties);
	        model.addAttribute("totalAgents", totalAgents);
	        model.addAttribute("totalUsers", totalUsers);
//	        model.addAttribute("pendingInquiries", pendingInquiries);
	        
	        return "AgentDashboard";
	    }
	}
	


