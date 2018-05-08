package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Building;

public interface BuildingService {
	public Building getBuildingById(int buildingId);
	public List<Building> getAllBuilding();
    public void addBuilding(Building record);
    public void updateBuilding(Building record);
    public void updateBuildingTotaluserById(int buildingId);
    public void delBuildingById(int buildingId);
}
