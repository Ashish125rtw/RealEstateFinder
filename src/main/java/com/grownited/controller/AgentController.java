package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AgentEntity;
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

}
