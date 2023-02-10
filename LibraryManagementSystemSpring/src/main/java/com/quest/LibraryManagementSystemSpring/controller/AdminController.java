package com.quest.LibraryManagementSystemSpring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin")
public class AdminController 
{
	@GetMapping("/")
	public String showLoginPage() 
	{
		return "Admin-Login";
	}
	
	@GetMapping("/home")
	public String showAdminHomePage()
	{
		return "Admin-Home";
	}
	
	@PostMapping("/home")
	public String adminLogin()
	{
		return "redirect:/admin/home";
	}
	
	@GetMapping("/book")
	public String showManageBook()
	{
		return "Book";
	}
	
	@GetMapping("/user")
	public String showUsersPage()
	{
		return "Users";
	}
	
}
