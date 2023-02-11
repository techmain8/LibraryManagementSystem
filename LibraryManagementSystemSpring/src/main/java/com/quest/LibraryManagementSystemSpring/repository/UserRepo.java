package com.quest.LibraryManagementSystemSpring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.quest.LibraryManagementSystemSpring.models.User;


public interface UserRepo extends JpaRepository<User, Integer> {
	public List<User> findByFirstNameLikeOrLastNameLikeOrEmailLike(String firstname, String lastname, String email);
}
