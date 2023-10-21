package com.jads.sentinel.models;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
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
public class Category {
	
	@Id
	private String id;
	
	@ManyToMany
	@JoinTable(name = "category_has_question", joinColumns = @JoinColumn(name = "category_id"), inverseJoinColumns = @JoinColumn(name = "question_id"))
	private Set<Question> questions;
		
	@ManyToOne
	@JoinColumn(name = "situation_id", nullable = false)
	@JsonIgnore
	private Situation situation;
}

