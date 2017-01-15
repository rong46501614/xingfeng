package com.xingfeng.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;

import com.xingfeng.dao.IXftxUserDao;
import com.xingfeng.domain.XftxUser;

@Repository(IXftxUserDao.SERVICE_NAME)
public class XftxUserDaoImpl extends CommenDaoImpl<XftxUser> implements IXftxUserDao{

	
	
	/**  
	* @Name: findXftxUserByuserLogin
	* @Description: 根据userLogin字段查询用户
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: final String userLogin
	* @Return:  List<XftxUser> 查询出的用户信息。
	*/
	public List<XftxUser> findXftxUserByuserLogin(final String userLogin) {
		 @SuppressWarnings({ "unchecked" })
		List<XftxUser> list= (List<XftxUser>) this.getHibernateTemplate().execute(new HibernateCallback(){
			String sqlss="from XftxUser " + 
					   " where  userLogin=?";
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Query query=session.createQuery(sqlss);
				query.setParameter(0, userLogin);
				
				return query.list();
			}
			
		});
		return list;
	}
}
