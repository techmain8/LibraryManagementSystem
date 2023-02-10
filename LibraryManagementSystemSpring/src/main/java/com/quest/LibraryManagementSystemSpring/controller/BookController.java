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
import com.quest.LibraryManagementSystemSpring.models.Book;
import com.quest.LibraryManagementSystemSpring.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController 
{

	@Autowired
	private BookService bookservice;
	
	@GetMapping("")
	public String listAllbooks(Model model) 
	{
		List<Book> books = bookservice.findAll();
		model.addAttribute("books",books);
		return "Book";
	}
	
	@GetMapping("add")
	public String showBooks()
	{
		return "/book";
	}
	
	@GetMapping("Manage-Books")
	public String CheckBooks(Model model)
	{
		List<Book> books = bookservice.findAll();
		model.addAttribute("books",books);
		return "Manage-Books";
	}
	
	
	@PostMapping("add")
	public String add(@RequestParam String title,
					@RequestParam String ISBN,
					@RequestParam int publicationYear,
					@RequestParam String publisher,
					@RequestParam String author,
					@RequestParam String category,
					@RequestParam int price)
	{
		Book book = new Book();
		book.setTitle(title);
		book.setISBN(ISBN);
		book.setPublicationYear(publicationYear);
		book.setPublisher(publisher);
		book.setAuthor(author);
		book.setCategory(category);
		book.setPrice(price);
		bookservice.savemybook(book);
		return "redirect:/book/Manage-Books";
	}
	
	@GetMapping("update/{id}")
	public String showUpdateBooks(@PathVariable Integer id,Model model)
	{
		Book book = null;
		Optional<Book> optionalbook = bookservice.findbyid(id);
		if(optionalbook.isPresent())
		{
			book = optionalbook.get();
		}
		else
		{
			return "redirect:/error/No Teacher With ID : "+id+" Found";
		}
		model.addAttribute("book",book);
		return "Update-Book";
	}
	
	@PostMapping("update")
	public String updateBook(@ModelAttribute Book book)
	{
		bookservice.savemybook(book);
		return "redirect:Manage-Books";
	}
	
	@GetMapping("remove/{id}")
	public String removeBook(@PathVariable Integer id)
	{
		bookservice.DeleteByid(id);
		return "redirect:/book/Manage-Books";
	}
	
	@GetMapping("search")
	public String tosearchBook(@RequestParam String value ,Model model)
	{
		List<Book> books = bookservice.findByTitleLikeOrAuthorLikeOrPublisherLike("%"+value+"%", "%"+value+"%", "%"+value+"%");
		model.addAttribute("books",books);
		return "Searched-Books";
	}
	
	@PostMapping("search")
    public String searchBook(@RequestParam String value ,Model model) 
		{
			System.out.println("Inside prePostMapping");
			List<Book> books = bookservice.findByTitleLikeOrAuthorLikeOrPublisherLike("%"+value+"%", "%"+value+"%", "%"+value+"%");
			model.addAttribute("books", books);
			System.out.println("Inside PostMapping");
			return "Searched-Books";
		}


	
}
