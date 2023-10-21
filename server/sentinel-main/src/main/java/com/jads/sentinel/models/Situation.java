package com.jads.sentinel.models;

import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

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
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	//private String category;
	@OneToMany(mappedBy = "situation")
	@JsonIgnore
	private Set<Category> categories;
	
	//private String question;
	
	@ManyToMany(mappedBy = "situations")
	@JsonIgnore 
	private List<Report> signals;

}
