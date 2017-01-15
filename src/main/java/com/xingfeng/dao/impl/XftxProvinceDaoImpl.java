package com.xingfeng.dao.impl;

import org.springframework.stereotype.Repository;

import com.xingfeng.dao.IXftxProvinceDao;
import com.xingfeng.domain.XftxProvince;

@Repository(IXftxProvinceDao.SERVICE_NAME)
public class XftxProvinceDaoImpl extends CommenDaoImpl<XftxProvince> implements IXftxProvinceDao{

}
