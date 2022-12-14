package com.customer.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	
	
/*	List<CustomerBo> list=new ArrayList<CustomerBo>();
*//*	CustomerBo customerBo=new CustomerBo();
*/	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register(Model model)
	{
		model.addAttribute("customerBo",new CustomerBo());
		return "customerRegister";
	}
	
	@RequestMapping(value = "customerRegister",method = RequestMethod.POST)
	public String customerRegister(@Valid @ModelAttribute("customerBo")CustomerBo customerBo, BindingResult br,Model model) 
	{
		
		if(br.hasErrors()){
			return "customerRegister";
		}
		if(customerService.findEmail(customerBo.getEmail())){
			//br.rejectValue("email", "email already exists");
			model.addAttribute("msg", "email already exists");

			return "customerRegister";
		}
		if(customerService.findMobile(customerBo.getMobile())){
			
			model.addAttribute("msg", "mobile number already exists");
			return "customerRegister";
		}
		int count=customerService.customerRegister(customerBo);
		if(count>0) {
			model.addAttribute("msg", "customer details save successfully");
			model.addAttribute("customerBo",new CustomerBo());
			return "login";
		}
		else {
			model.addAttribute("msg", "customer details save not successfully");
			model.addAttribute("customerBo",new CustomerBo());
			return "customerRegister";

		}
		
	}
	
	@RequestMapping(value="/customerView",method=RequestMethod.GET)
	public String customerView(Model model) {
		
		List<CustomerBo> list=new ArrayList<CustomerBo>();

		
		list=customerService.customerView();
		if(null!=list) {
			
			model.addAttribute("list", list);
			model.addAttribute("customerBo",new CustomerBo());

		}
		
		
		return "customerView";
		
		
	}
	@RequestMapping(value = "/edit",method = RequestMethod.GET)
	public String edit(@RequestParam("id")int id,Model model) {
		CustomerBo customerBo=new CustomerBo();

		customerBo=customerService.edit(id);
		model.addAttribute("customerBo", customerBo);
		
		return "customerEdit";
	
	}
	@RequestMapping(value = "/customerEdit",method=RequestMethod.POST)
	public String customerEdit(@ModelAttribute("customerBo")CustomerBo customerBo,Model model) {
		
		int id=customerService.customerEdit(customerBo);
		if(id>0) {
			
			return "redirect:/profile";
		}
		else {
			return "customerEdit";
			
		}	
	}
	
//	@RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
//	public String customerDelete(@PathVariable(value="id")int id,Model model) {
//		
//		int custId=customerService.customerDelete(id);
//		
//		if(custId>0) {
//			model.addAttribute("msg", "customer details deleted");
//			model.addAttribute("customerBo", new CustomerBo());
//
//			return "redirect:/customerView";
//			
//		}
//		else {
//			model.addAttribute("msg", "customer details does not deleted");
//			return "customerView";
//			
//		}	
//	
//	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(Model model){
		
		
		model.addAttribute("customerBo", new CustomerBo());
		
		return "login";
		
	}
	@RequestMapping(value="/customerLogin",method=RequestMethod.POST)
	public String customerLogin(@RequestParam("email") String email,@RequestParam("password") String password,HttpServletRequest request,Model model){
		CustomerBo customerBo=new CustomerBo();
		customerBo=customerService.customerLogin(email,password);
		if(null!=customerBo && customerBo.getId()>0){
			
			HttpSession session=request.getSession();
			session.setAttribute("email", customerBo.getEmail());
			session.setAttribute("password", customerBo.getPassword());
			
			

			model.addAttribute("msg", "login success");
			return "home";
		}
		else{
			model.addAttribute("customerBo", new CustomerBo());
			model.addAttribute("msg", "login invalid");

		}
	
		return "login";
	}
	@RequestMapping(value="/profile",method=RequestMethod.GET)
	public String profile(HttpServletRequest request,Model model){
		List<CustomerBo> list=new ArrayList<CustomerBo>();

		HttpSession session=request.getSession();
		String email=(String) session.getAttribute("email");
		String password=(String) session.getAttribute("password");
		list=customerService.profile(email,password);
		if(null!=list) {
			model.addAttribute("customerBo", new CustomerBo());
			model.addAttribute("list", list);

		}
		
		return "customerView";
		
	}
	
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public String search(@RequestParam("name")String name,@RequestParam("email")String email,Model model){
		
		List<CustomerBo> list=new ArrayList<CustomerBo>();

		list=customerService.search(name,email);
		if(null!=list){
			
			model.addAttribute("list", list);
			model.addAttribute("customerBo", new CustomerBo());
		}
		return "customerView";

	}
	
	@RequestMapping(value = "/delete",method = RequestMethod.GET)
	public String customerDelete(@RequestParam("id")int id,Model model) {
		
		int custId=customerService.customerDelete(id);
		
		if(custId>0) {
			model.addAttribute("msg", "customer details deleted");
			model.addAttribute("customerBo", new CustomerBo());

			return "redirect:/customerView";
			
		}
		else {
			model.addAttribute("msg", "customer details does not deleted");
			return "customerView";
			
		}	
	
	}
	
}
