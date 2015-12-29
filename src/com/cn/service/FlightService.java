package com.cn.service;

import com.cn.bean.Flight;

public interface FlightService {
	public boolean add(Flight flight);

	public boolean find(Flight flight);
	
	public boolean delete(Flight flight);
	
	public boolean update(Flight flight);
}
