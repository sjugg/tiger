package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Housestyle;

public interface HousestyleService {
	public Housestyle getHousestyleById(int HousestyleId);
	public List<Housestyle> getAllHousestyle();
    public void addHousestyle(Housestyle record);
    public void updateHousestyle(Housestyle record);
    public void delHousestyleById(int HousestyleId);
}
