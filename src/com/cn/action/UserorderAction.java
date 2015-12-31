package com.cn.action;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;

import com.cn.bean.Flight;
import com.cn.bean.User;
import com.cn.bean.Userorder;
import com.cn.service.UserorderService;
import com.opensymphony.xwork2.ActionContext;

public class UserorderAction {
  	private Userorder userorder;
	private User user;
  	private Flight flight;
  	
  	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Flight getFlight() {
		return flight;
	}
	public void setFlight(Flight flight) {
		this.flight = flight;
	}


    private UserorderService userorderService=null;
    
    public void setUserorder(Userorder userorder)
    {
    	this.userorder=userorder;
    }
    public Userorder getUserorder()
    {
    	return userorder;
    }
    
    public void setUserorderService(UserorderService userorderService)
    {
    	this.userorderService=userorderService;
    }
    public UserorderService getUserorderService()
    {
    	return userorderService;
    }
	public String add(){
			if(userorderService.add(userorder))	
			return "success";
			else
			return "fail";
	}
	public String find()
	{
		if(userorderService.find(userorder))
		{
			return "success";
		}
		return "fail";
	}
	public String delete(){
		if(userorderService.delete(userorder))	
		return "success";
		else
		return "fail";
}
	public String update(){
		if(userorderService.update(userorder))	
		return "success";
		else
		return "fail";
}
	public String listAllUserorders(){
		Map request = (Map) ActionContext.getContext().get("request");
		List<Object> list=userorderService.list();
		if(list!=null)
		 {
			request.put("list", list);  
			return "success";
		 }
		else 
			return "fail";
		 }
		
	public String updateUserorderByManager(){
		if(userorderService.updateUserorderByManager(userorder))	
			return "success";
			else
			return "fail";
	
	}
	
	public String buyTicket(){
		
		if(userorderService.buyTicket(user,flight))	
		return "success";
		else
		return "fail";
}
}
