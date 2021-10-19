package com.dao;

import java.util.List;

import com.entity.User;

public interface loginDAO {
	public boolean checkLogin(String username, String password);
	public List<User> findByUser(String username,String password);
	public void createuser(User user);
}
