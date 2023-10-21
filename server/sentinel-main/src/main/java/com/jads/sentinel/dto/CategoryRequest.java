package com.jads.sentinel.dto;

import java.util.Set;

import com.jads.sentinel.models.Question;

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
public class CategoryRequest {

	private Set<Question> questions;

}
