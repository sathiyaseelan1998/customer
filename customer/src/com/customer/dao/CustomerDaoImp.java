package com.customer.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.customer.vo.CustomerVo;

@Repository
public class CustomerDaoImp implements CustomerDao {
	
	@Autowired
	SessionFactory sf;
	
	@Override
	public int customerRegister(CustomerVo customerVo) {
		// TODO Auto-generated method stub
		
		int custId=0;
		try {
			
			Session session=sf.getCurrentSession();
			custId=(int) session.save(customerVo);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return custId;
	}

	@Override
	public List<CustomerVo> customerView() {
		// TODO Auto-generated method stub
		
		try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
