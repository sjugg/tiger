package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.HousestyleDao;
import com.tiger.pojo.Housestyle;
import com.tiger.service.HousestyleService;

@Service("HousestyleService")
public class HousestyleServiceImpl implements HousestyleService {
	@Resource
	private HousestyleDao HousestyleDao;
	
	@Override
	public Housestyle getHousestyleById(int HousestyleId) {
    	// TODO Auto-generated method stub
    	return this.HousestyleDao.selectByPrimaryKey(HousestyleId);
	}
	
	@Override
	public List<Housestyle> getAllHousestyle() {
    	// TODO Auto-generated method stub
    	return this.HousestyleDao.selectAllHousestyle();
	}
	
	
	@Override
	public void addHousestyle(Housestyle record) {
    	// TODO Auto-generated method stub
    	this.HousestyleDao.insert(record);
	}
	
	@Override
	public void updateHousestyle(Housestyle record) {
    	// TODO Auto-generated method stub
    	this.HousestyleDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void delHousestyleById(int HousestyleId) {
    	// TODO Auto-generated method stub
    	this.HousestyleDao.deleteByPrimaryKey(HousestyleId);
	}
	
}
