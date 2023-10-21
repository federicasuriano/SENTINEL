package com.jads.sentinel.dto;

import java.util.List;
import java.util.Set;

import com.jads.sentinel.models.Report;
import com.jads.sentinel.models.Category;

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
public class SituationRequest {

	private List<Report> signals;
	private Set<Category> categories;

}
