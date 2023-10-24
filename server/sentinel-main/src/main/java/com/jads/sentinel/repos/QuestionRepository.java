package com.jads.sentinel.repos;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.jads.sentinel.models.Question;

public interface QuestionRepository extends JpaRepository<Question, Long> {

	@Query(value = "select * from question", nativeQuery = true) List<Question> getQuestions();
	
}
