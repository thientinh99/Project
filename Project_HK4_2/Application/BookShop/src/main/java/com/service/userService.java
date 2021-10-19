package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.userDAO;
import com.daoImp.authorDAOImp;
import com.daoImp.userDAOImp;
import com.entity.Author;
import com.entity.User;

@Service
public class userService implements userDAO {
	@Autowired
	userDAOImp userImpt;

	@Override
	public List<User> findAll(int start) {
		List<User> findAll = userImpt.findAll(start);
		return findAll;
	}

	@Override
	public List<User> findById(int userId) {
		List<User> findById = userImpt.findById(userId);
		return findById;
	}

	@Override
	public void save(User user) {
		try {
			userImpt.save(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public boolean update(int userId, String username, String name, int age, String address,boolean gender, int roleId) {
		boolean result = userImpt.update(userId, username, name, age, address,gender, roleId);
		if(result) {
			return true;
			
		}
		return false;
	}
	@Override
	public void delete(int userId) {
		try {
			userImpt.delete(userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public List<User> findByAllRole() {
		List<User> findAll = userImpt.findByAllRole();
		return findAll;
	}

	@Override
	public boolean register(User user) {

		boolean checkRegister = userImpt.register(user);
		return checkRegister;
	}
} 
