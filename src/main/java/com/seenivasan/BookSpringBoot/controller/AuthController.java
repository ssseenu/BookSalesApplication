package com.seenivasan.BookSpringBoot.controller;


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
	public String login(@RequestParam("username") String userName, @RequestParam("password") String password,HttpSession session) {
		User user = userService.findByUserNameAndPassword(userName, password);
		System.out.println(user);
		if(user != null){
			session.setAttribute("USER_LOGGED", user);
			logger.info("Login success");
			return "redirect:../book/list";
		}
		else{
			logger.info("Login failure");
			return "home"; 
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
		return "home";
	}
	
	@GetMapping("/reset-password")
	public String resetPassword() {
		return "user/ResetPassword";
	}

	@PostMapping("/reset-password")
	public String resetPassword(@RequestParam("username") String userName,
			@RequestParam("newPassword") String newPassword,
			@RequestParam("confirmNewPassword") String confirmNewPassword) {
		User user = userService.findByUserName(userName);
		logger.info("User:" + user);
		if (user != null)
			if (newPassword.equals(confirmNewPassword)) {
				userService.updatePassword(newPassword, userName);
				return "home";
			}
		return "home";
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		System.out.println("Logging out");
		session.invalidate();
		return "home";
	}
}