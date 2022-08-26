package com.customer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.customer.bo.CustomerBo;
import com.customer.dao.CustomerDao;
import com.customer.vo.CustomerVo;

@Service
@Transactional
public class CustomerServiceImp implements CustomerService {

	@Autowired
	CustomerDao customerDao;
	
	@Override
	public int customerRegister(CustomerBo customerBo) {
		// TODO Auto-generated method stub
		CustomerVo customerVo=new CustomerVo();
		
		customerVo.setName(customerBo.getName());
		customerVo.setEmail(customerBo.getEmail());
		customerVo.setPassword(customerBo.getPassword());
		customerVo.setAddress(customerBo.getAddress());
		customerVo.setMobile(customerBo.getMobile());
		
		int count=customerDao.customerRegister(customerVo);
		return count;
	}

}
