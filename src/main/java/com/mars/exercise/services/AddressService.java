package com.mars.exercise.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mars.exercise.model.Address;
import com.mars.exercise.repository.AddressRepository;

@Service  
public class AddressService {

	@Autowired 
	AddressRepository addressRepo;

	@PersistenceContext
	EntityManager entityManager;



	public void addEditAddressDetails(Address objAdd) throws HibernateException{
		if(objAdd != null) {
			addressRepo.save(objAdd);
		}
		
	}


	@SuppressWarnings("unchecked")
	public List<Address> fetchAddressWithPersonId(String id) {
		Long person_id = Long.valueOf(id);
		Query query = entityManager.createNativeQuery("SELECT * from Address where id=?", Address.class);
		query.setParameter(1, person_id);
		return (List<Address>) query.getResultList();	
	}


	public Address fetchAddressWithId(String address_id) {

		Query query = entityManager.createNativeQuery("SELECT * from Address where address_id=?", Address.class);
		query.setParameter(1, Long.valueOf(address_id));
		return (Address)query.getSingleResult();	
	}



	public void deleteAddressDetails(String address_id) {
		addressRepo.deleteById(Long.valueOf(address_id));
		
	}
	
	public String countNoOfAddress() {
		return String.valueOf(addressRepo.count());		
	}


}
