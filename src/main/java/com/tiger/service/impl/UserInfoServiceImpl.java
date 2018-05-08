package com.tiger.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tiger.dao.AdminDao;
import com.tiger.dao.UserInfoDao;
import com.tiger.pojo.Admin;
import com.tiger.pojo.UserInfo;
import com.tiger.service.AdminService;
import com.tiger.service.UserInfoService;

@Service("UserInfoService")
public class UserInfoServiceImpl implements UserInfoService {
	@Resource
	private UserInfoDao userInfoDao;
	@Override
	public UserInfo getAdminById(int AdminId) {
    	// TODO Auto-generated method stub
    	return this.userInfoDao.selectByPrimaryKey(AdminId);
	}
	
	@Override
	public List<UserInfo> getAllAdmin() {
    	// TODO Auto-generated method stub
    	return this.userInfoDao.selectAllAdmin();
	}
	
	@Override
	public void addAdmin(UserInfo record) {
    	// TODO Auto-generated method stub
    	this.userInfoDao.insert(record);
	}
	
	@Override
	public void updateAdmin(UserInfo record) {
    	// TODO Auto-generated method stub
    	this.userInfoDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void delAdminById(int AdminId) {
    	// TODO Auto-generated method stub
    	this.userInfoDao.deleteByPrimaryKey(AdminId);
	}

	@Override
	public UserInfo getByPdAndTel(UserInfo record) {
		return userInfoDao.getByPdAndTel(record);
	}
	
	@Override
	public UserInfo getByTel(UserInfo record) {
		return userInfoDao.getByTel(record);
	}
	
}
