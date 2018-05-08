package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Houseacreage;

public interface HouseacreageDao {
    int deleteByPrimaryKey(Integer houseacreageId);

    int insert(Houseacreage record);

    int insertSelective(Houseacreage record);

    Houseacreage selectByPrimaryKey(Integer houseacreageId);
    
    List<Houseacreage> selectAllHouseacreage();

    int updateByPrimaryKeySelective(Houseacreage record);

    int updateByPrimaryKey(Houseacreage record);
}