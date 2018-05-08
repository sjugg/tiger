package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Designoffer;

public interface DesignofferService {
	public Designoffer getDesignofferById(int designofferId);
	public List<Designoffer> getAllDesignoffer();
    public void addDesignoffer(Designoffer record);
    public void updateDesignoffer(Designoffer record);
    public void delDesignofferById(int designofferId);
}
