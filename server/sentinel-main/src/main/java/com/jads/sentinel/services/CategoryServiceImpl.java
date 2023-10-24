package com.jads.sentinel.services;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jads.sentinel.models.Category;
import com.jads.sentinel.repos.CategoryRepository;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public List<Category> getCategories() {
		return this.categoryRepository.getCategories();
	}
	
	@Override
	public Category getCategoryFirst() {
		return this.categoryRepository.getCategoryFirst();
	}

}