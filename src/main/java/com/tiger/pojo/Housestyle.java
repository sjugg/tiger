package com.tiger.pojo;

public class Housestyle {
    private Integer housestyleId;

    private String housestyleName;

    private String housestyleInfo;

    public Integer getHousestyleId() {
        return housestyleId;
    }

    public void setHousestyleId(Integer housestyleId) {
        this.housestyleId = housestyleId;
    }

    public String getHousestyleName() {
        return housestyleName;
    }

    public void setHousestyleName(String housestyleName) {
        this.housestyleName = housestyleName == null ? null : housestyleName.trim();
    }

    public String getHousestyleInfo() {
        return housestyleInfo;
    }

    public void setHousestyleInfo(String housestyleInfo) {
        this.housestyleInfo = housestyleInfo == null ? null : housestyleInfo.trim();
    }
}