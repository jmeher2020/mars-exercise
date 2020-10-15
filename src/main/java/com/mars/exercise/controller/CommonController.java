package com.mars.exercise.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path="/mars")
public class CommonController {


	@GetMapping(path = {"/index"})
	public String  openIndexScreen(){
		System.out.println("INSIDE: Request Index Page");	
		return "/index.jsp";
	}
}
