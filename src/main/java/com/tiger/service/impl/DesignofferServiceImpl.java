package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.DesignofferDao;
import com.tiger.pojo.Designoffer;
import com.tiger.service.DesignofferService;

@Service("DesignofferService")
public class DesignofferServiceImpl implements DesignofferService {
	@Resource
	private DesignofferDao DesignofferDao;
	
	@Override
	public Designoffer getDesignofferById(int designofferId) {
    	// TODO Auto-generated method stub
    	return this.DesignofferDao.selectByPrimaryKey(designofferId);
	}
	
	@Override
	public List<Designoffer> getAllDesignoffer() {
    	// TODO Auto-generated method stub
    	return this.DesignofferDao.selectAllDesignoffer();
	}
	
	
	@Override
	public void addDesignoffer(Designoffer record) {
    	// TODO Auto-generated method stub
    	this.DesignofferDao.insert(record);
	}
	
	@Override
	public void updateDesignoffer(Designoffer record) {
    	// TODO Auto-generated method stub
    	this.DesignofferDao.updateByPrimaryKeySelective(record);
	}
	
	
	@Override
	public void delDesignofferById(int designofferId) {
    	// TODO Auto-generated method stub
    	this.DesignofferDao.deleteByPrimaryKey(designofferId);
	}
	
}
