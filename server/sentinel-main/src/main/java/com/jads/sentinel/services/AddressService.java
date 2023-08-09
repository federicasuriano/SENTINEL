package com.jads.sentinel.services;

import java.util.Set;

import com.jads.sentinel.dto.AddressRequest;
import com.jads.sentinel.models.Address;
import com.jads.sentinel.models.Report;

public interface AddressService {

	 Set<Report> getReportsByAddress(Address address);
	 
	 Address getAddress(AddressRequest addressRequest);
	 
	 Address getAddress(Address address);
}
