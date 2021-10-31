package com.digitalchameleon.career.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "city")
public class City {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	private String name;

	private String state;
	
	private long costOfLiving;
	
	public City() {
		super();
	}

	public City(String name, String state, long costOfLiving, boolean isDone) {
		super();
		this.name = name;
		this.state = state;
		this.costOfLiving = costOfLiving;
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