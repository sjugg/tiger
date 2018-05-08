package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Housetype;

public interface HousetypeDao {
    int deleteByPrimaryKey(Integer housetypeId);

    int insert(Housetype record);

    int insertSelective(Housetype record);

    Housetype selectByPrimaryKey(Integer housetypeId);
    
     List<Housetype> selectAllHousetype();

    int updateByPrimaryKeySelective(Housetype record);

    int updateByPrimaryKey(Housetype record);
}