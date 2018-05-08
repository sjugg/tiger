package com.tiger.dao;

import java.util.List;

import com.tiger.pojo.Acmedecoration;

public interface AcmedecorationDao {
    int deleteByPrimaryKey(Integer acmedecorationId);

    int insert(Acmedecoration record);

    int insertSelective(Acmedecoration record);

    Acmedecoration selectByPrimaryKey(Integer acmedecorationId);
    
    List<Acmedecoration> selectAllAcmedecoration();
    
    List<Acmedecoration> selectAcmedecorationDetailById(Integer acmedecorationId);

    int updateByPrimaryKeySelective(Acmedecoration record);

    int updateByPrimaryKey(Acmedecoration record);
}