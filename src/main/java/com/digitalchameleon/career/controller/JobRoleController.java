package com.digitalchameleon.career.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.digitalchameleon.career.dto.CityDTO;
import com.digitalchameleon.career.dto.JobRoleDTO;
import com.digitalchameleon.career.model.City;
import com.digitalchameleon.career.model.JobRole;
import com.digitalchameleon.career.service.CityServiceImplementation;
import com.digitalchameleon.career.service.JobRoleServiceImplementation;

@Controller
public class JobRoleController {

	@Autowired
	private JobRoleServiceImplementation jobRoleServiceImplementation;

	@Autowired
	private CityServiceImplementation cityServiceImplementation;

	@RequestMapping(value = "/list-jobroles", method = RequestMethod.GET)
	public String showCities(ModelMap model) {
		List<JobRoleDTO> jobRolesDTOs = new ArrayList<JobRoleDTO>();
		List<JobRole> jobRoles = jobRoleServiceImplementation.getAllJobRoles();
		for(JobRole jobRole : jobRoles) {
			jobRolesDTOs.add(new JobRoleDTO(jobRole));
		}
		model.put("jobroles", jobRolesDTOs);
		return "list-jobroles";
	}
	
	@RequestMapping(value = "/applyjobs", method = RequestMethod.GET)
	public String applyjobs(ModelMap model) {
		List<JobRoleDTO> jobRolesDTOs = new ArrayList<JobRoleDTO>();
		List<JobRole> jobRoles = jobRoleServiceImplementation.getAllJobRoles();

		Set<String> jobRoleSet = new HashSet<String>();
	    for (JobRole jobRole : jobRoles)
		    jobRoleSet.add(jobRole.getName());
		
	    for (String jbRole : jobRoleSet)
	    	jobRolesDTOs.add(new JobRoleDTO(jbRole));
		
	    model.put("jobroles", jobRolesDTOs);
		
		List<CityDTO> cityDTOs = new ArrayList<CityDTO>();
		List<City> citites = cityServiceImplementation.getAllCities();
		for(City city : citites) {
			cityDTOs.add(new CityDTO(city));
		}
		model.put("cities", cityDTOs);
		return "applyjobs";
	}
}
