package com.dao;

import java.util.List;


import org.eclipse.persistence.jpa.jpql.parser.DateTime;

import com.entity.Comment;

public interface commentDAO {

	public List<Comment> findAll(int start);
	public List<Comment> findById(int bookId);
	public List<Comment> findByCmtId(int cmtId);
	public void save(Comment comment);
	public boolean update(int cmtId,String content,DateTime check_in);
	public void delete(int bookId);
}
