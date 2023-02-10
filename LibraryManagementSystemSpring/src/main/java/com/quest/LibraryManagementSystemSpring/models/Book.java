package com.quest.LibraryManagementSystemSpring.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="books_tb")
public class Book 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;
	
	@Column(nullable = false)
	private String title;
	
	@Column(nullable = false)
	private String ISBN;
	
	@Column(nullable = false)
	private int publicationYear;
	
	@Column(nullable = false)
	private String publisher;
	
	@Column(nullable = false)
	private String author;
	
	@Column(nullable = false)
	private String category;
	
	@Column(nullable = false)
	private float price;
	
	//Constructor 
	public Book() {
		
	}

	public Book(int id, String title, String iSBN, int publicationYear, String publisher, String author,String category, float price) 
	{
		Id = id;
		this.title = title;
		ISBN = iSBN;
		this.publicationYear = publicationYear;
		this.publisher = publisher;
		this.author = author;
		this.category = category;
		this.price = price;
	}

	//Getter's And Setter's
	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}

	public int getPublicationYear() {
		return publicationYear;
	}

	public void setPublicationYear(int publicationYear) {
		this.publicationYear = publicationYear;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Book [Id=" + Id + ", title=" + title + ", ISBN=" + ISBN + ", publicationYear=" + publicationYear
				+ ", publisher=" + publisher + ", author=" + author + ", category=" + category + ", price=" + price
				+ "]";
	}

	
}
