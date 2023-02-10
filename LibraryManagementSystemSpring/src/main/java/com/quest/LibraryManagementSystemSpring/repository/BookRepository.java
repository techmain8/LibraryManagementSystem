package com.quest.LibraryManagementSystemSpring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.quest.LibraryManagementSystemSpring.models.Book;

public interface BookRepository extends JpaRepository<Book, Integer> 
{
	public List<Book> findByTitleLikeOrAuthorLikeOrPublisherLike(String title, String author, String publisher);
}
