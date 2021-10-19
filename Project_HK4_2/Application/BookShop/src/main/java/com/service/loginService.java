package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.loginDAO;
import com.daoImp.loginDAOImp;
import com.daoImp.publishingCompanyDAOImp;
import com.entity.User;

@Service
public class loginService implements loginDAO {
	@Autowired
	loginDAOImp loginimp;
	@Override
	public boolean checkLogin(String username, String password) {
		boolean check = loginimp.checkLogin(username, password);
			if(check) {
				return true;
			}else {
					return false;
			}
	}
	@Override
	public List<User> findByUser(String username, String password) {
		List<User> findByUser = loginimp.findByUser(username, password);
		return findByUser;
	}
	@Override
	public void createuser(User user) {
		loginimp.createuser(user);
	}

}
