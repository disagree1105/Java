package com.cn.action;

import java.util.List;
import java.util.Map;

import com.cn.bean.User;
import com.cn.service.UserService;
import com.opensymphony.xwork2.ActionContext;

public class UserAction {
	    private User user;
	    private UserService userService=null;
	    private List list;
	    
	    public List getList() {
			return list;
		}
		public void setList(List list) {
			this.list = list;
		}
		public void setUser(User user)
	    {
	    	this.user=user;
	    }
	    public User getUser()
	    {
	    	return user;
	    }
	    
	    public void setUserService(UserService userService)
	    {
	    	this.userService=userService;
	    }
	    public UserService getUserService()
	    {
	    	return userService;
	    }
		public String register(){
				if(userService.register(user))	
				return "success";
				else
				return "fail";
		}
		public String login()
		{
			return userService.login(user);
		}
		public String delete(){
			if(userService.delete(user))	
			return "success";
			else
			return "fail";
	}
		public String update(){
			if(userService.update(user))	
			return "success";
			else
			return "fail";
	}
		public String listAllUsers()
		{
			Map request = (Map) ActionContext.getContext().get("request");
			 request.put("list", userService.list());  
				return "success";
		}
		
		public String updateUserByManager(){
			if(userService.updateUserByManager(user))	
			return "success";
			else
			return "fail";
		}	
		
	
}
