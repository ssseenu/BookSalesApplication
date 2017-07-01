package com.seenivasan.BookSpringBoot.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import lombok.Data;
@Data
@Entity
@Table(name = "book")
public class Book {

	@Id
	@Column(name = "isbn")
	private long isbn;

	@NotNull
	@Column(name = "title")
	private String title;

	@NotNull
	@Column(name = "author")
	private String author;

	@Column(name = "publish_date")
	private Date publishDate;

	@Column(name = "content")
	private String content;

	@NotNull
	@Column(name = "price")
	private double price;

	@NotNull
	@Column(name = "status")
	private String status;

}