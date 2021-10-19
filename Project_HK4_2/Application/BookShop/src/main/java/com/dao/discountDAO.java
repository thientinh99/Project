package com.dao;

import java.util.List;
import com.entity.Discount;

public interface discountDAO {

	public List<Discount> findAll(int start);
	public List<Discount> findById(int discountId);
	public void save(Discount discount);
	public boolean update(int discountId,String name,boolean status);
	public void delete(int discountId);
}
