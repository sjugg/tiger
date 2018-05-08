package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Strategykinds;

public interface StrategykindsDao {
    int deleteByPrimaryKey(Integer strategykindsId);

    int insert(Strategykinds record);

    int insertSelective(Strategykinds record);

    Strategykinds selectByPrimaryKey(Integer strategykindsId);
    
    List<Strategykinds> selectAllStrategykinds();

    int updateByPrimaryKeySelective(Strategykinds record);

    int updateByPrimaryKey(Strategykinds record);
}