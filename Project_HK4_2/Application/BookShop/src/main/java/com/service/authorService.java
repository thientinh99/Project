package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.authorDAO;
import com.daoImp.authorDAOImp;
import com.entity.Author;

@Service
public class authorService implements authorDAO {
	@Autowired
	authorDAOImp auDAOImpt;

	@Override
	public List<Author> findAll(int start) {
		List<Author> findAll = auDAOImpt.findAll(start);
		return findAll;
	}

	@Override
	public void save(Author author) {
		try {
			auDAOImpt.save(author);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<Author> findById(int authorId) {
		List<Author> findById = auDAOImpt.findById(authorId);
		return findById;
	}

	@Override
	public boolean update(int authorId, String name, String pseudonym, int age, String domicile) {
		boolean check = auDAOImpt.update(authorId, name, pseudonym, age, domicile);
		return check;
	}

	@Override
	public void delete(int authorId) {
		try {
			auDAOImpt.delete(authorId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
