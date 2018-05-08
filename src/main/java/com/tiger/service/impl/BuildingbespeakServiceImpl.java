package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.BuildingbespeakDao;
import com.tiger.pojo.Buildingbespeak;
import com.tiger.service.BuildingbespeakService;

@Service("BuildingbespeakService")
public class BuildingbespeakServiceImpl implements BuildingbespeakService {
	@Resource
	private BuildingbespeakDao BuildingbespeakDao;
	
	@Override
	public Buildingbespeak getBuildingbespeakById(int buildingbespeakId) {
    	// TODO Auto-generated method stub
    	return this.BuildingbespeakDao.selectByPrimaryKey(buildingbespeakId);
	}
	
	@Override
	public List<Buildingbespeak> getAllBuildingbespeak() {
    	// TODO Auto-generated method stub
    	return this.BuildingbespeakDao.selectAllBuildingbespeak();
	}
	
	
	@Override
	public void addBuildingbespeak(Buildingbespeak record) {
    	// TODO Auto-generated method stub
    	this.BuildingbespeakDao.insert(record);
	}
	
	@Override
	public void updateBuildingbespeak(Buildingbespeak record) {
    	// TODO Auto-generated method stub
    	this.BuildingbespeakDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void updateBuildingbespeakStateById(int buildingbespeakId) {
    	// TODO Auto-generated method stub
    	this.BuildingbespeakDao.updateBuildingbespeakStateById(buildingbespeakId);
	}
	
	@Override
	public void delBuildingbespeakById(int buildingbespeakId) {
    	// TODO Auto-generated method stub
    	this.BuildingbespeakDao.deleteByPrimaryKey(buildingbespeakId);
	}
	
}
