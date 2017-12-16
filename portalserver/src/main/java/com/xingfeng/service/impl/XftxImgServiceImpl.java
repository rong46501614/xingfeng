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

import com.xingfeng.dao.IXftxImgDao;
import com.xingfeng.domain.XftxImg;
import com.xingfeng.domain.XftxItem;
import com.xingfeng.form.XftxImgForm;
import com.xingfeng.service.IXftxImgService;

@Transactional(readOnly=true)
@Service(IXftxImgService.SERVICE_NAME)
public class XftxImgServiceImpl  implements IXftxImgService{

	@Resource(name=IXftxImgDao.SERVICE_NAME)
	private IXftxImgDao iXftxImgDao;

	
	/**  
	* @Name: saveXftxImg
	* @Description: 保存图片数据记录
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: String imgName, 图片名称（原图路径）
	* 			   String itemId,  图片所属项目Id
	* 			   String imgPath  图片缩略图路径
	* @Return: 无
	*/
	@Transactional(isolation=Isolation.DEFAULT,propagation=Propagation.REQUIRED,readOnly=false)
	public void saveXftxImg(String imgName, String itemId, String imgPath) {
		XftxImg xftxImg = new XftxImg();
		xftxImg.setImgname(imgName);
		xftxImg.setImgpath(imgPath);
		xftxImg.setImguptime(new Date());
		XftxItem xftxItem = new XftxItem();
		xftxItem.setItemid(itemId);
		xftxImg.setXftxItem(xftxItem);
		iXftxImgDao.save(xftxImg);
	}

	/**  
	* @Name: findImgByItemId
	* @Description: 根据项目Id查询本项目所有的图片记录
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: String itemId,  图片所属项目Id
	* @Return: List<XftxImgForm> 图片记录集合
	*/
	public List<XftxImgForm> findImgByItemId(String itemId) {
		String hqlWhere="and imgItemId=?";
		String [] params={itemId};
		LinkedHashMap<String, String> orderby=new LinkedHashMap<String, String>();
		orderby.put("imgUptime", "desc");
		List<XftxImg> list=iXftxImgDao.findCollectionByConditionNoPage(hqlWhere, params, orderby);
		List<XftxImgForm> lists=this.XftxImgPoToXftxImgVo(list);
		return lists;
	}

	
	/**  
	* @Name: XftxImgPoToXftxImgVo
	* @Description: 将PO对象转化成VO对象
	* @Author: 张荣瑞（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters: List<XftxImg> list
	* @Return:  List<XftxImgForm> 
	*/
	private List<XftxImgForm> XftxImgPoToXftxImgVo(List<XftxImg> list) {
		XftxImg xftxImg=null;
		XftxImgForm xftxImgForm=null;
		List<XftxImgForm> lists=new ArrayList<XftxImgForm>();
		for(int i=0;i<list.size();i++){
			xftxImg=list.get(i);
			xftxImgForm=new XftxImgForm();
			xftxImgForm.setImgId(xftxImg.getImgid());
			xftxImgForm.setImgPath(xftxImg.getImgpath());
			xftxImgForm.setImgAbout(xftxImg.getImgabout());
			xftxImgForm.setImgItemId(xftxImg.getXftxItem().getItemid());
			xftxImgForm.setImgUptime(xftxImg.getImguptime());
			xftxImgForm.setImgName(xftxImg.getImgname());
			lists.add(xftxImgForm);
		}
		return lists;
	}

	@Transactional(isolation=Isolation.DEFAULT,propagation=Propagation.REQUIRED,readOnly=false)
	public void imgRemove(String imgId) {
		String [] ids = {imgId};
		iXftxImgDao.deleteObjectByIDs(ids);
	}
	
}
