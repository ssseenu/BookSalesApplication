package com.seenivasan.BookSpringBoot.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seenivasan.BookSpringBoot.model.User;
import com.seenivasan.BookSpringBoot.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;

	@GetMapping
	public String list(HttpSession session) {
		List<User> users = userService.findAll();
		System.out.println(users);
		session.setAttribute("USERS_LIST", users);
		return "user/list";
	}

	@GetMapping("/{id}")
	public String show(@PathVariable("id") int id, ModelMap modelMap) {
		System.out.println("ShowBook:" + id);
		User user = userService.findOne(id);
		modelMap.addAttribute("USER_DETAIL", user);
		return "user/show";
	}
}
