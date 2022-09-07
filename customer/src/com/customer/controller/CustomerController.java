package com.customer.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.customer.bo.CustomerBo;
import com.customer.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;
	
	
	List<CustomerBo> list=new ArrayList<CustomerBo>();
	CustomerBo customerBo=new CustomerBo();
	
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
		return "redirect:/customerView";
		
	}
	
	@RequestMapping(value="/customerView",method=RequestMethod.GET)
	public String customerView(Model model) {
		
		
		
		list=customerService.customerView();
		if(null!=list) {
			
			model.addAttribute("list", list);
		}
		
		
		return "customerView";
		
		
	}
	@RequestMapping(value = "/edit",method = RequestMethod.GET)
	public String edit(@RequestParam("id")int id,Model model) {
		
		customerBo=customerService.edit(id);
		model.addAttribute("customerBo", customerBo);
		
		return "customerEdit";
	
	}
	@RequestMapping(value = "/customerEdit",method=RequestMethod.POST)
	public String customerEdit(@ModelAttribute("customerBo")CustomerBo customerBo,Model model) {
		
		int id=customerService.customerEdit(customerBo);
		if(id>0) {
			
			return "redirect:/customerView";
		}
		else {
			return "customerEdit";
			
		}	
	}
	
	@RequestMapping(value = "/delete/{custId}",method = RequestMethod.GET)
	public String customerDelete(@PathVariable(value="custId")int id,Model model) {
		
		int custId=customerService.customerDelete(id);
		
		if(custId>0) {
			model.addAttribute("msg", "customer details deleted");

			return "redirect:/customerView";
			
		}
		else {
			model.addAttribute("msg", "customer details does not deleted");
			return "customerView";
			
		}	
	
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(Model model){
		
		
		model.addAttribute("customerBo", new CustomerBo());
		
		return "login";
		
	}
	@RequestMapping(value="/customerLogin",method=RequestMethod.POST)
	public String customerLogin(@RequestParam("email") String email,@RequestParam("password") String password,Model model){
		customerBo=null;
		
		//customerBo=customerService.customerLogin(email,password);
		return "customerView";
		
	}
	
}
