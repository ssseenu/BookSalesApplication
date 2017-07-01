package com.seenivasan.BookSpringBoot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.seenivasan.BookSpringBoot.model.User;

@Repository

public interface UserRepository extends JpaRepository<User,Integer> {
	
	@Query(value = "select * from user where user_name=?1 and password=?2 and user_status=?3",nativeQuery = true)
	public User findByUserNameAndPassword(String userName, String password, char userStatus);
	
	@Query(value = "select * from user where user_name=?1", nativeQuery = true)
	public User findByUserName(String userName);
	
	@Query(value = "update user set password = ?1 where user_name = ?2 and user_status = ?3", nativeQuery = true)
	public User updatePassword(String newPassword, String userName, char userStatus);
}
