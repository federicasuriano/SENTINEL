package com.jads.sentinel.controllers;

import java.util.List;

import javax.annotation.security.RolesAllowed;

import org.keycloak.adapters.springsecurity.account.SimpleKeycloakAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jads.sentinel.dto.AddressRequest;
import com.jads.sentinel.dto.LocationRequest;
import com.jads.sentinel.dto.ReportRequest;
import com.jads.sentinel.models.Address;
import com.jads.sentinel.models.Report;
import com.jads.sentinel.services.AddressService;
import com.jads.sentinel.services.ReportService;

@CrossOrigin("*")
@RestController
@RequestMapping("/sentinel/api")
public class APIRestController {

	@Autowired
	private AddressService addressService;

	@Autowired
	private ReportService reportService;

	@PostMapping("/checkAddress")
	@RolesAllowed({ "sentinel-user", "sentinel-admin" })
	public ResponseEntity<LocationRequest> getReportsFromAddress(@RequestBody AddressRequest addressRequest) {

		Address address = this.addressService.getAddress(addressRequest);

		List<Report> listReports = null;

		if (address != null) {

			listReports = List.copyOf(addressService.getReportsByAddress(address));
		}

		LocationRequest locationRequest = new LocationRequest();

		locationRequest.setAddress(address);
		locationRequest.setReports(listReports);

		return new ResponseEntity<LocationRequest>(locationRequest, HttpStatus.OK);

	}

	@PostMapping("/saveReports")
	@RolesAllowed({ "sentinel-user", "sentinel-admin" })
	public ResponseEntity<Long> saveReports(@RequestBody List<ReportRequest> requests, Authentication auth) {

		String id = ((SimpleKeycloakAccount) auth.getDetails()).getKeycloakSecurityContext().getToken().getSubject();

		Long totalReports = reportService.saveReports(requests, id);

		return new ResponseEntity<Long>(totalReports, HttpStatus.OK);

	}

}
