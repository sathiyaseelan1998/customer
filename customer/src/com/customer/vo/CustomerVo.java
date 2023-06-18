
  package com.customer.vo;
  
  import javax.persistence.Column; 
  import javax.persistence.Entity; 
  import javax.persistence.GeneratedValue; 
  import javax.persistence.Id; 
  import javax.persistence.Table;
  
  @Entity
  
  @Table(name="customer")
  public class CustomerVo {
  
  @Id
  @GeneratedValue
  @Column(name="id") 
  private int id;
  
  @Column(name="name")
  private String name; 
  
  @Column(name="email")
  private String email; 
  
  @Column(name="password")
  private String password;
  
  @Column(name="address")
  private String address; 
  
  @Column(name="mobile")
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
  
 }
 