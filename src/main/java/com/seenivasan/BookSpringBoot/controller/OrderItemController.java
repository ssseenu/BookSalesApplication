package com.seenivasan.BookSpringBoot.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.seenivasan.BookSpringBoot.model.Book;
import com.seenivasan.BookSpringBoot.model.Order;
import com.seenivasan.BookSpringBoot.model.OrderItem;
import com.seenivasan.BookSpringBoot.model.User;
import com.seenivasan.BookSpringBoot.service.BookService;

@Controller
@RequestMapping("orderItem")
public class OrderItemController {

	@Autowired
	private BookService bookService;

	@PostMapping("/addToCart")
	public String addToCart(@RequestParam("book_id") Long isbn, @RequestParam("quantity") Integer quantity,
			HttpSession session) {

		User user = (User) session.getAttribute("USER_LOGGED");

		Order order = (Order) session.getAttribute("MY_CART_ITEMS");

		// create order
		if (order == null) {
			order = new Order();
			order.setUser(user);
			order.setTotalPrice(0);
			order.setStatus("ORDERED");
		}

		// store orderItems
		List<OrderItem> orderItem = order.getOrderItems();

		// If already the item is added to cart, then add the quantity

		boolean isItemExists = false;
		for (OrderItem item : orderItem) {

			if (item.getBook().getIsbn() == isbn) {
				int totalQuantity = item.getQuantity() + quantity;
				item.setQuantity(totalQuantity);
				isItemExists = true;
			}
		}

		//If item not exists, create new Item
		if ( ! isItemExists) {

			OrderItem orderItems= new OrderItem();
			orderItems.setOrder(order);

			Book book = bookService.findOne(isbn);
			orderItems.setBook(book);
			orderItems.setQuantity(quantity);
			orderItem.add(orderItems);
		}

		order.setOrderItems(orderItem);

		session.setAttribute("MY_CART_ITEMS", order);

		// orderService.save(order);

		return "redirect:../orders/cart";
	}

	@GetMapping("/list")
	public String list(HttpSession session) {
		return null;

	}

	@GetMapping("/remove")
	public String removeItemFromCart(@RequestParam("id") Integer id, HttpSession session) {

		System.out.println("Remove Item from Card:" + id);
		Order order = (Order) session.getAttribute("MY_CART_ITEMS");

		if (order != null && order.getOrderItems().size() > 0) {
			List<OrderItem> orderItems = order.getOrderItems();
			OrderItem itemSelected = orderItems.get(id);
			orderItems.remove(itemSelected);
			order.setOrderItems(orderItems);
			session.setAttribute("MY_CART_ITEMS", order);
		}

		return "redirect:../orders/cart";

	}

	@GetMapping("/emptycart")
	public String emptyCartid(HttpSession session) {

		session.removeAttribute("MY_CART_ITEMS");
		return "redirect:../orders/cart";

	}
}
