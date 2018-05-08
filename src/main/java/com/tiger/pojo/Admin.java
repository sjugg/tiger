package com.tiger.pojo;

import java.util.Date;

public class Admin {
    private Integer id;

    private String adminName;

    private String adminPassword;

    private Integer adminRank;

    private String adminRealName;

    private String adminInfo;

    private Date adminAddTime;

    private Date adminLastTime;

    private String adminLastIp;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName == null ? null : adminName.trim();
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword == null ? null : adminPassword.trim();
    }

    public Integer getAdminRank() {
        return adminRank;
    }

    public void setAdminRank(Integer adminRank) {
        this.adminRank = adminRank;
    }

    public String getAdminRealName() {
        return adminRealName;
    }

    public void setAdminRealName(String adminRealName) {
        this.adminRealName = adminRealName == null ? null : adminRealName.trim();
    }

    public String getAdminInfo() {
        return adminInfo;
    }

    public void setAdminInfo(String adminInfo) {
        this.adminInfo = adminInfo == null ? null : adminInfo.trim();
    }

    public Date getAdminAddTime() {
        return adminAddTime;
    }

    public void setAdminAddTime(Date adminAddTime) {
        this.adminAddTime = adminAddTime;
    }

    public Date getAdminLastTime() {
        return adminLastTime;
    }

    public void setAdminLastTime(Date adminLastTime) {
        this.adminLastTime = adminLastTime;
    }

    public String getAdminLastIp() {
        return adminLastIp;
    }

    public void setAdminLastIp(String adminLastIp) {
        this.adminLastIp = adminLastIp == null ? null : adminLastIp.trim();
    }
}