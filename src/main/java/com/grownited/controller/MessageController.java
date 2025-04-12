package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MessageController {

    @GetMapping("/noData")
    public String noDataPage() {
        return "noData";  // No .jsp or path prefix, just the name
    }
}

