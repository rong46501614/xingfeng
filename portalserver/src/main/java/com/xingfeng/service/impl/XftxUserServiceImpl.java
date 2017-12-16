package com.xingfeng.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.xingfeng.dao.IXftxUserDao;
import com.xingfeng.domain.XftxUser;
import com.xingfeng.service.IXftxUserService;


@Transactional(readOnly=true)
@Service(IXftxUserService.SERVICE_NAME)
public class XftxUserServiceImpl  implements IXftxUserService{

	@Resource(name=IXftxUserDao.SERVICE_NAME)
	private IXftxUserDao iUserDao;
	

	/**  
	* @Name: saveXftxUser
	* @Description: 保存用户
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: XftxUser xftxUser
	* @Return: 无
	*/
	@Transactional(isolation=Isolation.DEFAULT,propagation=Propagation.REQUIRED,readOnly=false)
	public void saveXftxUser(XftxUser xftxUser) {
		iUserDao.save(xftxUser);
	}
	


	/**  
	* @Name: checkUser
	* @Description: 根据登录账号验证用户是否存在
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: String userLogin, String userPasswd
	* @Return: List<XftxUser>
	*/
	public List<XftxUser> checkUser(String userLogin, String userPasswd) {
		List<XftxUser> al= iUserDao.findXftxUserByuserLogin(userLogin);
		return al;
	}


	/**  
	* @Name: checkUser
	* @Description: 根据登录账号与密码验证用户是否合法
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: String userLogin, String userPasswd，XftxUser xftxUser
	* @Return: List<XftxUser>
	*/
	public boolean checkUserPasswd(String userLogin, String userPasswd,
			XftxUser xftxUser) {
		String passwd=xftxUser.getUserpasswd();
		if(userPasswd!=null&&passwd!=null&&passwd.equals(userPasswd)){
			//密码验证成功
			return true;
		}else{
			//密码验证不成功
			return false;
		}
		
	}



	@Transactional(isolation=Isolation.DEFAULT,propagation=Propagation.REQUIRED,readOnly=false)
	public void updateXftxUser(XftxUser xftxUser) {
		// TODO Auto-generated method stub
		iUserDao.update(xftxUser);
	}
	
}
