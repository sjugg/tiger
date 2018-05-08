package com.tiger.pojo;

import java.util.Date;

public class Designbespeak {
    private Integer designbespeakId;

    private String designbespeakUsername;

    private String designbespeakTel;

    private Date designbespeakTime;

    public Integer getDesignbespeakId() {
        return designbespeakId;
    }

    public void setDesignbespeakId(Integer designbespeakId) {
        this.designbespeakId = designbespeakId;
    }

    public String getDesignbespeakUsername() {
        return designbespeakUsername;
    }

    public void setDesignbespeakUsername(String designbespeakUsername) {
        this.designbespeakUsername = designbespeakUsername == null ? null : designbespeakUsername.trim();
    }

    public String getDesignbespeakTel() {
        return designbespeakTel;
    }

    public void setDesignbespeakTel(String designbespeakTel) {
        this.designbespeakTel = designbespeakTel == null ? null : designbespeakTel.trim();
    }

    public Date getDesignbespeakTime() {
        return designbespeakTime;
    }

    public void setDesignbespeakTime(Date designbespeakTime) {
        this.designbespeakTime = designbespeakTime;
    }
}