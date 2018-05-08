package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.AcmedecorationpicDao;
import com.tiger.pojo.Acmedecorationpic;
import com.tiger.service.AcmedecorationpicService;

@Service("AcmedecorationpicService")
public class AcmedecorationpicServiceImpl implements AcmedecorationpicService {
	@Resource
	private AcmedecorationpicDao AcmedecorationpicDao;
	
	@Override
	public Acmedecorationpic getAcmedecorationpicById(int acmedecorationpicId) {
    	// TODO Auto-generated method stub
    	return this.AcmedecorationpicDao.selectByPrimaryKey(acmedecorationpicId);
	}
	
	@Override
	public List<Acmedecorationpic> getAllAcmedecorationpic() {
    	// TODO Auto-generated method stub
    	return this.AcmedecorationpicDao.selectAllAcmedecorationpic();
	}
	
	
	@Override
	public void addAcmedecorationpic(Acmedecorationpic record) {
    	// TODO Auto-generated method stub
    	this.AcmedecorationpicDao.insert(record);
	}
	
	@Override
	public void updateAcmedecorationpic(Acmedecorationpic record) {
    	// TODO Auto-generated method stub
    	this.AcmedecorationpicDao.updateByPrimaryKeySelective(record);
	}
	
	
	@Override
	public void delAcmedecorationpicById(int acmedecorationpicId) {
    	// TODO Auto-generated method stub
    	this.AcmedecorationpicDao.deleteByPrimaryKey(acmedecorationpicId);
	}
	
}
