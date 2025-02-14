package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AreaEntity;
import com.grownited.repository.AreaRepository;

@Controller
public class AreaController {
	
	@Autowired
	
	AreaRepository reposrea;
	
	@GetMapping("/Area")
	
	public String Area() {
				
		return "Area";
	}
	
	@PostMapping("savearea")
	public String savearea(AreaEntity areaEntity) {
		System.out.println(areaEntity.getAreaName());
		reposrea.save(areaEntity);
		
		return "redirect:/Area";
	}
	
}
