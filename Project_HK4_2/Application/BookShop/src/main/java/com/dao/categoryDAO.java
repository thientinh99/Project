package com.dao;

import java.util.List;

import com.entity.Category;

public interface categoryDAO {

	public List<Category> findAll(int start);
	public List<Category> findById(int categoryId);
	public void save(Category category);
	public boolean update(int categoryId,String name,int status,String description);
	public void delete(int categoryId);
}
