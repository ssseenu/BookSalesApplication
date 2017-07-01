package com.seenivasan.BookSpringBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seenivasan.BookSpringBoot.model.Order;
import com.seenivasan.BookSpringBoot.repository.OrderRepository;
@Service
public class OrderService {
	
	@Autowired
	private OrderRepository orderRepository;
	
	public void save(Order order) {
		orderRepository.save(order);
		
	}
	
	public List<Order> findAllOrders(){
		return orderRepository.findByOrderByIdDesc();
	}
	
	public List<Order> findAll(){
		return orderRepository.findAll();
	}
	
	public Order findOne(int id){
		return orderRepository.findOne(id);
	}
	public List<Order> findByUserIdOrderByIdDesc(int userid) {
		return orderRepository.findByUserIdOrderByIdDesc(userid);
	}

}
