package com.dao;

import java.util.List;

import com.entity.Book;

public interface productDAO {
	public List<Book> findAll(int start);
	public List<Book> findById(int bookId);
	public List<Book> findByCatId(int catId);
}
