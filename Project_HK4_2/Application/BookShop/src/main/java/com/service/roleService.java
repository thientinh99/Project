package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.roleDAO;
import com.daoImp.roleDAOImp;
import com.daoImp.userDAOImp;
import com.entity.Author;
import com.entity.Role;
import com.entity.User;
@Service
public class roleService implements roleDAO {
	@Autowired
	roleDAOImp roleImpt;

	@Override
	public List<Role> findAll(int start) {
		List<Role> findAll = roleImpt.findAll(start);
		return findAll;
	}
	
	@Override
	public void save(Role role) {
		try {
			roleImpt.save(role);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<Role> findById(int roleId) {
		List<Role> findById = roleImpt.findById(roleId);
		return findById;
	}

	@Override
	public boolean update(int roleId, String name, boolean status) {
		boolean check = roleImpt.update(roleId, name, status);
		return check;
	}

	@Override
	public void delete(int roleId) {
		try {
			roleImpt.delete(roleId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
