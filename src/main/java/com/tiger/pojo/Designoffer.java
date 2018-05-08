package com.tiger.pojo;

import java.util.Date;

public class Designoffer {
    private Integer designofferId;

    private String designofferAcreage;

    private String designofferTel;

    private Date designofferTime;

    public Integer getDesignofferId() {
        return designofferId;
    }

    public void setDesignofferId(Integer designofferId) {
        this.designofferId = designofferId;
    }

    public String getDesignofferAcreage() {
        return designofferAcreage;
    }

    public void setDesignofferAcreage(String designofferAcreage) {
        this.designofferAcreage = designofferAcreage == null ? null : designofferAcreage.trim();
    }

    public String getDesignofferTel() {
        return designofferTel;
    }

    public void setDesignofferTel(String designofferTel) {
        this.designofferTel = designofferTel == null ? null : designofferTel.trim();
    }

    public Date getDesignofferTime() {
        return designofferTime;
    }

    public void setDesignofferTime(Date designofferTime) {
        this.designofferTime = designofferTime;
    }
}