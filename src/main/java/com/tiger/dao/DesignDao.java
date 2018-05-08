package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Design;

public interface DesignDao {
    int deleteByPrimaryKey(Integer designId);

    int insert(Design record);

    int insertSelective(Design record);

    Design selectByPrimaryKey(Integer designId);
    
    List<Design> selectAllDesign();

    int updateByPrimaryKeySelective(Design record);

    int updateByPrimaryKey(Design record);
}