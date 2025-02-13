package com.grownited.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "state") // Table name in DB
public class StateEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer stateId; // Changed from userId to stateId

    private String statename;

    // Getters and Setters
    public Integer getStateId() {
        return stateId;
    }

    public void setStateId(Integer stateId) {
        this.stateId = stateId;
    }

    public String getStatename() { // Corrected method name
        return statename;
    }

    public void setStatename(String statename) {
        this.statename = statename;
    }
}
