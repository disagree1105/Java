package com.cn.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.SessionFactoryUtils;



public class BaseHibernateDaoImpl {
	private SessionFactory sessionFactory;// �Ự����

	/**
	 * ��ȡ�Ự
	 * 
	 * @return ��ǰ�Ự
	 */
	public Session getSession() {
		return sessionFactory.getCurrentSession();
			
	}

	// set method
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// other methods
	public boolean save(Object object) {
		// TODO Auto-generated method stub
		try {
			getSession().beginTransaction();
			getSession().save(object);
			getSession().getTransaction().commit();
			return true;
		} catch (RuntimeException re) {
			re.printStackTrace();
			return false;
		}
	}

	public boolean update(Object object) {
		// TODO Auto-generated method stub
		try {
			getSession().beginTransaction();
			getSession().update(object);
			getSession().getTransaction().commit();
			return true;
		} catch (RuntimeException re) {
			re.printStackTrace();
			return false;
		}
	}

	public boolean delete(Object object) {
		// TODO Auto-generated method stub
		try {
			getSession().beginTransaction();
			getSession().delete(object);
			getSession().getTransaction().commit();
			return true;
		} catch (RuntimeException re) {
			re.printStackTrace();
			return false;
		}
	}


	public List<Object> findByHql(String hql) {
		// TODO Auto-generated method stub
		try {
			String queryString = hql;
			getSession().beginTransaction();
			Query queryObject = getSession().createQuery(queryString);
			List<Object> list = queryObject.list();
			getSession().getTransaction().commit();
			return list;
		} catch (RuntimeException re) {
			throw re;
		}
	}
	/**
	 * ������ݿ�����
	 * 
	 * @return ���ݿ�����
	 */
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
