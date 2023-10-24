package com.jads.sentinel.services;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jads.sentinel.models.Question;
import com.jads.sentinel.repos.QuestionRepository;

@Service
public class QuestionServiceImpl implements QuestionService {

	@Autowired
	private QuestionRepository questionRepository;

	@Override
	public List<Question> getQuestions() {
		return this.questionRepository.getQuestions();
	}

}