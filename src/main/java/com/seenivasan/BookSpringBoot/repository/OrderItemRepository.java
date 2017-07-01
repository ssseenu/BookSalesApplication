package com.seenivasan.BookSpringBoot.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import org.springframework.stereotype.Repository;

import com.seenivasan.BookSpringBoot.model.OrderItem;

@Repository
public interface OrderItemRepository extends JpaRepository<OrderItem,Integer>{
	
	
}
