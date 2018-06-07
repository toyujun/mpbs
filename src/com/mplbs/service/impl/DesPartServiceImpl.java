package com.mplbs.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mplbs.dao.DesPartDao;
import com.mplbs.domain.DesPart;
import com.mplbs.domain.Menu;
import com.mplbs.service.DesPartService;
import com.mplbs.utils.PageBean;

@Service
@Transactional
public class DesPartServiceImpl implements DesPartService {

	@Autowired
	private DesPartDao desPartDao;
	
	@Override
	public void save(DesPart des) {
		// TODO Auto-generated method stub
		desPartDao.save(des);
	}

	@Override
	public List<DesPart> findAll() {
		// TODO Auto-generated method stub
		List<DesPart> desPart = new ArrayList<DesPart>();
		desPart = desPartDao.findAll();
		return desPart;
	}

	@Override
	public void pageQuery(PageBean pageBean) {
		desPartDao.pageQuery(pageBean);
		
	}

}
