package com.xingfeng.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingfeng.dao.IXftxThemeDao;
import com.xingfeng.domain.XftxTheme;
import com.xingfeng.form.XftxThemeForm;
import com.xingfeng.service.IXftxThemeService;


@Transactional(readOnly=true)
@Service(IXftxThemeService.SERVICE_NAME)
public class XftxThemeServiceImpl  implements IXftxThemeService{

	@Resource(name=IXftxThemeDao.SERVICE_NAME)
	private IXftxThemeDao iXftxThemeDao;

	
	
	/**  
	* @Name: findObjectAll
	* @Description: 查询XftxTheme表的所有记录
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: 无
	* @Return:  List<XftxThemeForm> XftxThemeForm表的所有记录集合
	*/
	public List<XftxThemeForm> findObjectAll() {
		List<XftxTheme> list = iXftxThemeDao.findObjectAll();
		List<XftxThemeForm> lists=this.XftxThemePoToXftxThemeFormVo(list);
		return lists;
	}

	
	/**  
	* @Name: XftxThemePoToXftxThemeFormVo
	* @Description: 将PO对象转化成VO对象
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: List<XftxTheme> list
	* @Return:  List<XftxThemeForm> 
	*/
	private List<XftxThemeForm> XftxThemePoToXftxThemeFormVo(
			List<XftxTheme> list) {
		List<XftxThemeForm> arrayList=new ArrayList<XftxThemeForm>();
		XftxThemeForm xftxThemeForm=null;
		for (int i = 0; i < list.size(); i++) {
			xftxThemeForm=new XftxThemeForm();
			xftxThemeForm.setThemeId(list.get(i).getThemeid());
			xftxThemeForm.setThemeName(list.get(i).getThemename());
			xftxThemeForm.setThemeAbout(list.get(i).getThemeabout());
			arrayList.add(xftxThemeForm);
		}
		return arrayList;
	}
	

	
}
