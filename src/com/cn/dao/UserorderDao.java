package com.cn.dao;

import org.hibernate.Session;


public interface UserorderDao extends BaseHibernateDao{
	public boolean buyTicket(Session session);
}
