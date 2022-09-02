package com.customer.service;

import java.util.ArrayList;
import java.util.List;

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
	
	
	CustomerVo customerVo=new CustomerVo();
	CustomerBo customerBo=new CustomerBo();
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

	@Override
	public List<CustomerBo> customerView() {
		// TODO Auto-generated method stub
		List<CustomerBo> listBo=new ArrayList<CustomerBo>();
		List<CustomerVo> listVo=new ArrayList<CustomerVo>();
		listVo=customerDao.customerView();
		
		for(CustomerVo vo:listVo) {
			CustomerBo bo=new CustomerBo();
			bo.setId(vo.getId());
			bo.setName(vo.getName());
			bo.setEmail(vo.getEmail());
			bo.setPassword(vo.getPassword());
			bo.setAddress(vo.getAddress());
			bo.setMobile(vo.getMobile());
			listBo.add(bo);
		}
		return listBo;
	}

	@Override
	public CustomerBo edit(int id) {
		// TODO Auto-generated method stub
		
		customerVo=customerDao.edit(id);
		customerBo.setId(customerVo.getId());
		customerBo.setName(customerVo.getName());
		customerBo.setEmail(customerVo.getEmail());
		customerBo.setPassword(customerVo.getPassword());
		customerBo.setAddress(customerVo.getAddress());
		customerBo.setMobile(customerVo.getMobile());
		
		return customerBo;
	}

	@Override
	public int customerEdit(CustomerBo customerBo) {
		// TODO Auto-generated method stub
		customerVo.setId(customerBo.getId());
		customerVo.setName(customerBo.getName());
		customerVo.setEmail(customerBo.getEmail());
		customerVo.setPassword(customerBo.getPassword());
		customerVo.setAddress(customerBo.getAddress());
		customerVo.setMobile(customerBo.getMobile());
		
		int id=customerDao.customerEdit(customerVo);
		
		return id;
	}

	@Override
	public int customerDelete(int id) {
		// TODO Auto-generated method stub
		int custId=customerDao.customerDelete(id);
		return custId;
	}

}
