package com.tiger.service;



import com.tiger.pojo.Casepicture;

public interface CasepictureService {
	public Casepicture getCasepictureById(int CasepictureId);
	
    public void addCasepicture(Casepicture record);
    public void updateCasepicture(Casepicture record);
    public void delCasepictureById(int CasepictureId);
    public void delCasepuictureByClassiccaseId(int classiccaseId);
}
