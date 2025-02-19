package com.grownited.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "state")
public class StateEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer stateId;

    private String stateName;  

    // Getters and Setters
    public Integer getStateId() {
        return stateId;
    }

    public void setStateId(Integer stateId) {
        this.stateId = stateId;
    }

    public String getStateName() { 
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }
}
