package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.grownited.repository.UserRepository;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserControler {
	
	@GetMapping("UserHome")
	public String userHome(){
		
		
		return "UserHome";
	}
	
	@GetMapping("ViewUser")
	public String viewUser() {
		
		
		return "ViewUser";
	}
	@GetMapping("no-data")
    public String noDataPage() {
        return "noData";  
    }
	
	
	
	
}
