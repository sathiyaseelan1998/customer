package com.customer.service;

import java.util.List;

import com.customer.bo.CustomerBo;

public interface CustomerService {

	int customerRegister(CustomerBo customerBo);

	List<CustomerBo> customerView();

	CustomerBo edit(int id);

	int customerEdit(CustomerBo customerBo);

	int customerDelete(int id);

	CustomerBo customerLogin(String email, String password);

}
