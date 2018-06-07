package com.mplbs.dao;

import com.mplbs.dao.base.BaseDao;
import com.mplbs.domain.DesPart;
import com.mplbs.utils.PageBean;

public interface DesPartDao extends BaseDao<DesPart> {

	void pageQuery(PageBean pageBean);

}
