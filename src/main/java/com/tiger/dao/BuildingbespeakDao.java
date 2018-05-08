package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Buildingbespeak;

public interface BuildingbespeakDao {
    int deleteByPrimaryKey(Integer buildingbespeakId);

    int insert(Buildingbespeak record);

    int insertSelective(Buildingbespeak record);

    Buildingbespeak selectByPrimaryKey(Integer buildingbespeakId);
	
	List<Buildingbespeak> selectAllBuildingbespeak();

    int updateByPrimaryKeySelective(Buildingbespeak record);

    int updateByPrimaryKey(Buildingbespeak record);
    
    int updateBuildingbespeakStateById(Integer buildingbespeakId);
}