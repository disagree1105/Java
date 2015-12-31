package com.cn.dao;

import org.hibernate.Session;

import com.cn.bean.Flight;
import com.cn.bean.User;
import com.cn.bean.Userorder;


public interface UserorderDao extends BaseHibernateDao{
	public boolean buyTicket(User user,Flight flight);
}
