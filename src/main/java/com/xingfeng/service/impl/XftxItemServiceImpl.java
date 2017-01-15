package com.xingfeng.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.xingfeng.dao.IXftxItemDao;
import com.xingfeng.domain.XftxCity;
import com.xingfeng.domain.XftxCountry;
import com.xingfeng.domain.XftxItem;
import com.xingfeng.domain.XftxTheme;
import com.xingfeng.domain.XftxUser;
import com.xingfeng.form.XftxItemForm;
import com.xingfeng.service.IXftxItemService;


@Transactional(readOnly=true)
@Service(IXftxItemService.SERVICE_NAME)
public class XftxItemServiceImpl  implements IXftxItemService{

	@Resource(name=IXftxItemDao.SERVICE_NAME)
	private IXftxItemDao iXftxItemDao;
	

	/**  
	* @Name: saveItemForm
	* @Description: 保存项目
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters:  XftxItemForm xftxItemForm,  项目基本信息
	* 				XftxUser xftxUser, 			项目建立人员Id
	* 				String itemImgPath			项目缩略图路径
	* @Return:  无
	*/
	@Transactional(isolation=Isolation.DEFAULT,propagation=Propagation.REQUIRED,readOnly=false)
	public void saveItemForm(XftxItemForm xftxItemForm, XftxUser xftxUser, String itemImgPath) {
		// TODO Auto-generated method stub
		XftxItem xftxItem=new XftxItem();
		xftxItem.setItemname(xftxItemForm.getItemName());
		if(xftxItemForm.getItemTheme()==null||"themeName".equals(xftxItemForm.getItemTheme())){
			XftxTheme xftxTheme = new XftxTheme();
			xftxTheme.setThemeid("theme_001");
			xftxItem.setXftxTheme(xftxTheme);
		}else{
			XftxTheme xftxTheme = new XftxTheme();
			xftxTheme.setThemeid(xftxItemForm.getItemTheme());
			xftxItem.setXftxTheme(xftxTheme);
		}
		if(xftxItemForm.getItemAbout()==null||"".equals(xftxItemForm.getItemAbout())){
			xftxItem.setItemabout("hello");
		}else{
			xftxItem.setItemabout(xftxItemForm.getItemAbout());
		}
		if(xftxItemForm.getItemCountry()==null||"countryName".equals(xftxItemForm.getItemCountry())){
			XftxCountry  xftxCountry=new XftxCountry();
			xftxCountry.setCountryid("XFTX001");
			xftxItem.setXftxCountry(xftxCountry);
		}else{
			XftxCountry  xftxCountry=new XftxCountry();
			xftxCountry.setCountryid(xftxItemForm.getItemCountry());
			xftxItem.setXftxCountry(xftxCountry);
		}
		xftxItem.setItembuildtime(new Date());
		if(xftxItemForm.getItemCity()==null||"".equals(xftxItemForm.getItemCity())){
			XftxCity xftxCity=new XftxCity();
			xftxCity.setCityid("City_0001");
			xftxItem.setXftxCity(xftxCity);
		}else{
			XftxCity xftxCity=new XftxCity();
			xftxCity.setCityid(xftxItemForm.getItemCity());
			xftxItem.setXftxCity(xftxCity);
		}
		xftxItem.setXftxUser(xftxUser);
		xftxItem.setItemimgpath(itemImgPath);
		iXftxItemDao.save(xftxItem);
	}

	/**  
	* @Name: findXftxItemByUserIdAndTime
	* @Description: 根据userId与时间查询刚刚创建的项目
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters:  XftxUser xftxUser
	* @Return:  List 其中存在的为Object数组。
	*/
	@SuppressWarnings("rawtypes")
	public List findXftxItemByUserIdAndTime(XftxUser xftxUser) {
		String sql="select * from ( SELECT mm.*,rownum rn FROM (SELECT t.* FROM xftx_item t where itembuilduserId='"+xftxUser.getUserid()+"' ORDER BY itembuildtime desc) mm ) WHERE rn ='1'";
		List list = iXftxItemDao.findListBySql(sql);
		return list;
	}

	
	/**  
	* @Name: findXftxItemByThemeId
	* @Description: 根据themeId查询项目,以时间排序，后创建的显示在前
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters:  String themeId 
	* @Return:  List<XftxItemForm>
	*/
	public List<XftxItemForm> findXftxItemByThemeId(String themeId) {
		String hqlWhere="and itemTheme=?";
		String[] params={themeId};
		LinkedHashMap<String, String> order=new LinkedHashMap<String, String>();
		order.put("ITEMBUILDTIME", "desc");
		List<XftxItem> list = iXftxItemDao.findCollectionByConditionNoPage(hqlWhere, params, order);
		List<XftxItemForm> lists=this.XftxItemPoToXftxItemFormVo(list);
		return lists;
	}

	/**  
	* @Name: XftxItemPoToXftxItemFormVo
	* @Description: 将PO对象转化成VO对象
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: List<XftxItem> list
	* @Return:  List<XftxItemForm> 
	*/
	private List<XftxItemForm> XftxItemPoToXftxItemFormVo(List<XftxItem> list) {
		XftxItem xftxItem=null;
		XftxItemForm xftxItemForm=null;
		List<XftxItemForm> lists=new ArrayList<XftxItemForm>();
		for(int i=0;i<list.size();i++){
			xftxItem=list.get(i);
			xftxItemForm=new XftxItemForm();
			xftxItemForm.setItemId(xftxItem.getItemid());
			xftxItemForm.setItemName(xftxItem.getItemname());
			xftxItemForm.setItemTheme(xftxItem.getXftxTheme().getThemeid());
			xftxItemForm.setItemAbout(xftxItem.getItemabout());
			xftxItemForm.setItemCountry(xftxItem.getXftxCountry().getCountryid());
			xftxItemForm.setItemImgPath(xftxItem.getItemimgpath());
			xftxItemForm.setItemCity(xftxItem.getXftxCity().getCityid());
			xftxItemForm.setItemBuildTime(xftxItem.getItembuildtime().toString());
			lists.add(xftxItemForm);
		}
		return lists;
	}

	
	
	/**  
	* @Name: findXftxItemByThemeId
	* @Description: 根据userId查询项目,以时间排序，后创建的显示在前
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters:  XftxUser xftxUser
	* @Return:  List<XftxItemForm>
	*/
	public List<XftxItemForm> findXftxItemByUserId(XftxUser xftxUser) {
		String hqlWhere="and itemBuildUserId=?";
		String[] params={xftxUser.getUserid()};
		LinkedHashMap<String, String> order=new LinkedHashMap<String, String>();
		order.put("ITEMBUILDTIME", "desc");
		List<XftxItem> list = iXftxItemDao.findCollectionByConditionNoPage(hqlWhere, params, order);
		List<XftxItemForm> lists=this.XftxItemPoToXftxItemFormVo(list);
		return lists;
	}

	/**  
	* @Name: findXftxItemByTime
	* @Description: 根据时间排序，后创建的显示在前,查询item最新的9项。
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters:  XftxUser xftxUser
	* @Return:  List<XftxItemForm>
	*/
	@SuppressWarnings("rawtypes")
	public List<XftxItemForm> findXftxItemByTime() {
		String sql="select t.*,rownum from (select a.* from xftx_item a order by itembuildtime desc ) t where rownum<10";
		List list = iXftxItemDao.findListBySql(sql);
		List<XftxItemForm> lists=this.XftxItemPoObjectToXftxItemFormVo(list);
		return lists;
	}
	
	
	
	
	
	
	
	
	
	@SuppressWarnings("rawtypes")
	private List<XftxItemForm> XftxItemPoObjectToXftxItemFormVo(List list) {
		Object[] xftxItem=null;
		XftxItemForm xftxItemForm=null;
		List<XftxItemForm> lists=new ArrayList<XftxItemForm>();
		for(int i=0;i<list.size();i++){
			xftxItem=(Object[]) list.get(i);
			xftxItemForm=new XftxItemForm();
			xftxItemForm.setItemId(xftxItem[0].toString());
			xftxItemForm.setItemName(xftxItem[1].toString());
			xftxItemForm.setItemTheme(xftxItem[9].toString());
			xftxItemForm.setItemAbout(xftxItem[2].toString());
			xftxItemForm.setItemCountry(xftxItem[8].toString());
			xftxItemForm.setItemImgPath(xftxItem[3].toString());
			xftxItemForm.setItemCity(xftxItem[7].toString());
			xftxItemForm.setItemBuildTime(xftxItem[4].toString());
			lists.add(xftxItemForm);
		}
		return lists;
	}

	@Transactional(isolation=Isolation.DEFAULT,propagation=Propagation.REQUIRED,readOnly=false)
	public void removeItemByItemId(String itemId) {
		 String [] ids={itemId};
		iXftxItemDao.deleteObjectByIDs(ids);
	}

	public String findXftxItemByItemId(String itemId) {
		XftxItem xftxItem=iXftxItemDao.findObjectByID(itemId);
		String itemName=xftxItem.getItemimgpath().toString().split("/")[2];
		return itemName;
	}

	public String findXftxItemNameByItemId(String itemId) {
		XftxItem xftxItem=iXftxItemDao.findObjectByID(itemId);
		String itemName=xftxItem.getItemname();
		return itemName;
	}
}











