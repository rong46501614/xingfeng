package com.xingfeng.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingfeng.dao.IXftxCityDao;
import com.xingfeng.domain.XftxCity;
import com.xingfeng.domain.XftxCountry;
import com.xingfeng.domain.XftxProvince;
import com.xingfeng.form.XftxCityForm;
import com.xingfeng.service.IXftxCityService;


@Transactional(readOnly=true)
@Service(IXftxCityService.SERVICE_NAME)
public class XftxCityServiceImpl  implements IXftxCityService{

	@Resource(name=IXftxCityDao.SERVICE_NAME)
	private IXftxCityDao iXftxCityDao;

	/**  
	* @Name: findObjectAll
	* @Description: 查询XftxCityForm表的所有记录
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: 无
	* @Return:  List<XftxCityForm> XftxCityForm表的所有记录集合
	*/
	public List<XftxCityForm> findObjectAll() {
		List<XftxCity> list=iXftxCityDao.findObjectAll();
		List<XftxCityForm> arrayList=this.XftxCountryPoToXftxCountryFormVo(list);
		return arrayList;
	}

	
	/**  
	* @Name: XftxCountryPoToXftxCountryFormVo
	* @Description: 将PO对象转化成VO对象
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: List<XftxCity> list
	* @Return:  List<XftxCityForm> 
	*/
	private List<XftxCityForm> XftxCountryPoToXftxCountryFormVo(
			List<XftxCity> list) {
		List<XftxCityForm> arrayList=new ArrayList<XftxCityForm>();
		XftxCityForm xftxCityForm=null;
		for (int i = 0; i < list.size(); i++) {
			xftxCityForm=new XftxCityForm();
			xftxCityForm.setCityId(list.get(i).getCityid());
			xftxCityForm.setCityName(list.get(i).getCityname());
			xftxCityForm.setCountryId(((XftxCountry)list.get(i).getXftxCountry()).getCountryid());
			xftxCityForm.setProvinceId(((XftxProvince)list.get(i).getXftxProvince()).getProvinceid());
			arrayList.add(xftxCityForm);
		}
		return arrayList;
	}

	
	
	/**  
	* @Name: findCityByProvinceId
	* @Description: 根据省ID号查询其下所有城市
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: String provinceId
	* @Return:  List<XftxCityForm> 
	*/
	public List<XftxCityForm> findCityByProvinceId(String provinceId) {
		String hqlWhere="and provinceId=?";
		String [] params={provinceId};
		List<XftxCity> list=iXftxCityDao.findCollectionByConditionNoPage(hqlWhere, params, null);
		List<XftxCityForm> arrayList=this.XftxCountryPoToXftxCountryFormVo(list);
		return arrayList;
	}
	
	
	
	
	/**  
	* @Name: findCityByProvinceId
	* @Description: 根据国家ID号查询其下所有城市
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: String countryId
	* @Return:  List<XftxCityForm> 
	*/
	public List<XftxCityForm> findCityByCountryId(String countryId) {
		String hqlWhere="and countryId=?";
		String [] params={countryId};
		List<XftxCity> list=iXftxCityDao.findCollectionByConditionNoPage(hqlWhere, params, null);
		List<XftxCityForm> arrayList=this.XftxCountryPoToXftxCountryFormVo(list);
		return arrayList;
	}

	


	
}
