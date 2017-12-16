package com.xingfeng.dao.impl;

import org.springframework.stereotype.Repository;

import com.xingfeng.dao.IXftxItemDao;
import com.xingfeng.domain.XftxItem;

@Repository(IXftxItemDao.SERVICE_NAME)
public class XftxItemDaoImpl extends CommenDaoImpl<XftxItem> implements IXftxItemDao{

}
