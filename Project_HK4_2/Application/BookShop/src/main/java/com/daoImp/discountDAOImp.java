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

import com.dao.discountDAO;
import com.entity.Category;
import com.entity.Discount;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class discountDAOImp implements discountDAO{
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public List<Discount> findAll(int start) {
Session session = sessionFactory.getCurrentSession();
		
		List<Discount> findAll = new ArrayList<>();
		
		if (start < 0) {
			findAll = session.createQuery("from Discount").getResultList();
		} else {
			findAll = session.createQuery("from Discount").setFirstResult(start).setMaxResults(4).getResultList();
		}
		return findAll;
	}

	@Transactional
	@Override
	public List<Discount> findById(int discountId) {
		Session session = sessionFactory.getCurrentSession();
		List<Discount> findAll = new ArrayList<>();
		findAll = session.createQuery("from Discount where discountId="+discountId).getResultList();
		return findAll;
	}

	@Transactional
	@Override
	public void save(Discount discount) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.save(discount);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Transactional
	@Override
	public boolean update(int discountId, String name, boolean status) {
		Session session = sessionFactory.getCurrentSession();
		Query hql = (Query) session.createQuery(
				"update Discount set name='" + name + "',status='"+status+"' where discountId=" + discountId);
			hql.executeUpdate();
			
		return true;
	}

	@Transactional
	@Override
	public void delete(int discountId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session
				.createQuery("Delete from Discount where discountId=" + discountId);
		query.executeUpdate();
		
	}

}
