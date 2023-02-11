package com.quest.LibraryManagementSystemSpring.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quest.LibraryManagementSystemSpring.models.User;
import com.quest.LibraryManagementSystemSpring.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userservice;
	
	@GetMapping("")
	public String listAllUsers(Model model) 
	{
		List<User> users = userservice.findAll();
		model.addAttribute("users",users);
		return "Manage-Users";
	}
	
	@GetMapping("add")
	public String showUsers()
	{
		return "/user";
	}
	
	@GetMapping("Manage-Users")
	public String CheckUsers(Model model)
	{
		List<User> users = userservice.findAll();
		model.addAttribute("users",users);
		return "Manage-Users";
	}
	
	@PostMapping("add")
	public String add(@ModelAttribute User user)
	{
		userservice.savemyuser(user);
		return "redirect:/user/Manage-Users";
	}
	
	@GetMapping("update/{id}")
	public String showUpdateUsers(@PathVariable Integer id,Model model)
	{
		User user = null;
		Optional<User> optionaluser = userservice.findbyid(id);
		if(optionaluser.isPresent())
		{
			user = optionaluser.get();
		}
		else
		{
			return "redirect:/error/No Teacher With ID : "+id+" Found";
		}
		model.addAttribute("user",user);
		return "Update-User";
	}
	
	@PostMapping("update")
	public String updateUser(@ModelAttribute User user)
	{
		userservice.savemyuser(user);
		return "redirect:Manage-Users";
	}
	
	@GetMapping("remove/{id}")
	public String removeuser(@PathVariable Integer id)
	{
		userservice.DeleteByid(id);
		return "redirect:/user/Manage-users";
	}
	
	@GetMapping("search")
	public String tosearchBook(@RequestParam String value ,Model model)
	{
		List<User> users = userservice.findByFirstNameLikeOrLastNameLikeOrEmailLike("%"+value+"%", "%"+value+"%", "%"+value+"%");
		model.addAttribute("users",users);
		return "Searched-Users";
	}
	
	@PostMapping("search")
    public String searchBook(@RequestParam String value ,Model model) 
		{
			System.out.println("Inside prePostMapping");
			List<User> users = userservice.findByFirstNameLikeOrLastNameLikeOrEmailLike("%"+value+"%", "%"+value+"%", "%"+value+"%");
			model.addAttribute("users", users);
			System.out.println("Inside PostMapping");
			return "Searched-Users";
		}

}
