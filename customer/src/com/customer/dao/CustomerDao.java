package com.customer.dao;

import java.util.List;

import com.customer.vo.CustomerVo;

public interface CustomerDao {

	int customerRegister(CustomerVo customerVo);

	List<CustomerVo> customerView();

	CustomerVo edit(int id);

}
