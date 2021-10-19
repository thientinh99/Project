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

import com.dao.userDAO;
import com.entity.Author;
import com.entity.User;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class userDAOImp implements userDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	@Override
	public List<User> findAll(int start) {
		Session session = sessionFactory.getCurrentSession();
		List<User> findAll = new ArrayList<>();
		if (start < 0) {
			findAll = session.createQuery("from User").getResultList();
		} else {
			findAll = session.createQuery("from User").setFirstResult(start).setMaxResults(4).getResultList();
		}
		return findAll;
	}

	@Transactional
	@Override
	public List<User> findById(int userId) {
		Session session = sessionFactory.getCurrentSession();
		List<User> findById = new ArrayList<>();
		findById = session.createQuery("from User where userId=" + userId).getResultList();
		return findById;
	}

	@Transactional
	@Override
	public void save(User user) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.save(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Transactional
	@Override
	public boolean update(int userId, String username, String name, int age, String address,boolean gender,int roleId) {
		Session session = sessionFactory.getCurrentSession();
		Query hql = (Query) session.createQuery("update User set username='" + username + "',name='" + name + "' ,age="
				+ age + " ,address='" + address + "' ,roleId=" + roleId + " ,gender="+gender+" where userId=" + userId);
		hql.executeUpdate();
		return true;
	}

	@Transactional
	@Override
	public void delete(int userId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("Delete from User where userId=" + userId);
		query.executeUpdate();
	}

	@Transactional
	@Override
	public List<User> findByAllRole() {
		Session session = sessionFactory.getCurrentSession();
		List<User> findAll = session.createQuery("from User").getResultList();
		return findAll;
	}

	@Override
	@Transactional
	public boolean register(User user) {
		Session session = sessionFactory.getCurrentSession();
		
		int userId = (int)session.save(user);
		
		if(userId > 0) {
			return true;
		}else {
			return false;
		}
	}

}
