package com.quest.LibraryManagementSystemSpring.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quest.LibraryManagementSystemSpring.models.User;
import com.quest.LibraryManagementSystemSpring.repository.UserRepo;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class UserService {
	@Autowired
	private UserRepo userrepo;

	public UserService(UserRepo userrepo) 
	{
		this.userrepo = userrepo;
	}

	public void savemyuser(User user) 
	{
		userrepo.save(user);
	}

	public List<User> findByfirstNameLikeOrlastNameLikeOremailLike(String firstname, String lastname, String email){
	    List<User> user = userrepo.findByfirstNameLikeOrlastNameLikeOremailLike(firstname, lastname,  email);
	    return user;
	}

	public Optional<User> findbyid(Integer id) 
	{
		return userrepo.findById(id);
	}

	public List<User> findAll()
	{
		return userrepo.findAll();
	}
	
	public  void DeleteByid(Integer id)
	{
		userrepo.deleteById(id);
	}

}
