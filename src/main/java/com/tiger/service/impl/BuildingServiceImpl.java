package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.BuildingDao;
import com.tiger.pojo.Building;
import com.tiger.service.BuildingService;

@Service("BuildingService")
public class BuildingServiceImpl implements BuildingService {
	@Resource
	private BuildingDao BuildingDao;
	
	@Override
	public Building getBuildingById(int buildingId) {
    	// TODO Auto-generated method stub
    	return this.BuildingDao.selectByPrimaryKey(buildingId);
	}
	
	@Override
	public List<Building> getAllBuilding() {
    	// TODO Auto-generated method stub
    	return this.BuildingDao.selectAllBuilding();
	}
	
	
	@Override
	public void addBuilding(Building record) {
    	// TODO Auto-generated method stub
    	this.BuildingDao.insert(record);
	}
	
	@Override
	public void updateBuilding(Building record) {
    	// TODO Auto-generated method stub
    	this.BuildingDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void updateBuildingTotaluserById(int buildingId) {
    	// TODO Auto-generated method stub
    	this.BuildingDao.updateBuildingTotaluserById(buildingId);
	}
	
	
	@Override
	public void delBuildingById(int buildingId) {
    	BuildingDao.deleteByPrimaryKey(buildingId);
	}
	
}
