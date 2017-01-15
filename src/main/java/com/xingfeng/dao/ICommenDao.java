package com.xingfeng.dao;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;

public interface ICommenDao<T> {
	
	void save(T entity);
	public void update(T entity);
	public T findObjectByID(Serializable id);
	public void deleteObjectByIDs(Serializable... ids);
	public void deleteObjectByCollection(Collection<T> entities);
	public List<T> findCollectionByConditionNoPage(String hqlWhere,
			final Object[] params, LinkedHashMap<String, String> orderby);
	List<T> findObjectAll();
	List<T> findListBySql(String sql);
}
