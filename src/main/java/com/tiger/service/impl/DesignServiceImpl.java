package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.DesignDao;
import com.tiger.pojo.Design;
import com.tiger.service.DesignService;

@Service("DesignService")
public class DesignServiceImpl implements DesignService {
	@Resource
	private DesignDao DesignDao;
	
	@Override
	public Design getDesignById(int designId) {
    	// TODO Auto-generated method stub
    	return this.DesignDao.selectByPrimaryKey(designId);
	}
	
	@Override
	public List<Design> getAllDesign() {
    	// TODO Auto-generated method stub
    	return this.DesignDao.selectAllDesign();
	}
	
	
	@Override
	public void addDesign(Design record) {
    	// TODO Auto-generated method stub
    	this.DesignDao.insert(record);
	}
	
	@Override
	public void updateDesign(Design record) {
    	// TODO Auto-generated method stub
    	this.DesignDao.updateByPrimaryKeySelective(record);
	}
	
	
	@Override
	public void delDesignById(int designId) {
    	// TODO Auto-generated method stub
    	this.DesignDao.deleteByPrimaryKey(designId);
	}
	
}
