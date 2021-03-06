
package com.cn.service;

import java.util.List;

import com.cn.bean.User;
import com.cn.bean.Userorder;

public interface UserService {
	
	public boolean register(User user);

	public String login(User user);
	
	public boolean delete(User user);
	
	public boolean update(User user);
	
	public boolean updateUserByManager(User user);
	
	public List list();
	
	public boolean find(Userorder order);
	
	public boolean checkReg(User user);
}
