package com.tiger.pojo;

public class Acmedecorationpic {
    private Integer acmedecorationpicId;

    private String acmedecorationpicName;

    private String acmedecorationpicPic;

    private String acmedecorationpicInfo;

    private Integer acmedecorationpicRid;

    public Integer getAcmedecorationpicId() {
        return acmedecorationpicId;
    }

    public void setAcmedecorationpicId(Integer acmedecorationpicId) {
        this.acmedecorationpicId = acmedecorationpicId;
    }

    public String getAcmedecorationpicName() {
        return acmedecorationpicName;
    }

    public void setAcmedecorationpicName(String acmedecorationpicName) {
        this.acmedecorationpicName = acmedecorationpicName == null ? null : acmedecorationpicName.trim();
    }

    public String getAcmedecorationpicPic() {
        return acmedecorationpicPic;
    }

    public void setAcmedecorationpicPic(String acmedecorationpicPic) {
        this.acmedecorationpicPic = acmedecorationpicPic == null ? null : acmedecorationpicPic.trim();
    }

    public String getAcmedecorationpicInfo() {
        return acmedecorationpicInfo;
    }

    public void setAcmedecorationpicInfo(String acmedecorationpicInfo) {
        this.acmedecorationpicInfo = acmedecorationpicInfo == null ? null : acmedecorationpicInfo.trim();
    }

    public Integer getAcmedecorationpicRid() {
        return acmedecorationpicRid;
    }

    public void setAcmedecorationpicRid(Integer acmedecorationpicRid) {
        this.acmedecorationpicRid = acmedecorationpicRid;
    }
}