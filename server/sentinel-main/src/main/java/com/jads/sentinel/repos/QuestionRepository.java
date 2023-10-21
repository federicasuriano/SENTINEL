package com.jads.sentinel.repos;

import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.jads.sentinel.models.Question;

public interface QuestionRepository extends JpaRepository<Question, Long> {

	@Query(value = "select id from Question", nativeQuery = true) Set<String> getQuestionsId();
	
}
