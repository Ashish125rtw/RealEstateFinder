package com.grownited.controller;

import java.util.List;

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
    public String saveState(StateEntity stateEntity) { 
        System.out.println(stateEntity.getStateName());  
        repostate.save(stateEntity);
        return "redirect:/ListState";  
    }
    
    @GetMapping("ListState")
    public String listState(Model model) {  
        List<StateEntity> stateList = repostate.findAll();
        model.addAttribute("stateList", stateList);
        return "ListState";
    }
}

