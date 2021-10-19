package com.dao;

import java.util.List;

import com.entity.Role;

public interface roleDAO {
	public List<Role> findAll(int start);
	public List<Role> findById(int roleId);
	public void save(Role role);
	public boolean update(int roleId,String name, boolean status );
	public void delete(int roleId);
}
