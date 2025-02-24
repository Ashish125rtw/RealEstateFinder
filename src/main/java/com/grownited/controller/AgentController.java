package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	
	@PostMapping("/saveagent")
	
	public String saveagent(AgentEntity agentEntity){
		System.out.println(agentEntity.getAddress());
		System.out.println(agentEntity.getAgencyName());
		System.out.println(agentEntity.getAddress());
		
		repoagent.save(agentEntity);
		return "Agentdetails";
	}
	
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

}
