package com.tiger.pojo;

import java.io.Serializable;

public class UserInfo implements Serializable{
private Integer id;
private String name;
private String password;
private String tel;
private String company;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public UserInfo() {
	super();
}

public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getCompany() {
	return company;
}
public void setCompany(String company) {
	this.company = company;
}
@Override
public String toString() {
	return "UserInfo [id=" + id + ", name=" + name + ", password="
			+ password + ", tel=" + tel + "]";
}

}
