package com.grownited.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.grownited.entity.FavoriteEntity;

public interface FavoriteRepository extends JpaRepository<FavoriteEntity, Long> {
    List<FavoriteEntity> findByUserId(Long userId);
    boolean existsByUserIdAndPropertyId(Long userId, Long propertyId);
    
    // ✅ Add this method to enable removal
    void deleteByUserIdAndPropertyId(Long userId, Long propertyId);
    FavoriteEntity findByUserIdAndPropertyId(Long userId, Long propertyId);
    
    
}
