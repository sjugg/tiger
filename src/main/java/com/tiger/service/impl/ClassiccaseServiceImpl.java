package com.tiger.service.impl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.ClassiccaseDao;
import com.tiger.pojo.Classiccase;
import com.tiger.service.ClassiccaseService;

@Service("ClassiccaseService")
public class ClassiccaseServiceImpl implements ClassiccaseService {
	@Resource
	private ClassiccaseDao classiccaseDao;
	@Override
	public Classiccase getClassiccaseById(int ClassiccaseId) {
    	// TODO Auto-generated method stub
    	return this.classiccaseDao.selectByPrimaryKey(ClassiccaseId);
	}
	
	@Override
	public List<Classiccase> getAllClassiccase() {
    	// TODO Auto-generated method stub
    	return this.classiccaseDao.selectAllClassiccase();
	}
	
	@Override
	public List<Classiccase> getAllClassiccaseIndex() {
    	// TODO Auto-generated method stub
    	return this.classiccaseDao.selectAllClassiccaseIndex();
	}
	
	@Override
	public void addClassiccase(Classiccase record) {
    	// TODO Auto-generated method stub
    	this.classiccaseDao.insert(record);
	}
	
	@Override
	public void updateClassiccase(Classiccase record) {
    	// TODO Auto-generated method stub
    	this.classiccaseDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void updateClassiccaseById(int classiccaseId) {
    	// TODO Auto-generated method stub
    	this.classiccaseDao.updateByClassiccaseId(classiccaseId);
	}
	
	@Override
	public void delClassiccaseById(int ClassiccaseId) {
    	// TODO Auto-generated method stub
    	this.classiccaseDao.deleteByPrimaryKey(ClassiccaseId);
	}
	
	@Override
	public List<Classiccase> selectClassiccaseById(int classiccaseId) {
    	// TODO Auto-generated method stub
    	return this.classiccaseDao.selectByClassiccaseId(classiccaseId);
	}
	@Override
	public List<Classiccase> getClassiccaseByAttribute(String classiccaseAcreage,String classiccaseHousetype,String classiccaseStyle) {
    	// TODO Auto-generated method stub
    	return this.classiccaseDao.selectClassiccaseByAttribute(classiccaseAcreage,classiccaseHousetype,classiccaseStyle);
	}
	
}
