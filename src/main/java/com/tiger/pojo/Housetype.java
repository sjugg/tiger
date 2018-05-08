package com.tiger.pojo;

public class Housetype {
    private Integer housetypeId;

    private String housetypeName;

    private String housetypeInfo;

    public Integer getHousetypeId() {
        return housetypeId;
    }

    public void setHousetypeId(Integer housetypeId) {
        this.housetypeId = housetypeId;
    }

    public String getHousetypeName() {
        return housetypeName;
    }

    public void setHousetypeName(String housetypeName) {
        this.housetypeName = housetypeName == null ? null : housetypeName.trim();
    }

    public String getHousetypeInfo() {
        return housetypeInfo;
    }

    public void setHousetypeInfo(String housetypeInfo) {
        this.housetypeInfo = housetypeInfo == null ? null : housetypeInfo.trim();
    }
}