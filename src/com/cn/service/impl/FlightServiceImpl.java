package com.cn.service.impl;

import java.util.List;
import java.util.Map;

import com.cn.bean.Airport;
import com.cn.bean.Flight;
import com.cn.bean.User;
import com.cn.dao.FlightDao;
import com.cn.service.FlightService;
import com.opensymphony.xwork2.ActionContext;

public class FlightServiceImpl implements FlightService{
	private FlightDao flightDao;
	private Map<String, Object> session;

	public void setFlightDao(FlightDao flightDao) {
		this.flightDao = flightDao;
	}
	
	public boolean find(Flight flight)//通过输入起点站、终点站
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map <String, Object>) ctx.getSession();
		Airport origin=flight.getAirportByOriginstation();
		Airport terminal=flight.getAirportByTerminalstation();	
		String originstation=origin.toString();
		String terminalstation=terminal.toString();
		String hql="from Flight as flight where originstation='"+ originstation +"' AND "
				+ "terminalstation='"+ terminalstation + "'";
		List list=flightDao.findByHql(hql);
		if(list.isEmpty())
			return false;
		else
		{
			flight=(Flight)list.get(0);//有问题，不一定就只有一个航班
			session.put("flight", flight);
			return true;
		}
	}
	public boolean add(Flight flight)
	{
		ActionContext ctx= ActionContext.getContext();
		if(flightDao.save(flight))
			return true;
		else 
			return false;
	}
	
	public boolean delete(Flight flight)
	{
		ActionContext ctx= ActionContext.getContext();

		Integer flightid=flight.getFlightid();
		String hql="from Flight as flight where flightid='"+ flightid + "'";
		List list=flightDao.findByHql(hql);
		if(list.isEmpty())
			return false;
		else
			{
			Flight delflight=(Flight)list.get(0);	
			flightDao.delete(delflight);
			return true;
			}

	}
	public boolean update(Flight flight)
	{
		if(flightDao.update(flight))
			return true;
		else 
			return false;
	}


	public List list() {
			String hql="from Flight";
			List list=flightDao.findByHql(hql);
				return list;

	}

	@Override
	public boolean updateFlightByManager(Flight flight) {
		ActionContext ctx= ActionContext.getContext();
		session=(Map<String, Object>) ctx.getSession();
		Integer flightid=flight.getFlightid();
		String hql="from Flight as flight where flightid='"+ flightid + "'";
		List list=flightDao.findByHql(hql);
		if(list.isEmpty())
			return false;
		else
			{
			flight=(Flight)list.get(0);
			session.put("flight", flight);
			return true;
			}
	}
}
