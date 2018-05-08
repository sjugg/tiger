package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Acmedecorationpic;

public interface AcmedecorationpicDao {
    int deleteByPrimaryKey(Integer acmedecorationpicId);

    int insert(Acmedecorationpic record);

    int insertSelective(Acmedecorationpic record);

    Acmedecorationpic selectByPrimaryKey(Integer acmedecorationpicId);

    List<Acmedecorationpic> selectAllAcmedecorationpic();
    
    int updateByPrimaryKeySelective(Acmedecorationpic record);

    int updateByPrimaryKey(Acmedecorationpic record);
}