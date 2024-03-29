package com.customer.bo;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class CustomerBo {

	private int id;
	@NotEmpty
	@Pattern(regexp = "^[a-zA-Z\\s]*$", message = "Name Should be a Character")
	@Size(min = 3, max = 20)
	private String name;
	
	@NotEmpty
	@Pattern(regexp = ".+@.+\\.[a-z]+", message = "Invalid Email Format")
	@Email
	private String email;
	
	@NotEmpty
	@Size(min = 4, max = 8,message = "Password Size Must be 4 to 8")
	private String password;
	
	@NotNull
	@NotEmpty
	private String address;
	
	@NotNull
	@Range(min = 1111111111,message = "Mobile Number must be a 10 Digits")
	private long mobile;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

//
}
