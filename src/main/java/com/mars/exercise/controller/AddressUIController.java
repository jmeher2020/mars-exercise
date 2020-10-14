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

import com.mars.exercise.model.Address;
import com.mars.exercise.services.AddressService;

@Controller
@RequestMapping(path="/mars")
public class AddressUIController {

	@Autowired 
	private AddressService addressServ;


	@GetMapping(path = {"/addAddressForm/{id}", "/fetchAddresssList/editAddressForm/{address_id}"})
	public String  openAddEditForm(Model model,@PathVariable("id") Optional<String> id,
			@PathVariable("address_id") Optional<String> address_id){
		System.out.println("INSIDE: Request for Add Edit Form");

		Address addressObj = null;

		if(address_id.isPresent()) {
			addressObj = addressServ.fetchAddressWithId(address_id.get());
		}else if(id.isPresent()) {
			model.addAttribute("PERSON_ID", id.get());;
		}


		model.addAttribute("ADDRESS_OBJ", addressObj);
		return "/add_edit_address";
	}


	@PostMapping(path="/addAddressForm/addAddress") 
	public @ResponseBody String addAddress (@ModelAttribute("SpringWeb")Address objAddress) {
		System.out.println("START: Controller Add Address");		
		try {
			addressServ.addEditAddressDetails(objAddress);
		} catch (HibernateException e) {
			return "Oops!, Faild to Add Address Details!<br> <a href='http://localhost:8081/mars/index' >Go To Home</a>";
		}
		return "Congratulation, Address Added Successfull!<br> <a href='http://localhost:8081/mars/index' >Go To Home</a>";
	}


	@GetMapping(path="/fetchAddresssList/{id}")
	public ModelAndView fetchAddresssList(Model model, @PathVariable("id") String id) {
		System.out.println("INSIDE : fetchAddresssList");	

		List<Address> addressList = addressServ.fetchAddressWithPersonId(id);

		model.addAttribute("ADDRESS_OBJ_LIST", addressList);		
		return new ModelAndView("/address_list");

	}

	
	@PostMapping(path="/editAddress") 
	public @ResponseBody String editAddress(@ModelAttribute("SpringWeb")Address objAddress) {
		System.out.println("START: Controller Eidt Address");		
		try {
			addressServ.addEditAddressDetails(objAddress);
		} catch (HibernateException e) {
			return "Oops!, Faild to Edit Address Details!<br> <a href='http://localhost:8081/mars/index' >Go To Home</a>";
		}
		return "Congratulation, Address Edit Successfully!<br> <a href='http://localhost:8081/mars/index' >Go To Home</a>";
	}
	
	
	@GetMapping(path="/fetchAddresssList/deleteAddressDetails/{id}") 
	public @ResponseBody String deleteAddressDetails(@PathVariable("id") String id) {
		System.out.println("START: Controller deleteAddressDetails");		
		addressServ.deleteAddressDetails(id);
		return "Congratulation, Address Deleted Successfull!<br> <a href='http://localhost:8081/mars/index' >Go To Home</a>";
	}


}
