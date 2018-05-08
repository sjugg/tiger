package com.tiger.pojo;

public class Strategy {
    private Integer strategyId;

    private String strategyName;

    private String strategyPicture;

    private String strategyInfo;

    private String strategyContent;

    private Integer strategyKindsid;

    public Integer getStrategyId() {
        return strategyId;
    }

    public void setStrategyId(Integer strategyId) {
        this.strategyId = strategyId;
    }

    public String getStrategyName() {
        return strategyName;
    }

    public void setStrategyName(String strategyName) {
        this.strategyName = strategyName == null ? null : strategyName.trim();
    }

    public String getStrategyPicture() {
        return strategyPicture;
    }

    public void setStrategyPicture(String strategyPicture) {
        this.strategyPicture = strategyPicture == null ? null : strategyPicture.trim();
    }

    public String getStrategyInfo() {
        return strategyInfo;
    }

    public void setStrategyInfo(String strategyInfo) {
        this.strategyInfo = strategyInfo == null ? null : strategyInfo.trim();
    }

    public String getStrategyContent() {
        return strategyContent;
    }

    public void setStrategyContent(String strategyContent) {
        this.strategyContent = strategyContent == null ? null : strategyContent.trim();
    }

    public Integer getStrategyKindsid() {
        return strategyKindsid;
    }

    public void setStrategyKindsid(Integer strategyKindsid) {
        this.strategyKindsid = strategyKindsid;
    }
}