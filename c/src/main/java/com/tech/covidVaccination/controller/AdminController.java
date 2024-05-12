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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tech.covidVaccination.bo.CenterBo;
import com.tech.covidVaccination.bo.Userbo;
import com.tech.covidVaccination.service.ServiceCo;

@Controller
public class AdminController {
	@Autowired
	ServiceCo serviceCo;
	
	@RequestMapping("/")
    public String defaultPage() {
        return "index";
    }
	@RequestMapping(value="/loginAdmin",method=RequestMethod.GET)
	public String loginAdmin(HttpServletRequest request,Model model) {
		Userbo userbo =new Userbo();
		model.addAttribute("userbo",userbo);
		String userType = request.getParameter("user");
		request.setAttribute("userType", userType);
			 request.setAttribute("successMessage", request.getParameter("successMessage"));
		
		
			 request.setAttribute("errorMessage", request.getParameter("errorMessage"));
		
		return "adminLogin";
	}
	
	@RequestMapping(value="/loginAdmin",method=RequestMethod.POST)
	public String loginAdmin(@ModelAttribute("userbo")Userbo userbo, HttpServletRequest request, HttpServletResponse response, Model model) {
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
	    		return "adminhome";
	    	}
	    	else{
	    		model.addAttribute("message", "Failure");
	    		return "adminLogin";
	    	}
	    }
	   return "adminLogin";
		
	}
	
	@RequestMapping(value="/addcenter", method=RequestMethod.GET)
	public String addcenter(HttpServletRequest request, Model model) {
			
			CenterBo centerbo = new CenterBo();
			model.addAttribute("centerbo", centerbo);
			return "addCenter";
			
	}
	
	@RequestMapping(value="/addcenter",method=RequestMethod.POST)
	public String addcenter(@ModelAttribute("centerbo")CenterBo centerbo,HttpServletRequest request,HttpServletResponse response,Model model) {
		long status = 0;
		int sno=4;
	    if(centerbo.getId()==0) {
	    	status = serviceCo.addCenter(centerbo);
	    }
	    else {
	    	centerbo.setSno(sno);
	    	status = serviceCo.updateCenter(centerbo);
	    }
		if(status>0) {
			model.addAttribute("message", "Successfull");
		}
		else {
			model.addAttribute("message", "Failed");
		}
		return "redirect:/viewcenter";
	}
	
	@RequestMapping(value = "/viewcenter", method = RequestMethod.GET)
	public String viewCenter(HttpServletRequest request, Model model)throws ServletException, IOException{
		
		List<CenterBo> list = serviceCo.viewCenter();
		model.addAttribute("list", list);
		
		return "viewCenter";
		
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String edit(@RequestParam("id") int id,HttpServletRequest request, Model model)throws ServletException, IOException{
		CenterBo centerBo=new CenterBo();
		centerBo.setId(id);
		CenterBo centerbo=serviceCo.getCenterById(centerBo);
		model.addAttribute("centerbo", centerbo);
				
		return "addCenter";
	}
	
	@PostMapping("update-center")
	public ModelAndView updateCenter(HttpServletRequest request, @ModelAttribute("centerbo") CenterBo centerbo) {
	    ModelAndView model = new ModelAndView();
	    try {
	        int id = Integer.parseInt(request.getParameter("id"));
	        centerbo.setId(id);
	        
	        int updatedCenter = serviceCo.updateCenter(centerbo);
	        
	        if (updatedCenter >0&&centerbo!=null) {
	            model.setViewName("redirect:/viewcenter");
	            model.addObject("successMessage", "Center Updated Successfully!");
	        } else {
	            model.setViewName("redirect:/viewcenter");
	            model.addObject("errorMessage", "Center Details Was Not Updated");
	        }
	    } catch (Exception e) {
	        model.setViewName("redirect:/viewcenter");
	        model.addObject("errorMessage", "An error occurred while updating center details");
	        e.printStackTrace(); // You might want to log the exception instead
	    }
	    return model;
	}
	@GetMapping("/delete")
	public String delete(@RequestParam("id") int id,HttpServletRequest request, ModelAndView model)throws ServletException, IOException{
		CenterBo centerBo=new CenterBo();
		centerBo.setId(id);
		int status=serviceCo.deleteCenter(centerBo);
		if(status>0) {
			model.addObject("errorMessage", "Center Is Deleted Successfully");
		}
		else {
			model.addObject("errorMessage", "Center Deletion Failed");
		}
		return "redirect:/viewenter";
	}
}
