package com.tiger.service;

import java.util.List;

import com.tiger.pojo.HomeDress;



public interface HomeDressService {
	public HomeDress getAdminById(int AdminId);
	public List<HomeDress> getAllAdmin();
    public void addAdmin(HomeDress record);
    public void updateAdmin(HomeDress record);
    public void delAdminById(int AdminId);
    public HomeDress getbyTel(String  tel);
}
