package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Admin;

public interface AdminDao {
    int deleteByPrimaryKey(Integer id);
    
    List<Admin> selectAllAdmin();

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}