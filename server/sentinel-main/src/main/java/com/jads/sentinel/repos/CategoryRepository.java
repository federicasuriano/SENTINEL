package com.jads.sentinel.repos;

import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.jads.sentinel.models.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {

	@Query(value = "select category_id from Category", nativeQuery = true) Set<String> getCategories();
	
}
