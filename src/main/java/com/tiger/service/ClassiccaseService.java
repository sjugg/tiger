package com.tiger.service;

import java.util.List;

import com.tiger.pojo.Classiccase;

public interface ClassiccaseService {
	public Classiccase getClassiccaseById(int classiccaseId);
	public List<Classiccase> getAllClassiccase();
	public List<Classiccase> getAllClassiccaseIndex();
	public List<Classiccase> selectClassiccaseById(int classiccaseId);
	public List<Classiccase> getClassiccaseByAttribute(String classiccaseAcreage,String classiccaseHousetype,String classiccaseStyle);
    public void addClassiccase(Classiccase record);
    public void updateClassiccase(Classiccase record);
    public void updateClassiccaseById(int classiccaseId);
    public void delClassiccaseById(int ClassiccaseId);
}
