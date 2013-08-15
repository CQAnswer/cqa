package com.cqa.service;

import com.cqa.dao.IBaseDao;

/**
 * @author Administrator
 * 数据库操作服务接口
 */
public interface IBaseService {

	 public IBaseDao getBaseDao();
	 public void setBaseDao(IBaseDao baseDao);
}
