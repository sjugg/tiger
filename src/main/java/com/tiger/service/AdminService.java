package com.tiger.service;

import java.util.List;

import com.tiger.pojo.Admin;

public interface AdminService {
	public Admin getAdminById(int AdminId);
	public List<Admin> getAllAdmin();
    public void addAdmin(Admin record);
    public void updateAdmin(Admin record);
    public void delAdminById(int AdminId);
}
