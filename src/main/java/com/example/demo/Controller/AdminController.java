package com.example.demo.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Service.SessionService;
import com.example.demo.dao.AccountDAO;
import com.example.demo.dao.CategoryDAO;
import com.example.demo.dao.ProductDAO;
import com.example.demo.model.Accounts;
import com.example.demo.model.Categories;
import com.example.demo.model.Products;

@Controller
public class AdminController {
	@Autowired
	CategoryDAO catedao;
	@Autowired
	ProductDAO proddao;
	@Autowired
	AccountDAO accdao;
	@Autowired
	SessionService session;
	
	
	@RequestMapping("admin/index")
	public String adminindex(Model model, @RequestParam("page") Optional<Integer> page,@RequestParam("page2") Optional<Integer> page2,@RequestParam("page3") Optional<Integer> page3) {
	    long categorycount = catedao.countCategories();
	    model.addAttribute("categoryCount", categorycount);
	    long productcount = proddao.countProducts();
	    model.addAttribute("productCount", productcount);
	    long accounttcount = accdao.countAccounts();
	    model.addAttribute("accountCount", accounttcount);
	    
	    // Xử lý trường hợp page=0 bằng cách đặt giá trị mặc định là 0
	    int pageNumber = page.orElse(0);
	    if (pageNumber < 0) {
	        pageNumber = 0;
	    }
	    
	    Pageable pageable = PageRequest.of(pageNumber, 2);
	    Page<Categories> pages = catedao.findAll(pageable);
	    model.addAttribute("page", pages);
	    
	    int pageNumber2 = page2.orElse(0);
	    if (pageNumber2 < 0) {
	        pageNumber2 = 0;
	    }
	    
	    Pageable pageable2 = PageRequest.of(pageNumber2, 2);
	    Page<Accounts> pages2 = accdao.findAll(pageable2);
	    model.addAttribute("page2", pages2);
	    
	    int pageNumber3 = page3.orElse(0);
	    if (pageNumber3 < 0) {
	        pageNumber3 = 0;
	    }
	    
	    Pageable pageable3 = PageRequest.of(pageNumber3, 5);
	    Page<Products> pages3 = proddao.findAll(pageable3);
	    model.addAttribute("page3", pages3);
	    
	    return "admin/index";
	}	
	
	
//	@RequestMapping("admin/account")
//	public String IndexAccount(Model model, @RequestParam("name") Optional<String> name, 
//    		@RequestParam("p") Optional<Integer> p) {
//		
//		String na = name.orElse(session.get("name"));
//        session.set("name", na);
//        Pageable pageable = PageRequest.of(p.orElse(0),3);
//        Page<Accounts> page = accdao.findAllByUsernameLike("%"+na+"%", pageable);
//        model.addAttribute("page", page);
//
//		return "admin/account";
//	}
	
	
}
