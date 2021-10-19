package com.daoImp;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.dao.bookDAO;
import com.entity.Author;
import com.entity.Book;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class bookDAOImp implements bookDAO {
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
			findAll = session.createQuery("from Book").setFirstResult(start).setMaxResults(4).getResultList();
		}
		return findAll;
	}

	@Transactional
	@Override
	public List<Book> findById(int bookId) {
		Session session = sessionFactory.getCurrentSession();
		List<Book> findAll = new ArrayList<>();
		findAll = session.createQuery("from Book where bookId=" + bookId).getResultList();
		return findAll;
	}

	@Transactional
	@Override
	public void save(Book book) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.save(book);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Transactional
	@Override
	public boolean update(int bookId, String name, String image, float price, int catId, int status, int number,
			String description, int publishingYear, int authorId, int publishingId) {
		Session session = sessionFactory.getCurrentSession();
		Query hql = (Query) session.createQuery("update Book set name='" + name + "',image='" + image + "',price='"
				+ price + "',number='" + number + "',categoryId='" + catId + "',status='" + status + "',description='"
				+ description + "',publishingYear='" + publishingYear + "',authorId='" + authorId + "',publishingId='"
				+ publishingId + "' where bookId=" + bookId);
		hql.executeUpdate();
		return true;
	}

	@Transactional
	@Override
	public void delete(int bookId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session
				.createQuery("Delete from Book where bookId=" + bookId);
		query.executeUpdate();
	}

}
