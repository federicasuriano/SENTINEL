package com.jads.sentinel.dto;

import java.util.Set;

import com.jads.sentinel.models.Address;
import com.jads.sentinel.models.Situation;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ReportRequest {

	private String employerName;
	private String employmentAgencyName;
	private String branchType;
	private Integer maxHouseholds;
	private Integer numPeople;
	private String remark;
	
	private int numRepeatedReports;
	
	private Address address;

	private Set<Situation> situations;
	
}