package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Design;

public interface DesignService {
	public Design getDesignById(int designId);
	public List<Design> getAllDesign();
    public void addDesign(Design record);
    public void updateDesign(Design record);
    public void delDesignById(int designId);
}
