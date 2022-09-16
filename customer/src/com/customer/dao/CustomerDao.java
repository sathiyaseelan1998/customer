package com.customer.dao;

import java.util.List;

import com.customer.vo.CustomerVo;

public interface CustomerDao {

	int customerRegister(CustomerVo customerVo);

	List<CustomerVo> customerView();

	CustomerVo edit(int id);

	int customerEdit(CustomerVo customerVo);

	int customerDelete(int id);

	CustomerVo customerLogin(String email, String password);

	List<CustomerVo> profile(String email, String password);

	List<CustomerVo> search(String name, String email);

	boolean findEmail(String email);

}
