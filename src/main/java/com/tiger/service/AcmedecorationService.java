package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Acmedecoration;

public interface AcmedecorationService {
	public Acmedecoration getAcmedecorationById(int acmedecorationId);
	public List<Acmedecoration> getAllAcmedecoration();
	public List<Acmedecoration> getAcmedecorationDetailById(int acmedecorationId);
    public void addAcmedecoration(Acmedecoration record);
    public void updateAcmedecoration(Acmedecoration record);
    public void delAcmedecorationById(int acmedecorationId);
}
