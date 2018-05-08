package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Strategy;

public interface StrategyService {
	public Strategy getStrategyById(int strategyId);
	public List<Strategy> getAllStrategy();
	public List<Strategy> getStrategyByKindsId(int strategyKindsid);
    public void addStrategy(Strategy record);
    public void updateStrategy(Strategy record);
    public void delStrategyById(int strategyId);
}
