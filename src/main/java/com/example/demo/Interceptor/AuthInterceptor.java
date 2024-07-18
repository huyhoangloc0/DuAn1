package com.example.demo.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.example.demo.Service.SessionService;
import com.example.demo.model.Accounts;

@Service
public class AuthInterceptor implements HandlerInterceptor{
	@Autowired
	SessionService session;
	
	@Override
	public boolean preHandle (HttpServletRequest req, HttpServletResponse resp, Object handler) throws Exception{
		String uri = req.getRequestURI();
		Accounts user = session.get("user");
		
		
		String error = "";
		if(user == null) { // chưa đăng nhập
			error = "Please login!";
		} 
		// không đúng vai trò
		else if(!user.isAdmin() && uri.startsWith("/admin/")) {
			error = "Access denied!";
		}
		if(error.length() > 0) { // có lỗi
			session.set("security-uri", uri);
			resp.sendRedirect("/account/login?error=" + error);
			return false;
		}
			return true;
	}
}
