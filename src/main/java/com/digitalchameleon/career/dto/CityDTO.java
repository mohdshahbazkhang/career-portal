package com.digitalchameleon.career.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.digitalchameleon.career.model.City;

@Entity
@Table(name = "city")
public class CityDTO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	private String name;

	private String state;
	
	private long costOfLiving;
	
	public CityDTO() {
		super();
	}

	public CityDTO(City city) {
		super();
		this.name = city.getName();
		this.state = city.getState();
		this.costOfLiving = city.getCostOfLiving();
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

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public long getCostOfLiving() {
		return costOfLiving;
	}

	public void setCostOfLiving(long costOfLiving) {
		this.costOfLiving = costOfLiving;
	}
	
}