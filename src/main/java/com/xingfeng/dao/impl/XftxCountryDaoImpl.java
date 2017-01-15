package com.xingfeng.dao.impl;

import org.springframework.stereotype.Repository;

import com.xingfeng.dao.IXftxCountryDao;
import com.xingfeng.domain.XftxCountry;

@Repository(IXftxCountryDao.SERVICE_NAME)
public class XftxCountryDaoImpl extends CommenDaoImpl<XftxCountry> implements IXftxCountryDao{

}
