package com.xingfeng.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingfeng.dao.IXftxProvinceDao;
import com.xingfeng.domain.XftxProvince;
import com.xingfeng.form.XftxProvinceForm;
import com.xingfeng.service.IXftxProvinceService;


@Transactional(readOnly=true)
@Service(IXftxProvinceService.SERVICE_NAME)
public class XftxProvinceServiceImpl  implements IXftxProvinceService{

	@Resource(name=IXftxProvinceDao.SERVICE_NAME)
	private IXftxProvinceDao iXftxProvinceDao;

	/**  
	* @Name: findObjectAll
	* @Description: 查询XftxProvince表的所有记录
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: 无
	* @Return:  List<XftxProvinceForm> XftxProvince表的所有记录集合
	*/
	public List<XftxProvinceForm> findObjectAll() {
		List<XftxProvince> list=iXftxProvinceDao.findObjectAll();
		List<XftxProvinceForm> arrayList=this.XftxProvincePoToXftxProvinceFormVo(list);
		return arrayList;
	}

	
	/**  
	* @Name: findProvinceByCountryId
	* @Description: 根据countryId查询省记录
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: String countryId
	* @Return:  List<XftxProvinceForm> XftxProvince表的所有记录集合
	*/
	public List<XftxProvinceForm> findProvinceByCountryId(String countryId) {
		String hqlWhere="and countryId=?";
		String [] params={countryId};
		List<XftxProvince> list=iXftxProvinceDao.findCollectionByConditionNoPage(hqlWhere, params, null);
		List<XftxProvinceForm> arrayList=this.XftxProvincePoToXftxProvinceFormVo(list);
		return arrayList;
	}


	/**  
	* @Name: XftxProvincePoToXftxProvinceFormVo
	* @Description: 将PO对象转化成VO对象
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: List<XftxProvince> list
	* @Return:  List<XftxProvinceForm> 
	*/
	private List<XftxProvinceForm> XftxProvincePoToXftxProvinceFormVo(
			List<XftxProvince> list) {
		List<XftxProvinceForm> arrayList=new ArrayList<XftxProvinceForm>();
		XftxProvinceForm xftxProvinceForm=null;
		for (int i = 0; i < list.size(); i++) {
			xftxProvinceForm=new XftxProvinceForm();
			xftxProvinceForm.setProvinceId(list.get(i).getProvinceid());
			xftxProvinceForm.setCountryId(list.get(i).getXftxCountry().getCountryid());
			xftxProvinceForm.setProvinceName(list.get(i).getProvincename());
			arrayList.add(xftxProvinceForm);
		}
		return arrayList;
	}

	
}
