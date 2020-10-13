package com.mars.exercise.repository;

import org.springframework.data.repository.CrudRepository;
import com.mars.exercise.model.Person;

public interface PersonRepository extends CrudRepository<Person, Long> {

}
