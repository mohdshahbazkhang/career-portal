package com.digitalchameleon.career.dto;

import com.digitalchameleon.career.model.JobRole;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

/**
 * @author shahbaz
 *
 */
@JsonInclude(Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public class JobRoleDTO {

	private Long jobRoleId;

	private String name;

	private String description;

	private int yearsOfExperience;

	private String salaryRange, cityName, companyName;

	public JobRoleDTO(JobRole jobRole) {
		setName(jobRole.getName());
		setDescription(jobRole.getDescription());
		setYearsOfExperience(jobRole.getYearsOfExperience());
		setSalaryRange(jobRole.getSalaryRange());
		setCityName(jobRole.getCity().getName());
		setCompanyName(jobRole.getCompany().getName());
	}

	public JobRoleDTO(String name) {
		setName(name);
	}

	public Long getJobRoleId() {
		return jobRoleId;
	}

	public void setJobRoleId(Long jobRoleId) {
		this.jobRoleId = jobRoleId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getYearsOfExperience() {
		return yearsOfExperience;
	}

	public void setYearsOfExperience(int yearsOfExperience) {
		this.yearsOfExperience = yearsOfExperience;
	}

	public String getSalaryRange() {
		return salaryRange;
	}

	public void setSalaryRange(String salaryRange) {
		this.salaryRange = salaryRange;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
}
