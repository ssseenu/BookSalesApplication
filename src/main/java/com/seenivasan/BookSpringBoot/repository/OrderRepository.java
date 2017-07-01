package com.seenivasan.BookSpringBoot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.seenivasan.BookSpringBoot.model.Order;
@Repository
public interface OrderRepository extends JpaRepository<Order,Integer> {
	
	//public List<Order> findByUserIdOrderByIdDesc(int userId);
	
	public List<Order> findByOrderByIdDesc();
}
