package com.mars.exercise.controller;

import java.util.List;
import java.util.Optional;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mars.exercise.model.Person;
import com.mars.exercise.services.PersonService;

@Controller
@RequestMapping(path="/mars")
public class PersonUIController {

	@Autowired 
	private PersonService personServ;

	@GetMapping(path = {"/index"})
	public String  openIndexScreen(){
		System.out.println("INSIDE: Request Index Page");	
		return "/index";
	}

	@GetMapping(path = {"/addPersonForm", "/editPersonForm/{id}"})
	public String  openAddEditForm(Model model, @PathVariable("id") Optional<String> id){
		System.out.println("INSIDE: Request for Add Edit Form");

		Person personObj = null;
		if (id.isPresent()) {
			personObj = personServ.fetchPersonWithId(id.get());
		}
		model.addAttribute("PERSON_OBJ", personObj);
		return "/add_edit_person";
	}


	@PostMapping(path="/addperson") 
	public @ResponseBody String addPerson (@ModelAttribute("SpringWeb")Person objPerson) {
		System.out.println("START: Controller Add Person");		
		try {
			personServ.addEditPersonDetails(objPerson);
		} catch (HibernateException e) {
			return "Oops!, Faild to Add Person Details!<br> <a href='index' >Go To Home</a>";
		}
		return "Congratulation, Person Added Successfull!<br> <a href='index' >Go To Home</a>";
	}


	@GetMapping(path="/fetchPersonsList")
	public ModelAndView getPersonsList(Model model) {
		System.out.println("INSIDE : getPersonsList");	
		
		List<Person> personList = personServ.fetchPersonList();
		
		model.addAttribute("PERSON_OBJ_LIST", personList);		
		return new ModelAndView("/person_list");

	}

	@PostMapping(path="/editPersonForm/editperson") 
	public @ResponseBody String editPerson(@ModelAttribute("SpringWeb")Person objPerson) {
		System.out.println("START: Controller Eidt Person");		
		try {
			personServ.addEditPersonDetails(objPerson);
		} catch (HibernateException e) {
			return "Oops!, Faild to Edit Person Details!<br> <a href='index' >Go To Home</a>";
		}
		return "Congratulation, Person Edit Successfull!<br> <a href='mars/index' >Go To Home</a>";
	}

	@GetMapping(path="/deletePersonDetails/{id}") 
	public @ResponseBody String deletePersonDetails(@PathVariable("id") String id) {
		System.out.println("START: Controller deletePersonDetails");		
		personServ.deletePersonDetails(id);
		return "Congratulation, Person Deleted Successfull!<br> <a href='mars/index' >Go To Home</a>";
	}

}
