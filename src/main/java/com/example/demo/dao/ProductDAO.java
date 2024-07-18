package com.example.demo.dao;


import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.Products;
import com.example.demo.model.Reports;

public interface ProductDAO extends JpaRepository<Products, Integer> {
	
	
	
	
	List<Products> findByCategories_Id(String categoryId);
	
	List<Products> findByPriceBetween(double min, double max);
	
	Page<Products> findAllByNameLike(String keywords, Pageable page);

	@Query("select new Reports(o.categories.name, sum(o.price), count(o)) "
		    + "from Products o "
		    + "group by o.categories.name "
		    + "order by sum(o.price) desc")
		List<Reports> getInventoryByCategory();
	
	
	@Query("SELECT COUNT(c.id) FROM Products c")
    long countProducts();

}
