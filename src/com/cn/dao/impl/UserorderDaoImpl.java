package com.cn.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.SessionFactoryUtils;

import com.cn.bean.Airport;
import com.cn.bean.Flight;
import com.cn.bean.User;
import com.cn.bean.Userorder;
import com.cn.dao.AirportDao;
import com.cn.dao.FlightDao;
import com.cn.dao.UserDao;
import com.cn.dao.UserorderDao;
import com.cn.service.UserService;
import com.opensymphony.xwork2.ActionContext;

public class UserorderDaoImpl extends BaseHibernateDaoImpl implements UserorderDao{
	private SessionFactory sessionFactory;
	private UserDao userDao=null;
	

	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public Session getSession() {
		return sessionFactory.getCurrentSession();
			
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public boolean buyTicket(User user, Flight flight) {

		try {
			Integer userid=user.getUserid();
			Integer flightid=flight.getFlightid();
			String hql="from Flight as flight where flightid='"+ flightid +"'";
			Session session =getSession();
			session.beginTransaction();
			Query query=session.createQuery(hql);
			List flightlist=query.list();
			flight=(Flight)flightlist.get(0);
			if(flight.getTicketleft()==0)
				{
				session.getTransaction().commit();
				return false;
				}
			
			String sql="update Flight set ticketleft=ticketleft-1 where flightid ='"+flightid+"'";
			SQLQuery sqlquery = this.getSession().createSQLQuery(sql); 
			sqlquery.executeUpdate();  
			
			hql="from User as user where userid='"+userid+"'";
			query=session.createQuery(hql);
			List userlist=query.list();
			
			
			session.getTransaction().commit();
			if(flightlist.isEmpty())
			{
				System.out.println("flightid is + "+flightid+" list is empty");
				return false;
			}
			if(userlist.isEmpty())
			{
				System.out.println("userid is + "+userid+" list is empty");
				return false;
			}
			
			

			
			user=(User)userlist.get(0);
			Userorder userorder=new Userorder();
			userorder.setUsername(user.getUsername());
			userorder.setOriginstation(flight.getOriginstation());
			userorder.setTerminalstation(flight.getTerminalstation());
			userorder.setOrigintime(flight.getOrigintime());
			userorder.setTerminaltime(flight.getTerminaltime());
			
			if(user.getPoint()>=1000)
				userorder.setPrice((float)(flight.getPrice()*0.95));
			if(user.getPoint()>=2000)
				userorder.setPrice((float)(flight.getPrice()*0.9));
			if(user.getPoint()>=5000)
				userorder.setPrice((float)(flight.getPrice()*0.8));
			
			user.setPoint(user.getPoint()+(int)(userorder.getPrice()*0.1));	
//			
			Map<String, Object> session1;			
			ActionContext ctx= ActionContext.getContext();
			session1=(Map<String, Object>) ctx.getSession();
//			getSession().beginTransaction();
			userDao.update(user);
			session1.put("user",user);
			session1.put("addpoint", (int)(userorder.getPrice()*0.1));
//			getSession().getTransaction().commit();
			
			
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
