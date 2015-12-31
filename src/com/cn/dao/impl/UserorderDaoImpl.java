package com.cn.dao.impl;

import org.hibernate.Session;

import com.cn.bean.Userorder;
import com.cn.dao.UserorderDao;

public class UserorderDaoImpl extends BaseHibernateDaoImpl implements UserorderDao{


	public boolean buyTicket(Session session) {
		return false;
	}

}
