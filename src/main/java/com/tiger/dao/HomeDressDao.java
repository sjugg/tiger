package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.HomeDress;



public interface HomeDressDao {
    int deleteByPrimaryKey(Integer id);
    
    List<HomeDress> selectAllAdmin();

    int insert(HomeDress record);

    int insertSelective(HomeDress record);

    HomeDress selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HomeDress record);

    int updateByPrimaryKey(HomeDress record);
    
    HomeDress selectByTel(String tel);
    
}