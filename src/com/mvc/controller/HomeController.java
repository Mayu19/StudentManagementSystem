package com.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.model.Student;
import com.mvc.serviceI.ServiceI;

@Controller
public class HomeController {

	@Autowired
	ServiceI si;
	
	@RequestMapping("/")
	public String firstpage()
	{
		return "login";
	}
	
	@RequestMapping("/log")
	public String  loginCheck(@RequestParam("username")String username,@RequestParam("password")String password, Model m)
	{
		List<Student> slist=si.loginCheck(username, password);
		m.addAttribute("data",slist);
		if(slist.isEmpty())
		{
			m.addAttribute("warning", "Invalid Username and Password...!!");
		
			return "login";
		}
		else
		{
		return "success";
	}
	}
	@RequestMapping("/register")
	public String perRegister()
	{
		return "register";
	}
	
	@RequestMapping("/reg")
	public String registerData(@ModelAttribute Student s, Model m)
	{
		
		int id=si.saveData(s);
		if(id>0)
		{
			
			return "login";
		}
		else
		{
			m.addAttribute("warning", "Warning...!!!  this Id Already Exists Please try for another ID");
			return "register";
		}
		}
	
	@RequestMapping("/delete")
	public String deleteRecord(@RequestParam("id")int id, Model m)
	{
		List<Student> slist=si.deleteRecord(id);
		m.addAttribute("data", slist);
		return "success";

	}
	
	@RequestMapping("/add")
	public String addRecord()
	{
		return "register";
	}
	
	@RequestMapping("/edit")
	public String editRecord(@RequestParam("id")int id,Model m)
	{
		Student stu=si.editRecord(id);
		m.addAttribute("s", stu);
		return "update";
	}
	
	@RequestMapping("/update")
	public String updateRecord(@ModelAttribute("stu")Student s,Model m)
	{
		List<Student> slist=si.updateRecord(s);
		m.addAttribute("data", slist);
		
		return "success";
	}

}