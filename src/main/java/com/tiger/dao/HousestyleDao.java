package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Housestyle;

public interface HousestyleDao {
    int deleteByPrimaryKey(Integer housestyleId);

    int insert(Housestyle record);

    int insertSelective(Housestyle record);

    Housestyle selectByPrimaryKey(Integer housestyleId);
    
    List<Housestyle> selectAllHousestyle();

    int updateByPrimaryKeySelective(Housestyle record);

    int updateByPrimaryKey(Housestyle record);
}