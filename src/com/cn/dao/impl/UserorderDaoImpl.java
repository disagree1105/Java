package com.cn.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.SessionFactoryUtils;

import com.cn.bean.Flight;
import com.cn.bean.User;
import com.cn.bean.Userorder;
import com.cn.dao.UserorderDao;

public class UserorderDaoImpl extends BaseHibernateDaoImpl implements UserorderDao{

	private SessionFactory sessionFactory;
	public Session getSession() {
		return sessionFactory.getCurrentSession();
			
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public boolean buyTicket(User user, Flight flight) {
		try {
			Userorder userorder=new Userorder();
			userorder.setUsername(user.getUsername());
			userorder.setOriginstation(flight.getOriginstation());
			userorder.setTerminalstation(flight.getTerminalstation());
			userorder.setOrigintime(flight.getOrigintime());
			userorder.setTerminaltime(flight.getTerminaltime());
			userorder.setPrice(flight.getPrice());
			System.out.println(user.getUsername());
			System.out.println(userorder.getUsername());
			getSession().beginTransaction();
			getSession().save(userorder);
			getSession().getTransaction().commit();
			return true;
		} catch (RuntimeException re) {
			re.printStackTrace();
			return false;
		}
	}
	
	
	
	protected Connection getConnection() {
		Connection con = null;
		try {
			con = SessionFactoryUtils.getDataSource(sessionFactory).getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

}
