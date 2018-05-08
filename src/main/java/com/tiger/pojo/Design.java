package com.tiger.pojo;

import java.io.Serializable;

public class Design implements Serializable{
    private Integer designId;

    private String designName;

    private String designMainpic;

    private String designPic;

    private String designInfo;

    public Integer getDesignId() {
        return designId;
    }

    public void setDesignId(Integer designId) {
        this.designId = designId;
    }

    public String getDesignName() {
        return designName;
    }

    public void setDesignName(String designName) {
        this.designName = designName == null ? null : designName.trim();
    }

    public String getDesignMainpic() {
        return designMainpic;
    }

    public void setDesignMainpic(String designMainpic) {
        this.designMainpic = designMainpic == null ? null : designMainpic.trim();
    }

    public String getDesignPic() {
        return designPic;
    }

    public void setDesignPic(String designPic) {
        this.designPic = designPic == null ? null : designPic.trim();
    }

    public String getDesignInfo() {
        return designInfo;
    }

    public void setDesignInfo(String designInfo) {
        this.designInfo = designInfo == null ? null : designInfo.trim();
    }
}