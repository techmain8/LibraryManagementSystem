package com.quest.LibraryManagementSystemSpring.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.quest.LibraryManagementSystemSpring.models.Book;
import com.quest.LibraryManagementSystemSpring.repository.BookRepository;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class BookService 
{
	@Autowired
	private BookRepository bookrepo;

	public BookService(BookRepository bookrepo) 
	{
		this.bookrepo = bookrepo;
	}

	public void savemybook(Book book) 
	{
		bookrepo.save(book);
	}

	public List<Book> findByTitleLikeOrAuthorLikeOrPublisherLike(String title, String author, String publisher) {
	    List<Book> books = bookrepo.findByTitleLikeOrAuthorLikeOrPublisherLike(title, author, publisher);
	    return books;
	}

	public Optional<Book> findbyid(Integer id) 
	{
		return bookrepo.findById(id);
	}

	public List<Book> findAll()
	{
		return bookrepo.findAll();
	}
	
	public  void DeleteByid(Integer id)
	{
		 bookrepo.deleteById(id);
	}
}
