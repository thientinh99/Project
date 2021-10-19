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

import com.dao.publishingCompanyDAO;
import com.entity.PublishingCompany;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class publishingCompanyDAOImp implements publishingCompanyDAO{
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public List<PublishingCompany> findAll(int start) {
		Session session = sessionFactory.getCurrentSession();
		
		List<PublishingCompany> findAll = new ArrayList<>();
		
		if (start < 0) {
			findAll = session.createQuery("from PublishingCompany").getResultList();
		} else {
			findAll = session.createQuery("from PublishingCompany").setFirstResult(start).setMaxResults(4).getResultList();
		}
		return findAll;
	}

	@Transactional
	@Override
	public List<PublishingCompany> findById(int publishingId) {
		Session session = sessionFactory.getCurrentSession();
		List<PublishingCompany> findAll = new ArrayList<>();
		findAll = session.createQuery("from PublishingCompany where publishingId="+publishingId).getResultList();
		return findAll;
	}

	@Transactional
	@Override
	public void save(PublishingCompany publishingCompany) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.save(publishingCompany);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Transactional
	@Override
	public boolean update(int publishingId, String publishingName, String address, String description) {
		Session session = sessionFactory.getCurrentSession();
		Query hql = (Query) session.createQuery(
				"update PublishingCompany set publishing_name='" + publishingName + "',address='"+address+"',description='"+description+"' where publishingId=" + publishingId);
			hql.executeUpdate();
			
		return true;
	}

	@Transactional
	@Override
	public void delete(int publishingId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session
				.createQuery("Delete from PublishingCompany where publishingId=" + publishingId);
		query.executeUpdate();
	}

}
