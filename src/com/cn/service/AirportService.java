package com.cn.service;

import java.util.List;

import com.cn.bean.Airport;

public interface AirportService {
	public boolean add(Airport airport);

	public boolean find(Airport airport);
	
	public boolean delete(Airport airport);
	
	public boolean update(Airport airport);
	
	public List list();
}
