package com.digitalchameleon.career.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.digitalchameleon.career.model.City;

public interface CityRepository extends JpaRepository<City, Long>{
	
}
