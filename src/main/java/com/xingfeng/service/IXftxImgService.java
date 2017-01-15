package com.xingfeng.service;

import java.util.List;

import com.xingfeng.form.XftxImgForm;


public interface IXftxImgService {

	public final static String SERVICE_NAME = "com.xftx.service.impl.XftxImgServiceImpl";

	void saveXftxImg(String imgName, String itemId, String imgPath);

	List<XftxImgForm> findImgByItemId(String itemId);

	void imgRemove(String imgId);

	
	
}
