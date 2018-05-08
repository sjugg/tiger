package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Designbespeak;

public interface DesignbespeakService {
	public Designbespeak getDesignbespeakById(int designbespeakId);
	public List<Designbespeak> getAllDesignbespeak();
    public void addDesignbespeak(Designbespeak record);
    public void updateDesignbespeak(Designbespeak record);
    public void delDesignbespeakById(int designbespeakId);
}
