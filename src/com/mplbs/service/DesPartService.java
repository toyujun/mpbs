package com.mplbs.service;

import java.util.List;

import com.mplbs.domain.DesPart;
import com.mplbs.utils.PageBean;

public interface DesPartService {

	public void save(DesPart model);

	public List<DesPart> findAll();

	public void pageQuery(PageBean pageBean);
}
