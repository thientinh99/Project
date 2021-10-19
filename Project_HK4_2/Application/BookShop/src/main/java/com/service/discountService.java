package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.discountDAO;
import com.daoImp.discountDAOImp;
import com.entity.Discount;

@Service
public class discountService implements discountDAO{
	@Autowired
	discountDAOImp disDAOImp;
	
	@Override
	public List<Discount> findAll(int start) {
		List<Discount> findAll = disDAOImp.findAll(start);
		return findAll;
	}

	@Override
	public List<Discount> findById(int discountId) {
		List<Discount> findById = disDAOImp.findById(discountId);
		return findById;
	}

	@Override
	public void save(Discount discount) {
		try {
			disDAOImp.save(discount);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public boolean update(int discountId, String name, boolean status) {
		boolean check = disDAOImp.update(discountId, name, status);
		return check;
	}

	@Override
	public void delete(int discountId) {
		try {
			disDAOImp.delete(discountId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
