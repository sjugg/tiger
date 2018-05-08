package com.tiger.service.impl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.AdminDao;
import com.tiger.pojo.Admin;
import com.tiger.service.AdminService;

@Service("AdminService")
public class AdminServiceImpl implements AdminService {
	@Resource
	private AdminDao AdminDao;
	@Override
	public Admin getAdminById(int AdminId) {
    	// TODO Auto-generated method stub
    	return this.AdminDao.selectByPrimaryKey(AdminId);
	}
	
	@Override
	public List<Admin> getAllAdmin() {
    	// TODO Auto-generated method stub
    	return this.AdminDao.selectAllAdmin();
	}
	
	@Override
	public void addAdmin(Admin record) {
    	// TODO Auto-generated method stub
    	this.AdminDao.insert(record);
	}
	
	@Override
	public void updateAdmin(Admin record) {
    	// TODO Auto-generated method stub
    	this.AdminDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void delAdminById(int AdminId) {
    	// TODO Auto-generated method stub
    	this.AdminDao.deleteByPrimaryKey(AdminId);
	}
	
}
