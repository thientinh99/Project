package com.dao;

import java.util.List;


import com.entity.Book;



public interface bookDAO {
	public List<Book> findAll(int start);
	public List<Book> findById(int userId);
	public void save(Book book);
	public boolean update(int bookId,String name,String image,float price,int catId,int status,int number,String description,int publishingYear,int authorId,int publishingId);
	public void delete(int bookId);

}
