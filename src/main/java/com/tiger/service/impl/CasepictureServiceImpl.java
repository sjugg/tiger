package com.tiger.service.impl;


import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.CasepictureDao;
import com.tiger.pojo.Casepicture;
import com.tiger.service.CasepictureService;

@Service("CasepictureService")
public class CasepictureServiceImpl implements CasepictureService {
	@Resource
	private CasepictureDao casepictureDao;
	
	@Override
	public Casepicture getCasepictureById(int CasepictureId) {
    	// TODO Auto-generated method stub
    	return this.casepictureDao.selectByPrimaryKey(CasepictureId);
	}
	
	
	@Override
	public void addCasepicture(Casepicture record) {
    	// TODO Auto-generated method stub
    	this.casepictureDao.insert(record);
	}
	
	@Override
	public void updateCasepicture(Casepicture record) {
    	// TODO Auto-generated method stub
    	this.casepictureDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void delCasepictureById(int CasepictureId) {
    	// TODO Auto-generated method stub
    	this.casepictureDao.deleteByPrimaryKey(CasepictureId);
	}
	
	@Override
	public void delCasepuictureByClassiccaseId(int classiccaseId) {
    	// TODO Auto-generated method stub
    	this.casepictureDao.deleteClassiccaseByClassiccaseId(classiccaseId);
	}
	
}
