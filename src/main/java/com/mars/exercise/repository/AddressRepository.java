package com.mars.exercise.repository;

import org.springframework.data.repository.CrudRepository;
import com.mars.exercise.model.Address;

public interface AddressRepository extends CrudRepository<Address, Long> {

}
