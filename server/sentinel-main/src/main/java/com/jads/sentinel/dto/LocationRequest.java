package com.jads.sentinel.dto;

import java.util.List;

import com.jads.sentinel.models.Address;
import com.jads.sentinel.models.Report;

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
public class LocationRequest {

	private Address address;
	private List<Report> reports;

}
