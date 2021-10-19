package com.service;

import java.util.List;

import org.eclipse.persistence.jpa.jpql.parser.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.commentDAO;
import com.daoImp.commentDAOImp;
import com.entity.Comment;

@Service
public class commentService implements commentDAO{
	@Autowired
	commentDAOImp commentImp;
	@Override
	public List<Comment> findAll(int start) {
		List<Comment> findAll = commentImp.findAll(start);
		return findAll;
	}

	@Override
	public List<Comment> findById(int bookId) {
		List<Comment> findByCommentId = commentImp.findById(bookId);
		return findByCommentId;
	}

	@Override
	public void save(Comment comment) {
		commentImp.save(comment);
	}

	@Override
	public boolean update(int cmtId, String content, DateTime check_in) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void delete(int cmtId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Comment> findByCmtId(int cmtId) {
		List<Comment> findByCommentId = commentImp.findByCmtId(cmtId);
		return findByCommentId;
	}

}
