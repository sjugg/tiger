package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Building;

public interface BuildingDao {
    int deleteByPrimaryKey(Integer buildingId);

    int insert(Building record);

    int insertSelective(Building record);

    Building selectByPrimaryKey(Integer buildingId);
    
    List<Building> selectAllBuilding();

    int updateByPrimaryKeySelective(Building record);
    
    int updateBuildingTotaluserById(Integer buildingId);

    int updateByPrimaryKey(Building record);
}