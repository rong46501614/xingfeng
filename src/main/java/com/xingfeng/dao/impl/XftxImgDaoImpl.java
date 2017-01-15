package com.xingfeng.dao.impl;

import org.springframework.stereotype.Repository;

import com.xingfeng.dao.IXftxImgDao;
import com.xingfeng.domain.XftxImg;

@Repository(IXftxImgDao.SERVICE_NAME)
public class XftxImgDaoImpl extends CommenDaoImpl<XftxImg> implements IXftxImgDao{

}
