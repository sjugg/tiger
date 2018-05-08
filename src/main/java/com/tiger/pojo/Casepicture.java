package com.tiger.pojo;

import java.io.Serializable;

public class Casepicture implements Serializable {
    private Integer casepictureId;

    private String casepicturePicture;

    private Integer classiccaseId;

    private String casepictureInfo;

    public Integer getCasepictureId() {
        return casepictureId;
    }

    public void setCasepictureId(Integer casepictureId) {
        this.casepictureId = casepictureId;
    }

    public String getCasepicturePicture() {
        return casepicturePicture;
    }

    public void setCasepicturePicture(String casepicturePicture) {
        this.casepicturePicture = casepicturePicture == null ? null : casepicturePicture.trim();
    }

    public Integer getClassiccaseId() {
        return classiccaseId;
    }

    public void setClassiccaseId(Integer classiccaseId) {
        this.classiccaseId = classiccaseId;
    }

    public String getCasepictureInfo() {
        return casepictureInfo;
    }

    public void setCasepictureInfo(String casepictureInfo) {
        this.casepictureInfo = casepictureInfo == null ? null : casepictureInfo.trim();
    }
}