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

import com.dao.authorDAO;
import com.entity.Author;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class authorDAOImp implements authorDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public List<Author> findAll(int start) {
		Session session = sessionFactory.getCurrentSession();
		List<Author> findAll = new ArrayList<>();
		if (start < 0) {
			findAll = session.createQuery("from Author").getResultList();
		} else {
			findAll = session.createQuery("from Author").setFirstResult(start).setMaxResults(4).getResultList();
		}
		return findAll;
	}
	@Transactional
	@Override
	public void save(Author author) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.save(author);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Transactional
	@Override
	public List<Author> findById(int authorId) {
		Session session = sessionFactory.getCurrentSession();
		List<Author> findAll = new ArrayList<>();
		findAll = session.createQuery("from Author where authorId="+authorId).getResultList();
		return findAll;
	}
	@Transactional
	@Override
	public boolean update(int authorId,String name,String pseudonym,int age,String domicile) {
		Session session = sessionFactory.getCurrentSession();
		Query hql = (Query) session.createQuery(
				"update Author set name='" + name + "',pseudonym='"+pseudonym+"',age='"+age+"',domicile='"+domicile+"' where authorId=" + authorId);
			hql.executeUpdate();
			return true;
	}
	@Transactional
	@Override
	public void delete(int authorId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session
				.createQuery("Delete from Author where authorId=" + authorId);
		query.executeUpdate();
		
	}

}
