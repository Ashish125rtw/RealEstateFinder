package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import com.grownited.entity.PropertyEntity;

public interface PropertyRepository extends JpaRepository<PropertyEntity, Long> {
    List<PropertyEntity> findBySellerId(Long sellerId); // Fetch properties of a specific seller
    
    @Query("SELECT p FROM PropertyEntity p WHERE p.active = true") // Optional: add WHERE
    List<PropertyEntity> getAllProperties();

}
