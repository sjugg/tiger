package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.HouseacreageDao;
import com.tiger.pojo.Houseacreage;
import com.tiger.service.HouseacreageService;

@Service("HouseacreageService")
public class HouseacreageServiceImpl implements HouseacreageService {
	@Resource
	private HouseacreageDao HouseacreageDao;
	
	@Override
	public Houseacreage getHouseacreageById(int HouseacreageId) {
    	// TODO Auto-generated method stub
    	return this.HouseacreageDao.selectByPrimaryKey(HouseacreageId);
	}
	@Override
	public List<Houseacreage> getAllHouseacreage() {
    	// TODO Auto-generated method stub
    	return this.HouseacreageDao.selectAllHouseacreage();
	}
	
	@Override
	public void addHouseacreage(Houseacreage record) {
    	// TODO Auto-generated method stub
    	this.HouseacreageDao.insert(record);
	}
	
	@Override
	public void updateHouseacreage(Houseacreage record) {
    	// TODO Auto-generated method stub
    	this.HouseacreageDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void delHouseacreageById(int HouseacreageId) {
    	// TODO Auto-generated method stub
    	this.HouseacreageDao.deleteByPrimaryKey(HouseacreageId);
	}
	
}
