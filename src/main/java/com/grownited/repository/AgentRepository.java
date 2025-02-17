package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.AgentEntity;

public interface AgentRepository extends JpaRepository<AgentEntity, Integer> {

}
