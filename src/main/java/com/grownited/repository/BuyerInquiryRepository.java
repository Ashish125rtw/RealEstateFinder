package com.grownited.repository;

import com.grownited.entity.BuyerInquiryEntity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface BuyerInquiryRepository extends JpaRepository<BuyerInquiryEntity, Long> {
	
}
