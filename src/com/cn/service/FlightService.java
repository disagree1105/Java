package com.cn.service;

import java.util.List;

import com.cn.bean.Flight;
import com.cn.bean.User;

public interface FlightService {
	public boolean add(Flight flight);

	public List find(Flight flight);
	
	public boolean delete(Flight flight);
	
	public boolean update(Flight flight);
	
	public boolean updateFlightByManager(Flight flight);
	
	public List list();
}
