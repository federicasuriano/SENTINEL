package com.jads.sentinel.services;

import java.util.List;
import java.util.Set;

import com.jads.sentinel.models.Category;

public interface CategoryService {

	 List<Category> getCategories();

	 Category getCategoryFirst();

}
