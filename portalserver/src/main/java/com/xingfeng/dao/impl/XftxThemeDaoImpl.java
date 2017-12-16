package com.xingfeng.dao.impl;

import org.springframework.stereotype.Repository;

import com.xingfeng.dao.IXftxThemeDao;
import com.xingfeng.domain.XftxTheme;

@Repository(IXftxThemeDao.SERVICE_NAME)
public class XftxThemeDaoImpl extends CommenDaoImpl<XftxTheme> implements IXftxThemeDao{

}
