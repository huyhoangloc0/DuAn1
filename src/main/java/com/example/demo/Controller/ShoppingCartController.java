package com.example.demo.Controller;

import com.example.demo.Service.ShoppingCartService;
import com.example.demo.dao.CategoryDAO;
import com.example.demo.dao.ProductDAO;
import com.example.demo.model.Categories;
import com.example.demo.model.Products;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class ShoppingCartController {
    @Autowired
    ShoppingCartService cart;
    
    @Autowired 
	ProductDAO dao;
	
	@Autowired
	CategoryDAO catedao;
    
    @RequestMapping("/cart")
    public String view(Model model) {
    	List<Categories> category = catedao.findAll();
    	model.addAttribute("categories",category);
    	
        model.addAttribute("cart", cart);
        return "cart/cart";
    }

    @RequestMapping("/cart/add/{id}")
    public String add(@PathVariable("id") Integer id) {
        cart.add(id);
        return "redirect:/cart";
    }

    @RequestMapping("/cart/remove/{id}")
    public String remove(@PathVariable("id") Integer id) {
        cart.remove(id);
        return "redirect:/cart";
    }

    @RequestMapping("/cart/update/{id}")
    public String update(@PathVariable("id") Integer id, @RequestParam("qty") Integer qty) {
        cart.update(id, qty);
        return "redirect:/cart";
    }

    @RequestMapping("/cart/clear")
    public String clear() {
        cart.clear();
        return "redirect:/cart";
    }
    
    @PostMapping("/cart/update/{id}")
    public String updateCartItem(@PathVariable("id") Integer id, @RequestParam("qty") Integer qty) {
        cart.update(id, qty);
        return "redirect:/cart";
    }

}
