package com.daoImp;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.dao.bookDAO;
import com.dao.productDAO;
import com.entity.Book;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class productDAOImp implements productDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public List<Book> findAll(int start) {
		Session session = sessionFactory.getCurrentSession();
		List<Book> findAll = new ArrayList<>();
		if (start < 0) {
			findAll = session.createQuery("from Book").getResultList();
		} else {
			findAll = session.createQuery("from Book").setFirstResult(start).setMaxResults(15).getResultList();
		}
		return findAll;
	}
	@Transactional
	@Override
	public List<Book> findById(int bookId) {
		Session session = sessionFactory.getCurrentSession();
		List<Book> findbyId = new ArrayList<>();
		findbyId = session.createQuery("from Book where bookId=" + bookId).list();
		return findbyId;
	}
	@Transactional
	@Override
	public List<Book> findByCatId(int catId) {
		Session session = sessionFactory.getCurrentSession();
		List<Book> findbyCatId = new ArrayList<>();
		findbyCatId = session.createQuery("from Book where categoryId=" + catId).list();
		return findbyCatId;
	}

}
