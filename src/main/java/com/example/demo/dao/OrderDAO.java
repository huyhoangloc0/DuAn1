package com.example.demo.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Orders;



public interface OrderDAO extends JpaRepository<Orders, Integer>{

}
