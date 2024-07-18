package com.example.demo.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.CategoryDAO;

@Service
public class GlobalInterceptor implements HandlerInterceptor{
	@Autowired
	CategoryDAO dao;
	
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler) throws Exception{
		req.setAttribute("uri", req.getRequestURI());
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse resp, Object handler, ModelAndView mv) throws Exception{
		req.setAttribute("categories", dao.findAll());
	}
}
