package com.cn.service.impl;

import java.util.List;
import java.util.Map;

import com.cn.bean.Flight;
import com.cn.bean.User;
import com.cn.bean.Userorder;
import com.cn.dao.UserorderDao;
import com.cn.service.UserorderService;
import com.opensymphony.xwork2.ActionContext;

public class UserorderServiceImpl implements UserorderService{
	private UserorderDao userorderDao=null;
	private Map<String, Object> session;
	public void setUserorderDao(UserorderDao useruserorderDao)
	{
		this.userorderDao=useruserorderDao;
	}
	
	public boolean find(Userorder userorder)
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map <String, Object>) ctx.getSession();
		Integer userorderid=userorder.getOrderid();
		String hql="from Userorder as userorder where userorderid='"+ userorderid +"'";
		List list=userorderDao.findByHql(hql);
		if(list.isEmpty())
			return false;
		else
		{
			userorder=(Userorder)list.get(0);
			session.put("userorder", userorder);
			return true;
		}
	}
	
	public boolean add(Userorder userorder)
	{
		ActionContext ctx= ActionContext.getContext();
		if(userorderDao.save(userorder))
			return true;
		else 
			return false;
	}
	
	public boolean delete(Userorder userorder)
	{
		ActionContext ctx= ActionContext.getContext();
		Integer userorderid=userorder.getOrderid();
		String hql="from Userorder as userorder where orderid='"+ userorderid + "'";
		List list=userorderDao.findByHql(hql);
		if(list.isEmpty())
			return false;
		else
			{
			Userorder deluserorder=(Userorder)list.get(0);	
			userorderDao.delete(deluserorder);
			return true;
			}

	}
	
	public boolean update(Userorder userorder)
	{
		if(userorderDao.update(userorder))
			return true;
		else 
			return false;
	}

	
	public List<Object> list() {
		String hql="from Userorder";
		List<Object> list=userorderDao.findByHql(hql);
		return list;
	}

	
	public boolean updateUserorderByManager(Userorder userorder) {
		ActionContext ctx= ActionContext.getContext();
		session=(Map<String, Object>) ctx.getSession();
		Integer userorderid=userorder.getOrderid();
		String hql="from Userorder as userorder where orderid='"+ userorderid + "'";
		List<?> list=userorderDao.findByHql(hql);
		if(list.isEmpty())
			return false;
		else
			{
			userorder=(Userorder)list.get(0);
			session.put("userorder", userorder);
			return true;
			}
	}

	public boolean buyTicket(User user,Flight flight) {
		if(userorderDao.buyTicket(user,flight))
			return true;
		else
		return false;
	}


}
