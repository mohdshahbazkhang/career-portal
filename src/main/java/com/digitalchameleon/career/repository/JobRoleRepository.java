package com.digitalchameleon.career.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.digitalchameleon.career.model.JobRole;

public interface JobRoleRepository extends JpaRepository<JobRole, Long> {

	
}
