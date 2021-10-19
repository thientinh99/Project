package com.dao;

import java.util.List;
import com.entity.PublishingCompany;

public interface publishingCompanyDAO {

	public List<PublishingCompany> findAll(int start);
	public List<PublishingCompany> findById(int publishingId);
	public void save(PublishingCompany publishingCompany);
	public boolean update(int publishingId,String publishingName,String address,String description);
	public void delete(int publishingId);
}
