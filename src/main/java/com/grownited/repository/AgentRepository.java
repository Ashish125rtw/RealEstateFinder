package com.grownited.repository;

import com.grownited.dto.CityDto;

import com.grownited.entity.AgentEntity;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface AgentRepository extends JpaRepository<AgentEntity, Integer> {
	@Query(value = "SELECT COUNT(*) FROM property_details", nativeQuery = true)
	long getTotalProperties();

	@Query(value = "SELECT COUNT(*) FROM agent_details", nativeQuery = true)
	long getTotalAgents();

	@Query(value = "SELECT COUNT(*) FROM users", nativeQuery = true)
	long getTotalUsers();
	@Query(value = "SELECT COUNT(*) FROM buyer_inquiry", nativeQuery = true)
    long getInquiryCount();

}
