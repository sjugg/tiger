package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.AcmedecorationDao;
import com.tiger.pojo.Acmedecoration;
import com.tiger.service.AcmedecorationService;

@Service("AcmedecorationService")
public class AcmedecorationServiceImpl implements AcmedecorationService {
	@Resource
	private AcmedecorationDao AcmedecorationDao;
	
	@Override
	public Acmedecoration getAcmedecorationById(int acmedecorationId) {
    	// TODO Auto-generated method stub
    	return this.AcmedecorationDao.selectByPrimaryKey(acmedecorationId);
	}
	
	@Override
	public List<Acmedecoration> getAcmedecorationDetailById(int acmedecorationId) {
    	// TODO Auto-generated method stub
    	return this.AcmedecorationDao.selectAcmedecorationDetailById(acmedecorationId);
	}
	
	@Override
	public List<Acmedecoration> getAllAcmedecoration() {
    	// TODO Auto-generated method stub
    	return this.AcmedecorationDao.selectAllAcmedecoration();
	}
	
	
	
	
	@Override
	public void addAcmedecoration(Acmedecoration record) {
    	// TODO Auto-generated method stub
    	this.AcmedecorationDao.insert(record);
	}
	
	@Override
	public void updateAcmedecoration(Acmedecoration record) {
    	// TODO Auto-generated method stub
    	this.AcmedecorationDao.updateByPrimaryKeySelective(record);
	}
	
	
	@Override
	public void delAcmedecorationById(int acmedecorationId) {
    	// TODO Auto-generated method stub
    	this.AcmedecorationDao.deleteByPrimaryKey(acmedecorationId);
	}
	
}
