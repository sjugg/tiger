package com.tiger.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tiger.dao.HomeDressDao;
import com.tiger.pojo.HomeDress;
import com.tiger.service.HomeDressService;

@Service("HomeDressService")
public class HomeDressServiceImpl implements HomeDressService {
	@Resource
	private HomeDressDao HomeDressDao;
	@Override
	public HomeDress getAdminById(int AdminId) {
    	// TODO Auto-generated method stub
    	return this.HomeDressDao.selectByPrimaryKey(AdminId);
	}
	
	@Override
	public List<HomeDress> getAllAdmin() {
    	// TODO Auto-generated method stub
    	return this.HomeDressDao.selectAllAdmin();
	}
	
	@Override
	public void addAdmin(HomeDress record) {
    	// TODO Auto-generated method stub
    	this.HomeDressDao.insert(record);
	}
	
	@Override
	public void updateAdmin(HomeDress record) {
    	// TODO Auto-generated method stub
    	this.HomeDressDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void delAdminById(int AdminId) {
    	// TODO Auto-generated method stub
    	this.HomeDressDao.deleteByPrimaryKey(AdminId);
	}

	@Override
	public HomeDress getbyTel(String tel) {
		return this.HomeDressDao.selectByTel(tel);
	}
}
