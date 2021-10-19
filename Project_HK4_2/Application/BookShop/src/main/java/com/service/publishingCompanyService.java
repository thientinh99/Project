package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.publishingCompanyDAO;
import com.daoImp.publishingCompanyDAOImp;
import com.entity.PublishingCompany;

@Service
public class publishingCompanyService implements publishingCompanyDAO{
	@Autowired
	publishingCompanyDAOImp pubDAOImp;
	
	@Override
	public List<PublishingCompany> findAll(int start) {
		List<PublishingCompany> findAll = pubDAOImp.findAll(start);
		return findAll;
	}

	@Override
	public List<PublishingCompany> findById(int publishingId) {
		List<PublishingCompany> findById = pubDAOImp.findById(publishingId);
		return findById;
	}

	@Override
	public void save(PublishingCompany publishingCompany) {
		try {
			pubDAOImp.save(publishingCompany);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean update(int publishingId, String publishingName, String address, String description) {
		boolean check = pubDAOImp.update(publishingId, publishingName,address, description);
		return check;
	}

	@Override
	public void delete(int publishingId) {
		try {
			pubDAOImp.delete(publishingId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
