package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		repoproperty.save(propertyEntity);
		return "Property";
	}

	// List Property
	@GetMapping("ListProperty")
	public String listProperty(Model model) {
		List<PropertyEntity> propertyList = repoproperty.findAll();

		model.addAttribute("propertyList", propertyList);

		return "ListProperty";
	}

} 