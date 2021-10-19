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

import com.dao.loginDAO;
import com.entity.User;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class loginDAOImp implements loginDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	@Override
	public boolean checkLogin(String username, String password) {
		Session session = sessionFactory.getCurrentSession();
		Query hql = session.createQuery("from User where username='" + username + "' and password='" + password + "'");
		hql.getFirstResult();
		return true;
	}

	@Transactional
	@Override
	public List<User> findByUser(String username, String password) {
		Session session = sessionFactory.getCurrentSession();
		List<User> findAll = session.createQuery("from User where username='" + username + "' and password='"+password+"'")
				.getResultList();
		return findAll;
	}

	@Transactional
	@Override
	public void createuser(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
	}

}
