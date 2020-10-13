package com.mars.exercise.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.mars.exercise.services.PersonService;

@RestController
@RequestMapping(path="/rest")
public class PersonRestController {
	
	@Autowired 
	private PersonService personServ;

	@GetMapping(path="/countNoOfPerson") 
	public @ResponseBody String countNoOfPerson() {
		return personServ.countNoOfPerson();
	}
	
}