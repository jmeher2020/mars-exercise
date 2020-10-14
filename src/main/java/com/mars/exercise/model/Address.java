package com.mars.exercise.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Address {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) //add this 
	@Column(name = "address_id", unique = true, nullable = false)
	private Long address_id;
	/*
	@ManyToOne(optional = false)
	@JoinColumn(name="id")
    private Person person;
	
	*/

	private Long id;

	
	private String street;
	private String city;
	private String state;
	private String postalCode;


	public Long getAddress_id() {
		return address_id;
	}
	
	public void setAddress_id(Long address_id) {
		this.address_id = address_id;
	}

	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;		
	}


}
