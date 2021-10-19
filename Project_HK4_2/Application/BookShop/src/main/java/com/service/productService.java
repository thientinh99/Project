package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.productDAO;
import com.daoImp.productDAOImp;
import com.entity.Book;
@Service
public class productService implements productDAO {
	@Autowired
	productDAOImp product;

	@Override
	public List<Book> findAll(int start) {
		List<Book> selectAll = product.findAll(start); 
		return selectAll;
	}

	@Override
	public List<Book> findById(int bookId) {
		List<Book> findById = product.findById(bookId); 
		return findById;
	}

	@Override
	public List<Book> findByCatId(int catId) {
		List<Book> findById = product.findByCatId(catId);
		return findById;
	}
	
}
