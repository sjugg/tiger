package com.tiger.service.impl;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.tiger.dao.StrategyDao;
import com.tiger.pojo.Strategy;
import com.tiger.service.StrategyService;

@Service("StrategyService")
public class StrategyServiceImpl implements StrategyService {
	@Resource
	private StrategyDao strategyDao;
	
	@Override
	public Strategy getStrategyById(int StrategyId) {
    	// TODO Auto-generated method stub
    	return this.strategyDao.selectByPrimaryKey(StrategyId);
	}
	
	@Override
	public List<Strategy> getAllStrategy() {
    	// TODO Auto-generated method stub
    	return this.strategyDao.selectAllStrategy();
	}
	
	@Override
	public List<Strategy> getStrategyByKindsId(int kindsId) {
    	// TODO Auto-generated method stub
    	return this.strategyDao.selectAllStrategyByKindsId(kindsId);
	}
	
	
	@Override
	public void addStrategy(Strategy record) {
    	// TODO Auto-generated method stub
    	this.strategyDao.insert(record);
	}
	
	@Override
	public void updateStrategy(Strategy record) {
    	// TODO Auto-generated method stub
    	this.strategyDao.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void delStrategyById(int StrategyId) {
    	// TODO Auto-generated method stub
    	this.strategyDao.deleteByPrimaryKey(StrategyId);
	}
	
}
