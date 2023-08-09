package com.jads.sentinel.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

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
public class Situation {
	
	@Id
	private String id;
	private String category;
	private String question;
		
	@ManyToMany(mappedBy = "situations")
	@JsonIgnore 
	private List<Report> signals;

}
