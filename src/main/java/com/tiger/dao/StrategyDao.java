package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Strategy;

public interface StrategyDao {
    int deleteByPrimaryKey(Integer strategyId);

    int insert(Strategy record);

    int insertSelective(Strategy record);

    Strategy selectByPrimaryKey(Integer strategyId);
	
	List<Strategy> selectAllStrategy();
    
    List<Strategy> selectAllStrategyByKindsId(Integer strategyKindsid);

    int updateByPrimaryKeySelective(Strategy record);

    int updateByPrimaryKey(Strategy record);
}