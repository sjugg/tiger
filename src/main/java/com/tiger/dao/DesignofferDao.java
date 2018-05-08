package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Designoffer;

public interface DesignofferDao {
    int deleteByPrimaryKey(Integer designofferId);

    int insert(Designoffer record);

    int insertSelective(Designoffer record);

    Designoffer selectByPrimaryKey(Integer designofferId);
    
    List<Designoffer> selectAllDesignoffer();

    int updateByPrimaryKeySelective(Designoffer record);

    int updateByPrimaryKey(Designoffer record);
}