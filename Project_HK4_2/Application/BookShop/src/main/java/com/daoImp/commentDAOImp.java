package com.daoImp;

import java.util.ArrayList;
import java.util.List;


import javax.transaction.Transactional;

import org.eclipse.persistence.jpa.jpql.parser.DateTime;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.dao.commentDAO;
import com.entity.Category;
import com.entity.Comment;


@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class commentDAOImp implements commentDAO{
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public List<Comment> findAll(int start) {
		Session session = sessionFactory.getCurrentSession();

		List<Comment> findAll = new ArrayList<>();
		if (start < 0) {
			findAll = session.createQuery("from Comment").getResultList();
		} else {
			findAll = session.createQuery("from Comment").setFirstResult(start).setMaxResults(10).getResultList();
		}
		return findAll;
	}

	@Transactional
	@Override
	public List<Comment> findById(int bookId) {
		Session session = sessionFactory.getCurrentSession();
		List<Comment> findByCommentId = session.createQuery("from Comment where bookId='"+bookId+"' ORDER BY cmtId desc ").getResultList();
		return findByCommentId;
	}

	@Transactional
	@Override
	public void save(Comment comment) {
		Session session = sessionFactory.getCurrentSession();
		session.save(comment);
	}

	@Transactional
	@Override
	public boolean update(int cmtId, String content, DateTime check_in) {
		// TODO Auto-generated method stub
		return false;
	}

	@Transactional
	@Override
	public void delete(int cmtId) {
		// TODO Auto-generated method stub
		
	}
	@Transactional
	@Override
	public List<Comment> findByCmtId(int cmtId) {
		Session session = sessionFactory.getCurrentSession();
		List<Comment> findByCommentId = session.createQuery("from Comment where cmtId='"+cmtId+"'").getResultList();
		return findByCommentId;
	}

}
