package com.customer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.customer.bo.CustomerBo;
import com.customer.dao.CustomerDao;
import com.customer.vo.CustomerVo;

@Service
public class CustomerServiceImp implements CustomerService {

	@Autowired
	CustomerDao customerDao;
	
	@Override
	public int customerRegister(CustomerBo customerBo) {
		// TODO Auto-generated method stub
		CustomerVo customerVo=new CustomerVo();
		int count=customerDao.customerRegister(customerVo);
		return 0;
	}

}
