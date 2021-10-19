package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.categoryDAO;
import com.daoImp.categoryDAOImp;
import com.entity.Author;
import com.entity.Category;

@Service
public class categoryService implements categoryDAO {

	@Autowired
	categoryDAOImp categoryDAOImp;
	
	@Override
	public List<Category> findAll(int start) {
		List<Category> findAll = categoryDAOImp.findAll(start);
		return findAll;
	}

	@Override
	public List<Category> findById(int categoryId) {
		List<Category> findById = categoryDAOImp.findById(categoryId);
		return findById;
	}

	@Override
	public void save(Category category) {
		try {
			categoryDAOImp.save(category);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean update(int categoryId, String name, int status, String description) {
		boolean check = categoryDAOImp.update(categoryId, name, status, description);
		return check;
	}

	@Override
	public void delete(int categoryId) {
		try {
			categoryDAOImp.delete(categoryId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
