package com.cn.action;

import java.util.List;
import java.util.Map;

import com.cn.bean.User;
import com.cn.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{
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
			if(!userService.checkReg(user))
				{
				this.addActionError("注册失败！已有相同的用户名注册！");
				return "fail";
				}
				if(userService.register(user))	
				return "success";
				else
				return "fail";
		}
		public String login()
		{
			if(userService.login(user)=="fail")
				this.addActionError("用户名或密码错误，请重新输入！");
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
