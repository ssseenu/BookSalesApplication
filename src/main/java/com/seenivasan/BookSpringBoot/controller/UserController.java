package com.seenivasan.BookSpringBoot.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seenivasan.BookSpringBoot.model.User;
import com.seenivasan.BookSpringBoot.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	private final static Logger logger = Logger.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;

	@GetMapping("/list")
	public String list(HttpSession session) {
		List<User> users = userService.findAll();
		logger.info(users);
		session.setAttribute("USERS_LIST", users);
		return "user/list";
	}
}
