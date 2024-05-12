package com.tech.covidVaccination.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tech.covidVaccination.bo.BookBo;
import com.tech.covidVaccination.bo.CenterBo;
import com.tech.covidVaccination.bo.Userbo;
import com.tech.covidVaccination.service.ServiceCo;

@Controller
public class controller {
	
	@Autowired
	ServiceCo serviceCo;
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String loginUser(HttpServletRequest request,Model model) {
		Userbo userbo =new Userbo();
		model.addAttribute("userbo",userbo);
		String userType = request.getParameter("user");
		request.setAttribute("userType", userType);
			 request.setAttribute("successMessage", request.getParameter("successMessage"));
		
		
			 request.setAttribute("errorMessage", request.getParameter("errorMessage"));
		
		return "index";
	}
	@RequestMapping(value="/loginUser",method=RequestMethod.POST)
	public String loginUser(@ModelAttribute("userbo")Userbo userbo, HttpServletRequest request, HttpServletResponse response, Model model) {
	    String email=request.getParameter("email");
	    String password=request.getParameter("password");
	    HttpSession session = request.getSession();
	    Userbo userbo1=new Userbo();
	    if(null!=email && null!=password) {
	    	userbo1.setEmailId(email);
	    	userbo1.setPassword(password);
	    	userbo=serviceCo.loginUser(userbo1);
	    	
	    	if(null!=userbo) {
	    		session.setAttribute("loggedInUser", userbo.getEmailId());
	    		model.addAttribute("message", "Successfull");
	    		return "home";
	    	}
	    	else{
	    		model.addAttribute("message", "Failure");
	    		return "index";
	    	}
	    }
	   return "index";
		
	}
	
	
		
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String createStaff(@ModelAttribute("userbo")Userbo userbo,HttpServletRequest request,HttpServletResponse response,Model model) {
		long status = 0;
	    if(userbo.getId()==0) {
	    	status = serviceCo.createUser(userbo);
	    }
	    else {
	    	status = serviceCo.updateUser(userbo);
	    }
		if(status>0) {
			model.addAttribute("message", "Successfull");
		}
		else {
			model.addAttribute("message", "Failed");
		}
		return "home";
	}
	 
	
	@RequestMapping(value = "/searchcenter", method = RequestMethod.GET)
	public String searchcenter(HttpServletRequest request, Model model)throws ServletException, IOException{
		
		List<CenterBo> list = serviceCo.viewCenter();
		model.addAttribute("list1", list);
		
		return "searchCenter";
		
	}
	@RequestMapping(value="/booknow",method=RequestMethod.GET)
	public String book(HttpServletRequest request, Model model)throws ServletException, IOException{
		List<BookBo> list=serviceCo.bookdetails();
		model.addAttribute("list",list);
		return "book";
	}
	
	@RequestMapping(value="/book",method=RequestMethod.POST)
	public String booking(@ModelAttribute("bookbo")BookBo bookbo,HttpServletRequest request,Model model) {
		long status = 0;
	    	status = serviceCo.bookSlot(bookbo);
		if(status>0) {
			model.addAttribute("message", "Your Slot Has Been Booked Successfully");
		}
		else {
			model.addAttribute("message", "Your Slot Booking Has Been Failed");
		}
		return "searchCenter";
	
	}
	
	
	
}
