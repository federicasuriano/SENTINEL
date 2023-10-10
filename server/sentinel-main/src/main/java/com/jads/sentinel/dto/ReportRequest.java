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
	
	/*
	private String q_ho_1;
	private String q_ho_2;
	private String q_ho_3;
	private String q_ho_4;
	private String q_ho_5;
	private String q_ho_6;
	private String q_ho_7;
	private String q_ho_8;
	private String q_ho_9;
	private String q_ho_10;
	private String q_ho_11;
	private String q_ho_12;
	private String q_ho_13;
	private String q_ho_14;

	private String q_he_1;
	private String q_he_2;
	private String q_he_3;
	private String q_he_4;
	private String q_he_5;
	private String q_he_6;
	private String q_he_7;
	private String q_he_8;

	private String q_pa_1;
	private String q_pa_2;
	private String q_pa_3;
	private String q_pa_4;
	private String q_pa_5;
	private String q_pa_6;
	private String q_pa_7;
	private String q_pa_8;
	private String q_pa_9;
	private String q_pa_10;
	private String q_pa_11;
	private String q_pa_12;
	private String q_pa_13;
	private String q_pa_14;
	private String q_pa_15;

	private String q_em_1;
	private String q_em_2;
	private String q_em_3;
	private String q_em_4;
	private String q_em_5;
	private String q_em_6;
	private String q_em_7;
	private String q_em_8;
	private String q_em_9;
	private String q_em_10;
	private String q_em_11;
	private String q_em_12;
	private String q_em_13;
	private String q_em_14;
	private String q_em_15;
	private String q_em_16;
	private String q_em_17;
	private String q_em_18;
	private String q_em_19;
	private String q_em_20;
	private String q_em_21;
	private String q_em_22;
	private String q_em_23;
	private String q_em_24;
	private String q_em_25;

	private String q_la_1;
	private String q_la_2;
	private String q_la_3;
	private String q_la_4;
	private String q_la_5;
	private String q_la_6;
	private String q_la_7;
	private String q_la_8;
	private String q_la_9;
	private String q_la_10;
	private String q_la_11;
	private String q_la_12;
	private String q_la_13;
	private String q_la_14;
	private String q_la_15;
	private String q_la_16;
	private String q_la_17;
	private String q_la_18;
	
	*/

}