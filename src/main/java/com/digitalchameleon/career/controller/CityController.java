package com.digitalchameleon.career.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.digitalchameleon.career.service.CityService;

@Controller
public class CityController {

	@Autowired
	private CityService cityServiceImplementation;

	@RequestMapping(value = "/list-cities", method = RequestMethod.GET)
	public String showCities(ModelMap model) {
		model.put("cities", cityServiceImplementation.getAllCities());
		return "list-cities";
	}

}
