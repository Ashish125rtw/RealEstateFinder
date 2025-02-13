package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import com.grownited.entity.StateEntity;
import com.grownited.repository.StateRepository;

@Controller
public class StateController {
	@Autowired
	StateRepository repostate;
	
    @GetMapping("newstate")
    public String newState(Model model) { 
        
        return "newstate"; 
    }

    @PostMapping("savestate")
    public String saveState(@ModelAttribute("state") StateEntity stateEntity) { 
        System.out.println(stateEntity.getStatename()); // Fixed method name
        
        repostate.save(stateEntity);
        
        return "redirect:/newstate"; // Redirecting to newstate page
    }
}
