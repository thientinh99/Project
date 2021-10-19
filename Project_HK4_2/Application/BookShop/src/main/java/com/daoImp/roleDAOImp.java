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

import com.dao.roleDAO;
import com.entity.Author;
import com.entity.Role;
import com.entity.User;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class roleDAOImp implements roleDAO{
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	@Override
	public List<Role> findAll(int start) {
		Session session = sessionFactory.getCurrentSession();
		List<Role> findAll = new ArrayList<>();
		if (start < 0) {
			findAll = session.createQuery("from Role").getResultList();
		} else {
			findAll = session.createQuery("from Role").setFirstResult(start).setMaxResults(4).getResultList();
		}
		return findAll;
	}

	@Override
	public List<Role> findById(int roleId) {
		Session session = sessionFactory.getCurrentSession();
		List<Role> findAll = new ArrayList<>();
		findAll = session.createQuery("from Role where roleId="+roleId).getResultList();
		return findAll;
	}

	@Override
	public void save(Role role) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.save(role);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean update(int roleId, String name, boolean status) {
		Session session = sessionFactory.getCurrentSession();
		Query hql = (Query) session.createQuery(
				"update Role set name='" + name + "',status='"+status+"' where roleId=" + roleId);
			hql.executeUpdate();
			return true;
	}

	@Override
	public void delete(int roleId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session
				.createQuery("Delete from Role where roleId=" + roleId);
		query.executeUpdate();
	}
}
