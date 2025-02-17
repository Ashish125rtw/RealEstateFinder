package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.PropertyEntity;
import com.grownited.repository.PropertyRepository;

@Controller
public class PropertyController {
	
	@Autowired
	
	PropertyRepository repoproperty;
	@GetMapping("Property")
	public String Property() {
		
		return "Property";
	}
	
	@PostMapping("saveproperty")
	public String saveproperty(PropertyEntity propertyEntity) {
		
		System.out.println(propertyEntity.getAddress());
		System.out.println(propertyEntity.getDescription());
		System.out.println(propertyEntity.getFurnishingStatus());
		System.out.println(propertyEntity.getOtherPriceDescription());
		System.out.println(propertyEntity.getPropertyName());
		System.out.println(propertyEntity.getStatus());
		System.out.println(propertyEntity.getTitle());
		System.out.println(propertyEntity.getZipcode());
//		System.out.println(propertyEntity.getActive());
		
		repoproperty.save(propertyEntity);
		
		
		return "Property";
	}
	
}
