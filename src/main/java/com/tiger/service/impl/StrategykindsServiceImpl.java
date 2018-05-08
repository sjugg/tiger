package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.StrategykindsDao;
import com.tiger.pojo.Strategykinds;
import com.tiger.service.StrategykindsService;

@Service("StrategykindsService")
public class StrategykindsServiceImpl implements StrategykindsService {
	@Resource
	private StrategykindsDao strategykindsDao;
	
	@Override
	public Strategykinds getStrategykindsById(int StrategykindsId) {
    	// TODO Auto-generated method stub
    	return this.strategykindsDao.selectByPrimaryKey(StrategykindsId);
	}
	
	@Override
	public List<Strategykinds> getAllStrategykinds() {
    	// TODO Auto-generated method stub
    	return this.strategykindsDao.selectAllStrategykinds();
	}
	
	
	@Override
	public void addStrategykinds(Strategykinds record) {
    	// TODO Auto-generated method stub
    	this.strategykindsDao.insert(record);
	}
	
	@Override
	public void updateStrategykinds(Strategykinds record) {
    	// TODO Auto-generated method stub
    	this.strategykindsDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void delStrategykindsById(int StrategykindsId) {
    	// TODO Auto-generated method stub
    	this.strategykindsDao.deleteByPrimaryKey(StrategykindsId);
	}
	
}
