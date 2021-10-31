package com.digitalchameleon.career.service;

import java.util.List;
import java.util.Optional;

import com.digitalchameleon.career.model.City;

public interface CityService {

	public List<City> getAllCities();
	
	Optional<City> getCityById(long id);

	void updateCity(City city);

	void addCity(String name, String state, long costOfLiving, boolean isDone);

	void deleteCity(long id);
	
	void saveCity(City city);

}