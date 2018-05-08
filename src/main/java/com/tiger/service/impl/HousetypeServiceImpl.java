package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.HousetypeDao;
import com.tiger.pojo.Housetype;
import com.tiger.service.HousetypeService;

@Service("HousetypeService")
public class HousetypeServiceImpl implements HousetypeService {
	@Resource
	private HousetypeDao HousetypeDao;
	
	@Override
	public Housetype getHousetypeById(int HousetypeId) {
    	// TODO Auto-generated method stub
    	return this.HousetypeDao.selectByPrimaryKey(HousetypeId);
	}
	
	@Override
	public List<Housetype> getAllHousetype() {
    	// TODO Auto-generated method stub
    	return this.HousetypeDao.selectAllHousetype();
	}
	
	
	@Override
	public void addHousetype(Housetype record) {
    	// TODO Auto-generated method stub
    	this.HousetypeDao.insert(record);
	}
	
	@Override
	public void updateHousetype(Housetype record) {
    	// TODO Auto-generated method stub
    	this.HousetypeDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void delHousetypeById(int HousetypeId) {
    	// TODO Auto-generated method stub
    	this.HousetypeDao.deleteByPrimaryKey(HousetypeId);
	}
	
	
}
