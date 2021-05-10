package com.deepsingh44.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.deepsingh44.model.Book;
import com.deepsingh44.service.BookService;

@Controller
public class BookController {

	@Autowired
	private BookService bookService;

	@PostMapping("/add")
	@ResponseBody
	public String addBook(Book book) {
		return (bookService.addBook(book) > 0) ? "Successfully Book Added" : "Book Added Failed";
	}

	@GetMapping("/books")
	public ModelAndView getBooks() {
		ModelAndView mv = new ModelAndView();
		List<Book> books = bookService.fetchAllBooks();
		mv.addObject("books", books);
		mv.setViewName("booklist");
		return mv;
	}
	
	@GetMapping("/detail")
	public ModelAndView detailPage(int id) {
		Book book=bookService.findBookById(id);
		ModelAndView mv=new ModelAndView();
		mv.addObject("book",book);
		mv.setViewName("detail");
		return mv;
	}

}
