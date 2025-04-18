package com.grownited.repository;

import org.hibernate.query.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.awt.print.Pageable;
import java.util.List;
import com.grownited.entity.PropertyEntity;

public interface PropertyRepository extends JpaRepository<PropertyEntity, Long> {
    List<PropertyEntity> findBySellerId(Long sellerId); // Fetch properties of a specific seller
    
    List<PropertyEntity> findByStatus(String status);
    
    @Query("SELECT p FROM PropertyEntity p WHERE p.active = true") 
    List<PropertyEntity> getAllProperties();
    
//    Page<PropertyEntity> findBySellerId(Long sellerId, Pageable pageable);


    


}
