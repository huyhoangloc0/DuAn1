package com.example.demo.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.AccountDAO;
import com.example.demo.dao.CategoryDAO;
import com.example.demo.model.Accounts;
import com.example.demo.model.Categories;
import com.example.demo.Service.ParamService;
import com.example.demo.Service.SessionService;



@Controller
public class AccountController {
	@Autowired
	AccountDAO dao;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService session;
	
	@RequestMapping("/account/index")
	public String index(Model model,@RequestParam("username") Optional<String> name, @RequestParam("p") Optional<Integer> p) {
		Accounts account = new Accounts();
		model.addAttribute("account", account);
		String na = name.orElse(session.get("name"));
		session.set("name", na);
		List<Accounts> Accounts = dao.findAllByUsernameLike("%"+na+"%");
		model.addAttribute("categories", Accounts);
		return "/account/index";
	}
	@RequestMapping("/account/edit/{username}")
	public String edit(@PathVariable("username") String username, Model model) {
		Accounts account = dao.findByUsername(username);
		model.addAttribute("account", account);
		List<Accounts> Accounts = dao.findAll();
		model.addAttribute("categories", Accounts);
		return "/account/index";
	}
	@PostMapping("/account/create")
	public String create(Accounts account) {
		dao.save(account);
		return "redirect:/account/index";
	}
	@PostMapping("/account/update")
	public String update(Accounts account) {
		dao.save(account);
		return "redirect:/account/edit/"+account.getUsername();
	}
	@GetMapping("/account/delete/{username}")
	public String delete(@PathVariable("username") String username) {
		dao.deleteByUsername(username);
		return "redirect:/account/index";
	}
}
