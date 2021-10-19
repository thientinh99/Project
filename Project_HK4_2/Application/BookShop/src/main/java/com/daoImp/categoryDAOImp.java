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

import com.dao.categoryDAO;
import com.entity.Author;
import com.entity.Category;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class categoryDAOImp implements categoryDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	@Override
	public List<Category> findAll(int start) {

		Session session = sessionFactory.getCurrentSession();

		List<Category> findAll = new ArrayList<>();

		if (start < 0) {
			findAll = session.createQuery("from Category").getResultList();
		} else {
			findAll = session.createQuery("from Category").setFirstResult(start).setMaxResults(4).getResultList();
		}
		return findAll;
	}

	@Transactional
	@Override
	public List<Category> findById(int categoryId) {
		Session session = sessionFactory.getCurrentSession();
		List<Category> findAll = new ArrayList<>();
		findAll = session.createQuery("from Category where categoryId=" + categoryId).getResultList();
		return findAll;
	}

	@Transactional
	@Override
	public void save(Category category) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.save(category);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Transactional
	@Override
	public boolean update(int categoryId, String name, int status, String description) {
		Session session = sessionFactory.getCurrentSession();
		Query hql = (Query) session.createQuery("update Category set name='" + name + "',status='" + status
				+ "',description='" + description + "'where categoryId=" + categoryId);
		hql.executeUpdate();
		return true;
	}

	@Transactional
	@Override
	public void delete(int categoryId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("Delete from Category where categoryId=" + categoryId);
		query.executeUpdate();

	}

}
