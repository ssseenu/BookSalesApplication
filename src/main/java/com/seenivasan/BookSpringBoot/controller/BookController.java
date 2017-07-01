package com.seenivasan.BookSpringBoot.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seenivasan.BookSpringBoot.model.Book;
import com.seenivasan.BookSpringBoot.service.BookService;

@Controller
@RequestMapping(value = "book")
public class BookController {
	private final static Logger logger = Logger.getLogger(BookController.class);
	
	@Autowired
	public BookService bookService;

	@GetMapping("/list")
	public String listBooks(HttpSession session) {
		logger.info("Entering the list");
		List<Book> books = bookService.findAll();
		session.setAttribute("SELECTED_BOOK", books);
		logger.info("Book :" +books);
		return "book/list";

	}
	
	@GetMapping("/{isbn}")
	public String bookDetails(@PathVariable("isbn") long isbn, HttpSession session) {
		Book book = bookService.findOne(isbn);
		session.setAttribute("books", book);
		logger.info("Book :" +book);
		return "book/show";

	}

}
