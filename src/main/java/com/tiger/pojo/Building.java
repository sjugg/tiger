package com.tiger.pojo;

import java.io.Serializable;

public class Building implements Serializable{
    private Integer buildingId;

    private String buildingName;

    private String buildingPic;

    private Integer buildingTotaluser;

    private Integer buildingUsered;

    public Integer getBuildingId() {
        return buildingId;
    }

    public void setBuildingId(Integer buildingId) {
        this.buildingId = buildingId;
    }

    public String getBuildingName() {
        return buildingName;
    }

    public void setBuildingName(String buildingName) {
        this.buildingName = buildingName == null ? null : buildingName.trim();
    }

    public String getBuildingPic() {
        return buildingPic;
    }

    public void setBuildingPic(String buildingPic) {
        this.buildingPic = buildingPic == null ? null : buildingPic.trim();
    }

    public Integer getBuildingTotaluser() {
        return buildingTotaluser;
    }

    public void setBuildingTotaluser(Integer buildingTotaluser) {
        this.buildingTotaluser = buildingTotaluser;
    }

    public Integer getBuildingUsered() {
        return buildingUsered;
    }

    public void setBuildingUsered(Integer buildingUsered) {
        this.buildingUsered = buildingUsered;
    }
}