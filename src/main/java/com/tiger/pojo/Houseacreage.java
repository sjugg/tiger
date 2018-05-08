package com.tiger.pojo;

public class Houseacreage {
    private Integer houseacreageId;

    private String houseacreageName;

    private String houseacreageInfo;

    public Integer getHouseacreageId() {
        return houseacreageId;
    }

    public void setHouseacreageId(Integer houseacreageId) {
        this.houseacreageId = houseacreageId;
    }

    public String getHouseacreageName() {
        return houseacreageName;
    }

    public void setHouseacreageName(String houseacreageName) {
        this.houseacreageName = houseacreageName == null ? null : houseacreageName.trim();
    }

    public String getHouseacreageInfo() {
        return houseacreageInfo;
    }

    public void setHouseacreageInfo(String houseacreageInfo) {
        this.houseacreageInfo = houseacreageInfo == null ? null : houseacreageInfo.trim();
    }
}