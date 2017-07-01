package com.seenivasan.BookSpringBoot.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;


@Data
@Entity
@Table(name = "order_items")
public class OrderItem {
	
	@Id
	@GeneratedValue
	@Column(name = "item_id")
	private int itemId;

	@ManyToOne
	@JoinColumn(name = "book_order_id")
	private Order order;

	@Column(name = "quantity")
	private int quantity;

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "book_isbn")
	private Book book;
	
	@Column(name = "ordered_date")
	private LocalDateTime orderedDate;
}
