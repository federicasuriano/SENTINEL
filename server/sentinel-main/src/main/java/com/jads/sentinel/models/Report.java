package com.jads.sentinel.models;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Report {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private Timestamp reportTime;
	private String employerName;
	private String employmentAgencyName;
	private String branchType;
	private Integer maxHouseholds;
	private Integer numPeople;
	private String userId;
	private String remark;
	
	@ManyToOne
	@JoinColumn(name = "address_id", nullable = false)
	@JsonIgnore
	private Address address;

	@ManyToMany
	@JoinTable(name = "report_has_situation", joinColumns = @JoinColumn(name = "report_id"), inverseJoinColumns = @JoinColumn(name = "situation_id"))
	private List<Situation> situations;

}
