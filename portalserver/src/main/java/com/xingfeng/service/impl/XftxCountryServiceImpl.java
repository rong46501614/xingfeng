package com.xingfeng.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.xingfeng.dao.IXftxCountryDao;
import com.xingfeng.domain.XftxCountry;
import com.xingfeng.form.XftxCountryForm;
import com.xingfeng.service.IXftxCountryService;


@Transactional(readOnly=true)
@Service(IXftxCountryService.SERVICE_NAME)
public class XftxCountryServiceImpl  implements IXftxCountryService{

	@Resource(name=IXftxCountryDao.SERVICE_NAME)
	private IXftxCountryDao iXftxCountryDao;
	
	/**  
	* @Name: saveXftxCountry
	* @Description: 保存国家对象
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: XftxCountry xftxCountry
	* @Return: 无
	*/
	@Transactional(isolation=Isolation.DEFAULT,propagation=Propagation.REQUIRED,readOnly=false)
	public void saveXftxCountry(XftxCountry xftxCountry) {
		iXftxCountryDao.save(xftxCountry);
	}


	/**  
	* @Name: findObjectAll
	* @Description: 查询所有的国家记录
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: 无
	* @Return: List<XftxCountryForm>
	*/
	public List<XftxCountryForm> findObjectAll() {
		List<XftxCountry> list=iXftxCountryDao.findObjectAll();
		List<XftxCountryForm> arrayList=this.XftxCountryPoToXftxCountryFormVo(list);
		return arrayList;
	}


	/**  
	* @Name: XftxCountryPoToXftxCountryFormVo
	* @Description: 将PO对象转化成VO对象
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: List<XftxCountry> list
	* @Return:  List<XftxCountryForm>
	*/
	private List<XftxCountryForm> XftxCountryPoToXftxCountryFormVo(
			List<XftxCountry> list) {
		List<XftxCountryForm> arrayList=new ArrayList<XftxCountryForm>();
		XftxCountryForm xftxCountryForm=null;
		for (int i = 0; i < list.size(); i++) {
			xftxCountryForm=new XftxCountryForm();
			xftxCountryForm.setCountryId(list.get(i).getCountryid());
			xftxCountryForm.setCountryName(list.get(i).getCountryname());
			xftxCountryForm.setCountryNameEn(list.get(i).getCountrynameen());
			xftxCountryForm.setCountryTime(list.get(i).getCountrytime());
			arrayList.add(xftxCountryForm);
		}
		return arrayList;
	}


	
}
