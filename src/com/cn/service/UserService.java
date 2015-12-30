
package com.cn.service;

import java.util.List;

import com.cn.bean.User;

public interface UserService {
	
	public boolean register(User user);

	public boolean login(User user);
	
	public boolean delete(User user);
	
	public boolean update(User user);
	
	public boolean updateUserByManager(User user);
	
	public List list();
	
	
}
