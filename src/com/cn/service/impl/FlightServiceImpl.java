package com.cn.service.impl;

import java.util.List;
import java.util.Map;

import com.cn.bean.Airport;
import com.cn.bean.Flight;
import com.cn.dao.FlightDao;
import com.cn.service.FlightService;
import com.opensymphony.xwork2.ActionContext;

public class FlightServiceImpl implements FlightService{
	private FlightDao flightDao;
	private Map<String, Object> session;

	public void setFlightDao(FlightDao flightDao) {
		this.flightDao = flightDao;
	}
	
	public boolean find(Flight flight)//ͨ���������վ���յ�վ
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map <String, Object>) ctx.getSession();
		String originstation=flight.getOriginstation();
		String terminalstation=flight.getTerminalstation();		
		String hql="from Flight as flight where originstation='"+ originstation +"' AND "
				+ "terminalstation='"+ terminalstation + "'";
		List list=flightDao.findByHql(hql);
		if(list.isEmpty())
			return false;
		else
		{
			flight=(Flight)list.get(0);//�����⣬��һ����ֻ��һ������
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
		ActionContext ctx= ActionContext.getContext();
		if(flightDao.update(flight))
			return true;
		else 
			return false;
	}
}