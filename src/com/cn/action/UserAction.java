package com.cn.action;

import java.util.List;

import com.cn.bean.User;
import com.cn.service.UserService;

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
			if(userService.login(user))
			{
				return "success";
			}
			return "fail";
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
		public String list()
		{
			
			if(userService.list(user))	
			return "success";
			else
			return "fail";
		}
}
