package com.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.customer.bo.CustomerBo;
import com.customer.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;
	//CustomerBo customerBo=new CustomerBo();
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register(Model model)
	{
		model.addAttribute("customerBo",new CustomerBo());
		return "customerRegister";
	}
	
	@RequestMapping(value = "customerRegister",method = RequestMethod.POST)
	public String customerRegister(@ModelAttribute("customerBo") CustomerBo customerBo,Model model )
	{
		
		int count=customerService.customerRegister(customerBo);
		if(count>0) {
			model.addAttribute("msg", "customer details save successfully");
		}
		else {
			model.addAttribute("msg", "customer details save not successfully");
		}
		return "customerRegister";
		
	}
}
