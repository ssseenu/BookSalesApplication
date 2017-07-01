package com.seenivasan.BookSpringBoot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seenivasan.BookSpringBoot.model.OrderItem;
import com.seenivasan.BookSpringBoot.repository.OrderItemRepository;

@Service
public class OrderItemService {
	@Autowired
	private OrderItemRepository orderItemRepository;

	public void save(OrderItem orderItem) {
		orderItemRepository.save(orderItem);
	}

	
}
