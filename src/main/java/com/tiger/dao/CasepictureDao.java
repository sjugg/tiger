package com.tiger.dao;

import com.tiger.pojo.Casepicture;

public interface CasepictureDao {
	int deleteByPrimaryKey(Integer casepictureId);
	
	int deleteClassiccaseByClassiccaseId(Integer classiccaseId);

    int insert(Casepicture record);

    int insertSelective(Casepicture record);

    Casepicture selectByPrimaryKey(Integer casepictureId);

    int updateByPrimaryKeySelective(Casepicture record);

    int updateByPrimaryKey(Casepicture record);
}