package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Strategykinds;

public interface StrategykindsService {
	public Strategykinds getStrategykindsById(int strategykindsId);
	public List<Strategykinds> getAllStrategykinds();
    public void addStrategykinds(Strategykinds record);
    public void updateStrategykinds(Strategykinds record);
    public void delStrategykindsById(int strategykindsId);
}
