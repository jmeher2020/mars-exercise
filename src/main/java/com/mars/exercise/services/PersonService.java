package com.mars.exercise.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mars.exercise.model.Person;
import com.mars.exercise.repository.PersonRepository;

@Service  
public class PersonService {

	@Autowired 
	PersonRepository personRepo;

	@PersistenceContext
	EntityManager entityManager;



	public void addEditPersonDetails(Person objPerson) throws HibernateException{
		personRepo.save(objPerson);
	}


	@SuppressWarnings("unchecked")
	public List<Person> fetchPersonList() {	
		Query query = entityManager.createNativeQuery("SELECT * from person", Person.class);
		return query.getResultList();		
	}



	public Person fetchPersonWithId(String id) {
		Long person_id = Long.valueOf(id);
		Query query = entityManager.createNativeQuery("SELECT * from person where id=?", Person.class);
		query.setParameter(1, person_id);
		return (Person)query.getSingleResult();	
	}



	public void deletePersonDetails(String id) {
		personRepo.deleteById(Long.valueOf(id));
		
	}
	
	public String countNoOfPerson() {
		return String.valueOf(personRepo.count());		
	}


}
