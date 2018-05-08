package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.UserInfo;


public interface UserInfoDao {
    int deleteByPrimaryKey(Integer id);
    
    List<UserInfo> selectAllAdmin();

    int insert(UserInfo record);

    int insertSelective(UserInfo record);

    UserInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserInfo record);

    int updateByPrimaryKey(UserInfo record);
    
    UserInfo getByPdAndTel(UserInfo record);

    UserInfo getByTel(UserInfo record);
}