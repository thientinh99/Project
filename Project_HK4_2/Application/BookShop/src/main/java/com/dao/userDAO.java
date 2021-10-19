package com.dao;

import java.util.List;

import com.entity.User;


public interface userDAO {
	public List<User> findAll(int start);
	public List<User> findByAllRole();
	public List<User> findById(int userId);
	public void save(User user);
	public boolean update(int userId,String username,String name,int age,String address,boolean gender,int roleId);
	public void delete(int userId);
	public boolean register(User user);
}
