package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Housetype;

public interface HousetypeService {
	public Housetype getHousetypeById(int HousetypeId);
    public List<Housetype> getAllHousetype();
	public void addHousetype(Housetype record);
    
    public void updateHousetype(Housetype record);
    public void delHousetypeById(int HousetypeId);
}
