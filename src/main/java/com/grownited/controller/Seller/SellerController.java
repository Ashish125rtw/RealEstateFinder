package com.grownited.controller.Seller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class SellerController {

    @GetMapping("SellerDashboard")  
    public String sellerDashboard() {
        return "SellerDashboard"; 
    }
}
