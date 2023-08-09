package com.jads.sentinel.dto;

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
public class AddressRequest {

	private String street;
	private String number;
	private String addition;
	private String postcode;
	private String city;
	private String province;
	private Double latitude;
	private Double longitude;

}
