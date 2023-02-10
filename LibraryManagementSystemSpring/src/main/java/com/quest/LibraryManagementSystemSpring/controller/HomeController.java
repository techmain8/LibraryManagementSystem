package com.quest.LibraryManagementSystemSpring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String showHomePage() 
	{
		return "HomePage";
	}
	
	@GetMapping("/login")
	public String showLoginPage() 
	{
		return "LoginPage";
	}
	
	@GetMapping("/register")
	public String showSignUpPage()
	{
		return "SignUpPage";
	}
	
	@GetMapping("/admin")
	public String showAdminPage()
	{
		return "redirect:/admin/";
	}
	
	@GetMapping("/main")
	public String showMainPage()
	{
		return "LibraryManangementSystem";
	}
	
	@GetMapping("/books")
	public String showBookPage()
	{
		return "Book";
	}
	
	
}
