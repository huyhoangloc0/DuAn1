package com.example.demo.dao;




import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Categories;


public interface CategoryDAO extends JpaRepository<Categories, String>{
	@Query("SELECT COUNT(c.id) FROM Categories c")
    long countCategories();
}
