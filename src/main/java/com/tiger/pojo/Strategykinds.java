package com.tiger.pojo;

public class Strategykinds {
    private Integer strategykindsId;

    private String strategykindsName;

    private String strategykindsInfo;

    public Integer getStrategykindsId() {
        return strategykindsId;
    }

    public void setStrategykindsId(Integer strategykindsId) {
        this.strategykindsId = strategykindsId;
    }

    public String getStrategykindsName() {
        return strategykindsName;
    }

    public void setStrategykindsName(String strategykindsName) {
        this.strategykindsName = strategykindsName == null ? null : strategykindsName.trim();
    }

    public String getStrategykindsInfo() {
        return strategykindsInfo;
    }

    public void setStrategykindsInfo(String strategykindsInfo) {
        this.strategykindsInfo = strategykindsInfo == null ? null : strategykindsInfo.trim();
    }
}