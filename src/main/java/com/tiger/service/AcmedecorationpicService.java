package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Acmedecorationpic;

public interface AcmedecorationpicService {
	public Acmedecorationpic getAcmedecorationpicById(int acmedecorationpicId);
	public List<Acmedecorationpic> getAllAcmedecorationpic();
    public void addAcmedecorationpic(Acmedecorationpic record);
    public void updateAcmedecorationpic(Acmedecorationpic record);
    public void delAcmedecorationpicById(int acmedecorationpicId);
}
