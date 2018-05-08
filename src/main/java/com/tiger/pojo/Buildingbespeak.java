package com.tiger.pojo;

import java.util.Date;
import java.util.List;

public class Buildingbespeak {
    private Integer buildingbespeakId;

    private String buildingbespeakUsername;

    private String buildingbespeakTel;

    private Date buildingbespeakTime;

    private String buildingbespeakState;

    private Integer buildingbespeakBuildingid;
    
    private List<Building> building;

    public Integer getBuildingbespeakId() {
        return buildingbespeakId;
    }

    public void setBuildingbespeakId(Integer buildingbespeakId) {
        this.buildingbespeakId = buildingbespeakId;
    }

    public String getBuildingbespeakUsername() {
        return buildingbespeakUsername;
    }

    public void setBuildingbespeakUsername(String buildingbespeakUsername) {
        this.buildingbespeakUsername = buildingbespeakUsername == null ? null : buildingbespeakUsername.trim();
    }

    public String getBuildingbespeakTel() {
        return buildingbespeakTel;
    }

    public void setBuildingbespeakTel(String buildingbespeakTel) {
        this.buildingbespeakTel = buildingbespeakTel == null ? null : buildingbespeakTel.trim();
    }

    public Date getBuildingbespeakTime() {
        return buildingbespeakTime;
    }

    public void setBuildingbespeakTime(Date buildingbespeakTime) {
        this.buildingbespeakTime = buildingbespeakTime;
    }

    public String getBuildingbespeakState() {
        return buildingbespeakState;
    }

    public void setBuildingbespeakState(String buildingbespeakState) {
        this.buildingbespeakState = buildingbespeakState == null ? null : buildingbespeakState.trim();
    }

    public Integer getBuildingbespeakBuildingid() {
        return buildingbespeakBuildingid;
    }

    public void setBuildingbespeakBuildingid(Integer buildingbespeakBuildingid) {
        this.buildingbespeakBuildingid = buildingbespeakBuildingid;
    }

	public List<Building> getBuilding() {
		return building;
	}

	public void setBuilding(List<Building> building) {
		this.building = building;
	}
}