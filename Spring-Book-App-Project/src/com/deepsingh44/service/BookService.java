package com.deepsingh44.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.deepsingh44.dao.BookDao;
import com.deepsingh44.model.Book;

@Service
public class BookService {
	@Autowired
	private BookDao bookDao;

	@Transactional
	public int addBook(Book book) {
		return bookDao.addBook(book);
	}

	@Transactional
	public List<Book> fetchAllBooks() {
		return bookDao.fetchAllBooks();
	}
}
