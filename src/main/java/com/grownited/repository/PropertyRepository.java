package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
import com.grownited.entity.PropertyEntity;

public interface PropertyRepository extends JpaRepository<PropertyEntity, Long> {
    List<PropertyEntity> findBySellerId(Long sellerId); // Fetch properties of a specific seller
}
