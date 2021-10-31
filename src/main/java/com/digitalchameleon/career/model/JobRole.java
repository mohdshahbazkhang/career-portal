package com.digitalchameleon.career.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "jobrole")
public class JobRole {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	private String name;

	private String description;

	private int yearsOfExperience;

	private String salaryRange;

	@ManyToOne
	@JoinColumn(name = "companyId", nullable = true, referencedColumnName = "id")
	private Company company;

	@ManyToOne
	@JoinColumn(name = "cityId", nullable = true, referencedColumnName = "id")
	private City city;

	public JobRole() {
		super();
	}

	public JobRole(String name, String description, int yearsOfExperience, String salaryRange, Company company, boolean isDone) {
		super();
		this.name = name;
		this.description = description;
		this.yearsOfExperience = yearsOfExperience;
		this.salaryRange = salaryRange;
		this.company = company;
		this.city = city;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
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

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}
	
}