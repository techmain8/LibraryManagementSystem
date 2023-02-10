package com.quest.LibraryManagementSystemSpring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.quest.LibraryManagementSystemSpring.models.User;

public interface UserRepo extends JpaRepository<User, Integer> {

}
