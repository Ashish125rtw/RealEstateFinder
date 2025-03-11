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



@Controller
public class AgentController {
	
	@Autowired
	
	AgentRepository repoagent;
	
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
    	
    	List<AgentEntity> agentList= repoagent.findAll();
    	model.addAttribute("agentList", agentList);
    	
    	return "ListAgent";
    }
	

	@GetMapping("AgentDashboard")
	public String agentDashboard() {
		
		return "AgentDashboard";
	}
//	@GetMapping("NewAgent")
//	public String newAgent() {
//		
//		return "NewAgent";
//	}
	
	
	
	
	
	
	
	 @Autowired
	    private AgentRepository agentRepository;

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
	
	

}
