package com.tiger.service;

import java.util.List;

import com.tiger.pojo.UserInfo;



public interface UserInfoService {
	public UserInfo getAdminById(int AdminId);
	public List<UserInfo> getAllAdmin();
    public void addAdmin(UserInfo record);
    public void updateAdmin(UserInfo record);
    public void delAdminById(int AdminId);
    public UserInfo getByPdAndTel(UserInfo record);
    public UserInfo getByTel(UserInfo record);
}
