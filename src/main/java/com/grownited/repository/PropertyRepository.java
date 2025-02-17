package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.PropertyEntity;

public interface PropertyRepository extends JpaRepository<PropertyEntity, Long> {

}
