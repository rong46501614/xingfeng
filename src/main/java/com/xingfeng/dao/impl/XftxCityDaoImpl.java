package com.xingfeng.dao.impl;

import org.springframework.stereotype.Repository;

import com.xingfeng.dao.IXftxCityDao;
import com.xingfeng.domain.XftxCity;

@Repository(IXftxCityDao.SERVICE_NAME)
public class XftxCityDaoImpl extends CommenDaoImpl<XftxCity> implements IXftxCityDao{

}
