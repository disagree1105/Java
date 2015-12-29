package com.cn.service;

import com.cn.bean.Airport;

public interface AirportService {
	public boolean add(Airport airport);

	public boolean find(Airport airport);
	
	public boolean delete(Airport airport);
	
	public boolean update(Airport airport);
}
