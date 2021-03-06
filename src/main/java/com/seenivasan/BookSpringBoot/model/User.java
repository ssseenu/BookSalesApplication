package com.seenivasan.BookSpringBoot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.seenivasan.BookSpringBoot.model.Role;

import lombok.Data;

@Data
@Entity
@Table(name = "user")
public class User {
	
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@NotNull
	@Column(name="name")
	private String name;
	
	@NotNull
	@Column(name="user_name")
	private String userName;
	
	@NotNull
	@Column(name="password")
	private String password;
	
	@NotNull
	@Column(name="mobile_no")
	private long mobileNo;
	
	@NotNull
	@Column(name="email_id")
	private String emailId;
	
	@NotNull
	@Column(name="user_status")
	private char userStatus;
	
	@ManyToOne
	@JoinColumn(name="user_role_id")
	private Role role;
	
	public User( String name, String userName, String password, long mobileNo, String emailId) {
		super();
		
		this.name = name;
		this.userName = userName;
		this.password = password;
		this.mobileNo = mobileNo;
		this.emailId = emailId;
		this.userStatus = 'A';
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

}
