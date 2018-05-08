package com.tiger.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tiger.pojo.Classiccase;

public interface ClassiccaseDao {
	int deleteByPrimaryKey(Integer classiccaseId);

    List<Classiccase> selectAllClassiccase();
    
    List<Classiccase> selectAllClassiccaseIndex();
    
    List<Classiccase> selectByClassiccaseId(Integer classiccaseId);
    
    List<Classiccase> selectClassiccaseByAttribute(@Param("classiccaseAcreage")String classiccaseAcreage ,@Param("classiccaseHouseType")String classiccaseHouseType,@Param("classiccaseStyle")String classiccaseStyle);
    
    int insert(Classiccase record);

    int insertSelective(Classiccase record);

    Classiccase selectByPrimaryKey(Integer classiccaseId);

    int updateByPrimaryKeySelective(Classiccase record);

    int updateByPrimaryKey(Classiccase record);
    
    int updateByClassiccaseId(Integer classiccaseId);
}