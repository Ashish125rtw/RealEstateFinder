package com.grownited.dto;

public class DashboardDTO {
	
	    private long totalProperties;
	    private long totalAgents;
	    private long totalUsers;

	    // Constructor
	    public DashboardDTO(long totalProperties, long totalAgents, long totalUsers) {
	        this.totalProperties = totalProperties;
	        this.totalAgents = totalAgents;
	        this.totalUsers = totalUsers;
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


