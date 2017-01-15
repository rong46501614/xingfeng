package com.xingfeng.service;

import java.util.List;

import com.xingfeng.domain.XftxUser;
import com.xingfeng.form.XftxItemForm;




public interface IXftxItemService {

	public final static String SERVICE_NAME = "com.xftx.service.impl.XftxItemServiceImpl";

	void saveItemForm(XftxItemForm xftxItemForm, XftxUser xftxUser, String itemImgPath);

	@SuppressWarnings("rawtypes")
	List findXftxItemByUserIdAndTime(XftxUser xftxUser);

	List<XftxItemForm> findXftxItemByThemeId(String themeId);

	List<XftxItemForm> findXftxItemByUserId(XftxUser xftxUser);

	List<XftxItemForm> findXftxItemByTime();

	void removeItemByItemId(String itemId);

	String findXftxItemByItemId(String itemId);

	String findXftxItemNameByItemId(String itemId);


	
}
