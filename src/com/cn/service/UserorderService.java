package com.cn.service;

import java.util.List;

import com.cn.bean.Flight;
import com.cn.bean.User;
import com.cn.bean.Userorder;

public interface UserorderService {
	public boolean add(Userorder userorder);

	public boolean find(Userorder userorder);
	
	public boolean delete(Userorder userorder);
	
	public boolean update(Userorder userorder);
	
	public boolean buyTicket(User user,Flight flight);
	
	public boolean updateUserorderByManager(Userorder userorder);
	
	public List<Object> list();
}
