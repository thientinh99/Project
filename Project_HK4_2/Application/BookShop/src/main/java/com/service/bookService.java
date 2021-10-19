package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.bookDAO;
import com.daoImp.bookDAOImp;
import com.entity.Book;
import com.entity.User;

@Service
public class bookService implements bookDAO {
	@Autowired
	bookDAOImp bookImp;
	@Override
	public List<Book> findAll(int start) {
		List<Book> findAll = bookImp.findAll(start);
		return findAll;
	}

	@Override
	public List<Book> findById(int userId) {
		List<Book> findById = bookImp.findById(userId);
		return findById;
	}

	@Override
	public void save(Book book) {
		try {
			bookImp.save(book);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean update(int bookId, String name, String image, float price, int catId, int status, int number,
			String description, int publishingYear, int authorId, int publishingId) {
		boolean result = bookImp.update(bookId, name, image, price, catId, status, number, description, publishingYear, authorId, publishingId);
		if(result) {
			return true;
			
		}
		return false;
	}

	@Override
	public void delete(int bookId) {
		try {
			bookImp.delete(bookId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
