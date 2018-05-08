package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.QuoedpriceDao;
import com.tiger.pojo.Quoedprice;
import com.tiger.service.QuoedpriceService;

@Service("QuoedpriceService")
public class QuoedpriceServiceImpl implements QuoedpriceService {
	@Resource
	private QuoedpriceDao QuoedpriceDao;
	
	@Override
	public Quoedprice getQuoedpriceById(int quoedpriceId) {
    	// TODO Auto-generated method stub
    	return this.QuoedpriceDao.selectByPrimaryKey(quoedpriceId);
	}
	
	@Override
	public List<Quoedprice> getAllQuoedprice() {
    	// TODO Auto-generated method stub
    	return this.QuoedpriceDao.selectAllQuoedprice();
	}
	
	
	@Override
	public void addQuoedprice(Quoedprice record) {
    	// TODO Auto-generated method stub
    	this.QuoedpriceDao.insert(record);
	}
	
	@Override
	public void updateQuoedprice(Quoedprice record) {
    	// TODO Auto-generated method stub
    	this.QuoedpriceDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void delQuoedpriceById(int quoedpriceId) {
    	// TODO Auto-generated method stub
    	this.QuoedpriceDao.deleteByPrimaryKey(quoedpriceId);
	}
	
}
