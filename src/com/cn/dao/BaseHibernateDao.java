package com.cn.dao;

import java.util.List;

public interface BaseHibernateDao {
	public boolean save(Object object);//存储新的对象

	public boolean update(Object object);//更新对象

	public boolean delete(Object object);//删除对象

	public List<Object> findByHql(String hql);//利用hql语句查询
	
	
}
