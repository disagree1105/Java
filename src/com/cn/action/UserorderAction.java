package com.cn.action;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;

import com.cn.bean.Flight;
import com.cn.bean.User;
import com.cn.bean.Userorder;
import com.cn.service.AirportService;
import com.cn.service.FlightService;
import com.cn.service.UserService;
import com.cn.service.UserorderService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserorderAction extends ActionSupport{
  	private Userorder userorder;
	private User user;
  	private Flight flight;
  	private UserService userService=null;
  	private FlightService flightService=null;
  	

	public FlightService getFlightService() {
		return flightService;
	}
	public void setFlightService(FlightService flightService) {
		this.flightService = flightService;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
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
		if(!userService.find(user))
		{
			this.addActionError("没有此用户！");
			return "fail";			
		}
//		if(!flightService.check(userorder.getOriginstation()))
//		{
//			return "fail";
//		}
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
		
	public String listMyUserorders(){
		Map request = (Map) ActionContext.getContext().get("request");
		List<Object> list=userorderService.listMy(user);
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
