package com.jads.sentinel.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.jads.sentinel.models.Address;

public interface AddressReposiroty extends JpaRepository<Address, Long> {

	@Query(value = "select * from address where street = :street and number = :number and "
			+ "addition = :addition and postcode = :postcode and city = :city and "
			+ "province = :province ", nativeQuery = true)
	Address getAddress(@Param("street") String street, @Param("number") String number, @Param("addition") String addition,
			@Param("postcode") String postcode, @Param("city") String city, @Param("province") String province);
	
}
