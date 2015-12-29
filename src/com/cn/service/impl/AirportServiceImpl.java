package com.cn.service.impl;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;

import com.cn.bean.Airport;
import com.cn.bean.User;
import com.cn.dao.AirportDao;
import com.cn.service.AirportService;
import com.opensymphony.xwork2.ActionContext;

public class AirportServiceImpl implements AirportService{
	private AirportDao airportDao=null;
	private Map<String, Object> session;
	public void setAirportDao(AirportDao airportDao)
	{
		this.airportDao=airportDao;
	}
	
	public boolean find(Airport airport)
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map <String, Object>) ctx.getSession();
		String portname=airport.getPortname();
		String hql="from Airport as airport where portname='"+ portname +"'";
		List list=airportDao.findByHql(hql);
		if(list.isEmpty())
			return false;
		else
		{
			airport=(Airport)list.get(0);
			session.put("airport", airport);
			return true;
		}
	}
	
	public boolean add(Airport airport)
	{
		ActionContext ctx= ActionContext.getContext();
		if(airportDao.save(airport))
			return true;
		else 
			return false;
	}
	
	public boolean delete(Airport airport)
	{
		ActionContext ctx= ActionContext.getContext();

		String portname=airport.getPortname();
		String hql="from Airport as airport where portname='"+ portname + "'";
		List list=airportDao.findByHql(hql);
		if(list.isEmpty())
			return false;
		else
			{
			Airport delairport=(Airport)list.get(0);	
			airportDao.delete(delairport);
			return true;
			}

	}
	
	public boolean update(Airport airport)
	{
		ActionContext ctx= ActionContext.getContext();

		if(airportDao.update(airport))
			return true;
		else 
			return false;
	}
}
