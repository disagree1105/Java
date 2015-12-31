package com.cn.dao;


import com.cn.bean.Flight;
import com.cn.bean.User;


public interface UserorderDao extends BaseHibernateDao{
	public boolean buyTicket(User user,Flight flight);
}
