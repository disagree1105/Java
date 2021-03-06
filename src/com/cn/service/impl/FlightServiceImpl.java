package com.cn.service.impl;

import java.util.List;
import java.util.Map;

import com.cn.bean.Flight;
import com.cn.bean.Userorder;
import com.cn.dao.FlightDao;
import com.cn.service.FlightService;
import com.opensymphony.xwork2.ActionContext;

public class FlightServiceImpl implements FlightService{
	private FlightDao flightDao;
	private Map<String, Object> session;

	public void setFlightDao(FlightDao flightDao) {
		this.flightDao = flightDao;
	}
	
	public List find(Flight flight)//通过输入起点站、终点站和出发日期
	{
		String originstation=flight.getOriginstation();
		String terminalstation=flight.getTerminalstation();	
		String origintime=flight.getOrigintime();
		String hql="from Flight as flight where originstation='"+ originstation +"' AND "
				+ "terminalstation='"+ terminalstation + "' AND origintime LIKE '%"
				+ origintime +"%'"; 
		List list=flightDao.findByHql(hql);
			return list;
		
	}
	
	public boolean checkFlight(Userorder order)
	{
		String originstation=order.getOriginstation();
		String terminalstation=order.getTerminalstation();
		String origintime=order.getOrigintime();
		String terminaltime=order.getTerminaltime();
		String hql="from Flight as flight where originstation='"+originstation+
				"' AND terminalstation='"+terminalstation+"' AND origintime='"+
				origintime+"' AND terminaltime='"+terminaltime+"'";
		List list=flightDao.findByHql(hql);
		if(list.isEmpty())
		return false;
		return true;
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
