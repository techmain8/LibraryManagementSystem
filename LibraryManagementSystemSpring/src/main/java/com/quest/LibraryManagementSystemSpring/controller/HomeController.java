package com.quest.LibraryManagementSystemSpring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.quest.LibraryManagementSystemSpring.models.User;
import com.quest.LibraryManagementSystemSpring.service.UserService;


@Controller
public class HomeController {
	
	@Autowired
	private UserService userservice;
	
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
	
	@PostMapping("/add")
	public String AddUsers(@ModelAttribute User user)
	{
		userservice.savemyuser(user);
		return "redirect:/login";
	}
	
	@PostMapping("main")
	public String showWelcomePage()
	{
		return "redirect:/main";
	}
	
	@GetMapping("/main")
	public String showMainPage()
	{
		return "LibraryManagementSystem";
	}
	
	@GetMapping("/books")
	public String showBookPage()
	{
		return "Book";
	}
	
}
