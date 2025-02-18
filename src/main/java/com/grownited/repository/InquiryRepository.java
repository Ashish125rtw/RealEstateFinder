package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.grownited.entity.InquiryEntity;

public interface InquiryRepository extends JpaRepository<InquiryEntity, Integer> { 
}
