package com.tiger.service;



import java.util.List;

import com.tiger.pojo.Quoedprice;

public interface QuoedpriceService {
	public Quoedprice getQuoedpriceById(int quoedpriceId);
	public List<Quoedprice> getAllQuoedprice();
    public void addQuoedprice(Quoedprice record);
    public void updateQuoedprice(Quoedprice record);
    public void delQuoedpriceById(int quoedpriceId);
}
