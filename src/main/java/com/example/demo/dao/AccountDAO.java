package com.example.demo.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Accounts;
import com.example.demo.model.Products;

public interface AccountDAO extends JpaRepository<Accounts, String>{
	@Query("SELECT COUNT(c.id) FROM Accounts c")
    long countAccounts();
	
	List<Accounts> findAllByUsernameLike(String keywords);
	
	Accounts findByUsername(String username);
	
	 @Transactional
	 void deleteByUsername(String username);
}
