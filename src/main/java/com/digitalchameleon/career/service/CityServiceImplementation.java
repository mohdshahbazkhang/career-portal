package com.digitalchameleon.career.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.digitalchameleon.career.model.City;
import com.digitalchameleon.career.repository.CityRepository;

@Service
public class CityServiceImplementation implements CityService {

	@Autowired
	private CityRepository cityRepository;

	@Override
	public List<City> getAllCities() {
		return cityRepository.findAll();
	}

	@Override
	public Optional<City> getCityById(long id) {
		return cityRepository.findById(id);
	}

	@Override
	public void updateCity(City city) {
		cityRepository.save(city);
	}

	@Override
	public void addCity(String name, String state, long costOfLiving, boolean isDone) {
		cityRepository.save(new City(name, state, costOfLiving, isDone));
	}

	@Override
	public void deleteCity(long id) {
		Optional<City> city = cityRepository.findById(id);
		if (city.isPresent()) {
			cityRepository.delete(city.get());
		}
	}

	@Override
	public void saveCity(City city) {
		cityRepository.save(city);
	}
}