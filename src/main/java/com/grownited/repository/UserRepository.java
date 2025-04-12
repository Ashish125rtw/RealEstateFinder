package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.grownited.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity,Integer> {
	
		List<UserEntity> findByRoleAndActive(String role, Boolean active);

//		List<UserEntity> findByRole(String role);

		Optional<UserEntity> findByEmail(String email);
		@Query(value = "SELECT COUNT(*) FROM property_details", nativeQuery = true)
		long getTotalProperties();

		@Query(value = "SELECT COUNT(*) FROM agent_details", nativeQuery = true)
		long getTotalAgents();

		@Query(value = "SELECT COUNT(*) FROM users", nativeQuery = true)
		long getTotalUsers();
	
	

}
