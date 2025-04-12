package com.grownited.dto;

public class DashboardDTO {
	
	    private long totalProperties;
	    private long totalAgents;
	    private long totalUsers;
	    private long totalInquiries;
	    

	    // Constructor
	 
	    public DashboardDTO(long totalProperties, long totalAgents, long totalUsers, long totalInquiries) {
	        this.totalProperties = totalProperties;
	        this.totalAgents = totalAgents;
	        this.totalUsers = totalUsers;
	        this.totalInquiries = totalInquiries;
	    }



	    public long getTotalInquiries() {
			return totalInquiries;
		}

		

		// Getters
	    public long getTotalProperties() {
	        return totalProperties;
	    }

	    public long getTotalAgents() {
	        return totalAgents;
	    }

	    public long getTotalUsers() {
	        return totalUsers;
	    }
	}


