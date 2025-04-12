package com.grownited.controller.Buyer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BuyerDashboard {

		@GetMapping("BuyerDashboard")
		public String buyerDashboard() {
			
			return "BuyerDashboard";
		}
		
	}



