package com.seenivasan.BookSpringBoot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
@Data
@Entity
@Table(name = "book_sales")
public class BookSales {
	
	@Id
	@GeneratedValue
	private int id;
	
	@Column(name="no_of_column")
	private int noofCopies;

}
