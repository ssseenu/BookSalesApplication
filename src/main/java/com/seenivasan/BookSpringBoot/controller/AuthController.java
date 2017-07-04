package com.seenivasan.BookSpringBoot.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.seenivasan.BookSpringBoot.model.User;
import com.seenivasan.BookSpringBoot.service.UserService;

@Controller
@RequestMapping("auth")
public class AuthController {
	
	private static final Logger logger = Logger.getLogger(AuthController.class);

	@Autowired
	private UserService userService;
	
	@GetMapping("/login")
	public String login(){
	return "user/login";	
	}
	
	@PostMapping("/login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session) {
		logger.info("Entering Login " + username + "-" + password);

		User user = userService.findByUserNameAndPassword(username, password);
		logger.info("User:" + user);
		
		if (user != null) {
			session.setAttribute("USER_LOGGED", user);
			logger.info("Login Success");
			if(user.getUserName().equals("admin") && user.getPassword().equals("admin")){
				List<User> userList = null;
				userList = userService.findAll();
				System.out.println(userList);
				session.setAttribute("USERS_LIST", userList);
				return "user/list";
			}
			return "redirect:../book/list";
		} else {
			logger.error("Login Failure");
			return "user/login";
		}
	}
	
	@GetMapping("/register")
	public String register() {
		return "user/register";
	}
	
	@PostMapping("/register")
	public String save( @RequestParam("name") String name,
			@RequestParam("userName") String userName, @RequestParam("password") String password,
			@RequestParam("mobileNo") long mobileNo, @RequestParam("emailId") String emailId,
			@RequestParam("userStatus") char userStatus){
		User user = new User(name,userName,password,mobileNo,emailId);
		userService.register(user);
		return "index";
	}
	
	@GetMapping("/resetPassword")
	public String resetPassword() {
		return "user/resetpassword";
	}

	@PostMapping("/resetPassword")
	public String resetPassword(@RequestParam("username") String username,
			@RequestParam("newPassword") String newPassword,
			@RequestParam("confirmNewPassword") String confirmNewPassword) {
		User user = userService.findByUserName(username);
		logger.info("User:" + user);
		if (user != null)
			if (newPassword.equals(confirmNewPassword)) {
				user.setPassword(newPassword);
				userService.updatePassword(user);
				return "redirect:../auth/login";
			}
		return "user/resetpassword";
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		System.out.println("Logging out");
		session.invalidate();
		return "index";
	}
}