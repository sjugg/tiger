package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Designbespeak;

public interface DesignbespeakDao {
    int deleteByPrimaryKey(Integer designbespeakId);

    int insert(Designbespeak record);

    int insertSelective(Designbespeak record);

    Designbespeak selectByPrimaryKey(Integer designbespeakId);
    
    List<Designbespeak> selectAllDesignbespeak();

    int updateByPrimaryKeySelective(Designbespeak record);

    int updateByPrimaryKey(Designbespeak record);
}