package com.cn.dao;

import java.util.List;

public interface BaseHibernateDao {
	public boolean save(Object object);//�洢�µĶ���

	public boolean update(Object object);//���¶���

	public boolean delete(Object object);//ɾ������

	public List<Object> findByHql(String hql);//����hql����ѯ
	
	
}
