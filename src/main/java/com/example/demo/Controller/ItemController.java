package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.Service.SessionService;
import com.example.demo.dao.CategoryDAO;
import com.example.demo.dao.ProductDAO;
import com.example.demo.model.Categories;
import com.example.demo.model.Products;



@Controller
public class ItemController {
	@Autowired 
	ProductDAO dao;
	
	@Autowired
	CategoryDAO catedao;
	
    @Autowired
    SessionService session;
    
@RequestMapping("index")
	public String index(Model model) {
	List<Products> products = dao.findAll();
	model.addAttribute("items",products);
	List<Categories> category = catedao.findAll();
	model.addAttribute("categories",category);
	return "index/index";
	}

@RequestMapping("productall")
	public String listproductall(Model model) {
	List<Products> products = dao.findAll();
	model.addAttribute("items",products);
	List<Categories> category = catedao.findAll();
	model.addAttribute("categories",category);
	return "index/AllProduct";
}

@RequestMapping("/products/{categoryId}")
public String listProductsByCategory(@PathVariable("categoryId") String categoryId, Model model) {
	List<Categories> category = catedao.findAll();
	model.addAttribute("categories", category);
    List<Products> products = dao.findByCategories_Id(categoryId);
    model.addAttribute("items", products);
    return "index/AllProduct";
}





}