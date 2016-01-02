package com.cn.service;

import java.util.List;

import com.cn.bean.Airport;
import com.cn.bean.Flight;

public interface AirportService {
	public boolean add(Airport airport);

	public boolean find(Airport airport);
	
	public boolean check(String portname);
	
	public boolean delete(Airport airport);
	
	public boolean update(Airport airport);
	
	public boolean updateAirportByManager(Airport airport);
	
	public List list();
}
