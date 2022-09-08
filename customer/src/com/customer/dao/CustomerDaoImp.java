package com.customer.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.customer.vo.CustomerVo;

@Repository
public class CustomerDaoImp implements CustomerDao {
	
	@Autowired
	SessionFactory sf;
	
	CustomerVo customerVo=new CustomerVo();
	List<CustomerVo> list=new ArrayList<CustomerVo>();
	
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
		
		/*List<CustomerVo> list=new ArrayList<CustomerVo>();
		*/
		try {
			
			Session session=sf.getCurrentSession();
			Criteria cr=session.createCriteria(CustomerVo.class);
			list=cr.list();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return list;
	}

	@Override
	public CustomerVo edit(int id) {
		// TODO Auto-generated method stub
	
		try {
			
			Session session=sf.getCurrentSession();
			Criteria cr=session.createCriteria(CustomerVo.class);
			cr.add(Restrictions.eq("id", id));
			customerVo=(CustomerVo) cr.uniqueResult();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return customerVo;
	}

	@Override
	public int customerEdit(CustomerVo customerVo) {
		// TODO Auto-generated method stub
		
		int id=0;
		try {
			
			Session session=sf.getCurrentSession();
			session.update(customerVo);
			if(null!=customerVo) {
				
				id=customerVo.getId();
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return id;
	}

	@Override
	public int customerDelete(int id) {
		// TODO Auto-generated method stub
		int custId=0;
		customerVo.setId(id);
		try {
			
			Session session=sf.getCurrentSession();
			session.delete(customerVo);
			custId=customerVo.getId();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return custId;
	}

	@Override
	public CustomerVo customerLogin(String email, String password) {
		
		try {
			
			Session session=sf.getCurrentSession();
			Criteria cr=session.createCriteria(CustomerVo.class);
			cr.add(Restrictions.eq("email", email));
			cr.add(Restrictions.eq("password", password));
			customerVo=(CustomerVo) cr.uniqueResult();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return customerVo;		
	}

	@Override
	public List<CustomerVo> profile(String email, String password) {
		// TODO Auto-generated method stub
		try {
			
			Session session=sf.getCurrentSession();
			Criteria cr=session.createCriteria(CustomerVo.class);
			
			if(email.equals("dhoni@gmail.com")){
				
				list=cr.list();
			}
			else{
			
			cr.add(Restrictions.eq("email", email));
			cr.add(Restrictions.eq("password", password));
			
			customerVo=(CustomerVo) cr.uniqueResult();
			list.add(customerVo);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return list;
	}

}
