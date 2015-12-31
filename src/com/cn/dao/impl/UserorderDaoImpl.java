package com.cn.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.SessionFactoryUtils;

import com.cn.bean.Airport;
import com.cn.bean.Flight;
import com.cn.bean.User;
import com.cn.bean.Userorder;
import com.cn.dao.AirportDao;
import com.cn.dao.FlightDao;
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
			
			Integer flightid=flight.getFlightid();
			String hql="from Flight as flight where flightid='"+ flightid +"'";
			Session session =getSession();
			session.beginTransaction();
			Query query=session.createQuery(hql);
			List list=query.list();
			session.getTransaction().commit();
			if(list.isEmpty())
			{
				System.out.println("flightid is + "+flightid+" list is empty");
				return false;
			}
			flight=(Flight)list.get(0);
			Userorder userorder=new Userorder();
			userorder.setUsername(user.getUsername());
			userorder.setOriginstation(flight.getOriginstation());
			userorder.setTerminalstation(flight.getTerminalstation());
			userorder.setOrigintime(flight.getOrigintime());
			userorder.setTerminaltime(flight.getTerminaltime());
			userorder.setPrice(flight.getPrice());
			System.out.println(user.getUsername());
			System.out.println(userorder.getUsername());
			System.out.println(flight.getFlightid());
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
