package com.jads.sentinel.services;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jads.sentinel.dto.AddressRequest;
import com.jads.sentinel.models.Address;
import com.jads.sentinel.models.Report;
import com.jads.sentinel.repos.AddressReposiroty;

@Service
public class AddressServiceImpl implements AddressService {

	@Autowired
	private AddressReposiroty addressRepository;

	@Override
	public Address getAddress(AddressRequest addressRequest) {
		return this.addressRepository.getAddress(addressRequest.getStreet(), addressRequest.getNumber(),
				addressRequest.getAddition(), addressRequest.getPostcode(), addressRequest.getCity(),
				addressRequest.getProvince());
	}

	@Override
	public Address getAddress(Address address) {
		return this.addressRepository.getAddress(address.getStreet(), address.getNumber(), address.getAddition(),
				address.getPostcode(), address.getCity(), address.getProvince());
	}

	@Override
	public Set<Report> getReportsByAddress(Address address) {
		return this.addressRepository.getById(address.getId()).getReports();
	}

}