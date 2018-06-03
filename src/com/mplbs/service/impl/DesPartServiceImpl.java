package com.mplbs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mplbs.dao.DesPartDao;
import com.mplbs.domain.DesPart;
import com.mplbs.service.DesPartService;

@Service
@Transactional
public class DesPartServiceImpl implements DesPartService {

	@Autowired
	private DesPartDao desPartDao;
	
	@Override
	public void save(DesPart model) {
		// TODO Auto-generated method stub
		desPartDao.save(model);
	}

}
