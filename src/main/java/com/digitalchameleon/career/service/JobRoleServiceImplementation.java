package com.digitalchameleon.career.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.digitalchameleon.career.model.JobRole;
import com.digitalchameleon.career.repository.JobRoleRepository;

@Service
public class JobRoleServiceImplementation implements JobRoleService {

	@Autowired
	private JobRoleRepository jobRoleRepository;

	@Override
	public List<JobRole> getAllJobRoles() {
		return jobRoleRepository.findAll();
	}
}