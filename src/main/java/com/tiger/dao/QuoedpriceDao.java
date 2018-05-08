package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Quoedprice;

public interface QuoedpriceDao {
    int deleteByPrimaryKey(Integer quotedpriceId);

    int insert(Quoedprice record);

    int insertSelective(Quoedprice record);

    Quoedprice selectByPrimaryKey(Integer quotedpriceId);
    
    List<Quoedprice> selectAllQuoedprice();

    int updateByPrimaryKeySelective(Quoedprice record);

    int updateByPrimaryKey(Quoedprice record);
}