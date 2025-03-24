package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.grownited.entity.ContactEntity;

public interface ContactRepository extends JpaRepository<ContactEntity, Long> {
}