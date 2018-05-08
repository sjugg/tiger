package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.DesignbespeakDao;
import com.tiger.pojo.Designbespeak;
import com.tiger.service.DesignbespeakService;

@Service("DesignbespeakService")
public class DesignbespeakServiceImpl implements DesignbespeakService {
	@Resource
	private DesignbespeakDao DesignbespeakDao;
	
	@Override
	public Designbespeak getDesignbespeakById(int designbespeakId) {
    	// TODO Auto-generated method stub
    	return this.DesignbespeakDao.selectByPrimaryKey(designbespeakId);
	}
	
	@Override
	public List<Designbespeak> getAllDesignbespeak() {
    	// TODO Auto-generated method stub
    	return this.DesignbespeakDao.selectAllDesignbespeak();
	}
	
	
	@Override
	public void addDesignbespeak(Designbespeak record) {
    	// TODO Auto-generated method stub
    	this.DesignbespeakDao.insert(record);
	}
	
	@Override
	public void updateDesignbespeak(Designbespeak record) {
    	// TODO Auto-generated method stub
    	this.DesignbespeakDao.updateByPrimaryKeySelective(record);
	}
	
	
	@Override
	public void delDesignbespeakById(int designbespeakId) {
    	// TODO Auto-generated method stub
    	this.DesignbespeakDao.deleteByPrimaryKey(designbespeakId);
	}
	
}
