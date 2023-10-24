package com.jads.sentinel.repos;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.jads.sentinel.models.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {

	@Query(value = "select * from category", nativeQuery = true) 
	List<Category> getCategories();
	
	@Query(value = "select first(id) from category", nativeQuery = true) 
	Category getCategoryFirst();
	
}
