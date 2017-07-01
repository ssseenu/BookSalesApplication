package com.seenivasan.BookSpringBoot.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.seenivasan.BookSpringBoot.model.Order;
import com.seenivasan.BookSpringBoot.model.User;
import com.seenivasan.BookSpringBoot.service.OrderService;

@Controller
@RequestMapping("order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;


	@GetMapping("/myorders")
	public String myBookSales(ModelMap modelMap, HttpSession session) {

		User user = (User) session.getAttribute("USER_LOGGED");
		List<Order> listOrders = orderService.findAllOrders(user.getId());
		modelMap.addAttribute("MY_ORDERS", listOrders);
		return "order/allOrders";

	}
	
	@GetMapping
	public String list(ModelMap modelMap, HttpSession session) {

		List<Order> list = orderService.findAll();
		System.out.println("orders:"+ list.size());
		modelMap.addAttribute("Orders_List", list);
		return "order/list";

	}

	@GetMapping("/cart")
	public String cart(){
		return "order/cart";
	}
	
	@PostMapping("/save")
	public String save(@RequestParam("total_price")String totalPrice, HttpSession session) {

		Order booksInCart = (Order) session.getAttribute("MY_CART_ITEMS");
		if ( booksInCart != null && booksInCart.getOrderItems().size() > 0) {
			double total = Double.parseDouble(totalPrice);
			booksInCart.setTotalPrice(total);
			orderService.save(booksInCart);
			session.removeAttribute("MY_CART_ITEMS");			
		}		
		return "redirect:../order/myorders";
	}

}
