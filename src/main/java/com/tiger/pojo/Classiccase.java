package com.tiger.pojo;

import java.io.Serializable;
import java.util.List;

public class Classiccase implements Serializable{
    private Integer classiccaseId;

    private String classiccaseName;

    private String classiccaseInfo;

    private String classiccasePicture;

    private Integer classiccaseCasepicid;

    private String classiccaseLabel;

    private String classiccaseStyle;

    private String classiccaseAcreage;

    private String classiccaseHouseType;

    private String classiccaseLarge;

    private Integer classiccaseReadnum;

    private Integer classiccaseCommentnum;

    private Integer classiccaseIndex;

    private String classiccaseParlourType;

    private String classiccaseKitchenType;

    private String classiccaseToiletType;
    
    private List<Casepicture> casepicture;

    public Integer getClassiccaseId() {
        return classiccaseId;
    }

    public void setClassiccaseId(Integer classiccaseId) {
        this.classiccaseId = classiccaseId;
    }

    public String getClassiccaseName() {
        return classiccaseName;
    }

    public void setClassiccaseName(String classiccaseName) {
        this.classiccaseName = classiccaseName == null ? null : classiccaseName.trim();
    }

    public String getClassiccaseInfo() {
        return classiccaseInfo;
    }

    public void setClassiccaseInfo(String classiccaseInfo) {
        this.classiccaseInfo = classiccaseInfo == null ? null : classiccaseInfo.trim();
    }

    public String getClassiccasePicture() {
        return classiccasePicture;
    }

    public void setClassiccasePicture(String classiccasePicture) {
        this.classiccasePicture = classiccasePicture == null ? null : classiccasePicture.trim();
    }

    public Integer getClassiccaseCasepicid() {
        return classiccaseCasepicid;
    }

    public void setClassiccaseCasepicid(Integer classiccaseCasepicid) {
        this.classiccaseCasepicid = classiccaseCasepicid;
    }

    public String getClassiccaseLabel() {
        return classiccaseLabel;
    }

    public void setClassiccaseLabel(String classiccaseLabel) {
        this.classiccaseLabel = classiccaseLabel == null ? null : classiccaseLabel.trim();
    }

    public String getClassiccaseStyle() {
        return classiccaseStyle;
    }

    public void setClassiccaseStyle(String classiccaseStyle) {
        this.classiccaseStyle = classiccaseStyle == null ? null : classiccaseStyle.trim();
    }

    public String getClassiccaseAcreage() {
        return classiccaseAcreage;
    }

    public void setClassiccaseAcreage(String classiccaseAcreage) {
        this.classiccaseAcreage = classiccaseAcreage == null ? null : classiccaseAcreage.trim();
    }

    public String getClassiccaseHouseType() {
        return classiccaseHouseType;
    }

    public void setClassiccaseHouseType(String classiccaseHouseType) {
        this.classiccaseHouseType = classiccaseHouseType == null ? null : classiccaseHouseType.trim();
    }

    public String getClassiccaseLarge() {
        return classiccaseLarge;
    }

    public void setClassiccaseLarge(String classiccaseLarge) {
        this.classiccaseLarge = classiccaseLarge == null ? null : classiccaseLarge.trim();
    }

    public Integer getClassiccaseReadnum() {
        return classiccaseReadnum;
    }

    public void setClassiccaseReadnum(Integer classiccaseReadnum) {
        this.classiccaseReadnum = classiccaseReadnum;
    }

    public Integer getClassiccaseCommentnum() {
        return classiccaseCommentnum;
    }

    public void setClassiccaseCommentnum(Integer classiccaseCommentnum) {
        this.classiccaseCommentnum = classiccaseCommentnum;
    }

    public Integer getClassiccaseIndex() {
        return classiccaseIndex;
    }

    public void setClassiccaseIndex(Integer classiccaseIndex) {
        this.classiccaseIndex = classiccaseIndex;
    }

    public String getClassiccaseParlourType() {
        return classiccaseParlourType;
    }

    public void setClassiccaseParlourType(String classiccaseParlourType) {
        this.classiccaseParlourType = classiccaseParlourType == null ? null : classiccaseParlourType.trim();
    }

    public String getClassiccaseKitchenType() {
        return classiccaseKitchenType;
    }

    public void setClassiccaseKitchenType(String classiccaseKitchenType) {
        this.classiccaseKitchenType = classiccaseKitchenType == null ? null : classiccaseKitchenType.trim();
    }

    public String getClassiccaseToiletType() {
        return classiccaseToiletType;
    }

    public void setClassiccaseToiletType(String classiccaseToiletType) {
        this.classiccaseToiletType = classiccaseToiletType == null ? null : classiccaseToiletType.trim();
    }

	public List<Casepicture> getCasepicture() {
		return casepicture;
	}

	public void setCasepicture(List<Casepicture> casepicture) {
		this.casepicture = casepicture;
	}
}