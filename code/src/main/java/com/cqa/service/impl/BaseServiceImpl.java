package com.cqa.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.cqa.dao.IBaseDao;
import com.cqa.service.IBaseService;

public class BaseServiceImpl implements IBaseService {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	
	private IBaseDao baseDao;
	
	@Override
	public IBaseDao getBaseDao() {
		return baseDao;
	}

	@Override
	public void setBaseDao(IBaseDao baseDao) {
		this.baseDao = baseDao;
	}

}
