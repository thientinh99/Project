package com.dao;

import java.util.List;

import com.entity.Author;

public interface authorDAO {
	public List<Author> findAll(int start);
	public List<Author> findById(int authorId);
	public void save(Author author);
	public boolean update(int authorId,String name,String pseudonym,int age,String domicile);
	public void delete(int authorId);
}
