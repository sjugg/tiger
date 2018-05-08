package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Buildingbespeak;

public interface BuildingbespeakService {
	public Buildingbespeak getBuildingbespeakById(int buildingbespeakId);
	public List<Buildingbespeak> getAllBuildingbespeak();
    public void addBuildingbespeak(Buildingbespeak record);
    public void updateBuildingbespeak(Buildingbespeak record);
    public void updateBuildingbespeakStateById(int buildingbespeakId);
    public void delBuildingbespeakById(int buildingbespeakId);
}
