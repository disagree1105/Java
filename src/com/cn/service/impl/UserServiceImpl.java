package com.cn.service.impl;

import com.cn.bean.User;
import com.cn.bean.Userorder;
import com.cn.dao.BaseHibernateDao;
import com.cn.dao.UserDao;
import com.cn.dao.impl.BaseHibernateDaoImpl;
import com.cn.dao.impl.UserDaoImpl;
import com.cn.service.UserService;
import com.opensymphony.xwork2.ActionContext;

import java.util.List;
import java.util.Map;

import org.hibernate.Transaction;


public class UserServiceImpl implements UserService{
	private Map<String, Object> request,session;
	private UserDao userDao=null;
	
	public void setUserDao(UserDao userDao)
	{
		this.userDao=userDao;
	}
	
	@SuppressWarnings("unchecked")
	public String login(User user)
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map<String, Object>) ctx.getSession();
		request=(Map<String, Object>) ctx.get("request");
		String username=user.getUsername();
		String password=user.getPassword();
		String hql="from User as user where username='"+ username + "'and password = '"
		+ password +"'";
		List list=userDao.findByHql(hql);
		if(list.isEmpty())
			return "fail";
		else
			{
			user=(User)list.get(0);
			session.put("user", user);
			request.put("tip","µÇÂ¼³É¹¦£¡");		
			request.put("user",user);
			System.out.println(user.getType());
			return user.getType();
			}
	}

	public boolean register(User user)
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map<String, Object>) ctx.getSession();
		if(userDao.save(user))
			{
			session.put("user", user);
			return true;
			}
		else 
			return false;
	}
	
	public boolean delete(User user)
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map<String, Object>) ctx.getSession();
		String username=user.getUsername();
		String hql="from User as user where username='"+ username + "'";
		List list=userDao.findByHql(hql);
		if(list.isEmpty())
			return false;
		else
			{
			User deluser=(User)list.get(0);	
				userDao.delete(deluser);
				session.remove("user");
			return true;
			
			}

	}
	
	public boolean update(User user)
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map <String, Object>) ctx.getSession();
		if(userDao.update(user))
			{
			session.put("user", user);
			return true;
			}
		else 
			return false;
	}
	
	public List list()
	{
		String hql="from User";
		List list=userDao.findByHql(hql);
			return list;
	}
	
	public boolean find(Userorder order)
	{
		String hql="from User where username='"+order.getUsername()+"'";
		List list=userDao.findByHql(hql);
		if(list.isEmpty())
			return false;
		else
			return true;
	}
	public boolean updateUserByManager(User user) 
	{
		ActionContext ctx= ActionContext.getContext();
		session=(Map<String, Object>) ctx.getSession();
		String username=user.getUsername();
		String hql="from User as user where username='"+ username + "'";
		List list=userDao.findByHql(hql);
		if(list.isEmpty())
			return false;
		else
			{
			User updateuser=new User();
			updateuser=(User)list.get(0);
			session.put("updateuser", updateuser);
			return true;
			}
	}

}
