package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Houseacreage;

public interface HouseacreageService {
	public Houseacreage getHouseacreageById(int HouseacreageId);
	public List<Houseacreage> getAllHouseacreage();
    public void addHouseacreage(Houseacreage record);
    public void updateHouseacreage(Houseacreage record);
    public void delHouseacreageById(int HouseracreageId);
}
