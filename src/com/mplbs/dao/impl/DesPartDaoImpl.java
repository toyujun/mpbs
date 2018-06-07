package com.mplbs.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.springframework.stereotype.Repository;

import com.mplbs.dao.DesPartDao;
import com.mplbs.dao.base.impl.BaseDaoImpl;
import com.mplbs.domain.DesPart;
import com.mplbs.utils.PageBean;

@Repository
public class DesPartDaoImpl extends BaseDaoImpl<DesPart> implements DesPartDao {

	@Override
	public void pageQuery(PageBean pageBean) {
		
        int currentPage = pageBean.getCurrentPage();
        int pageSize = pageBean.getPageSize();
        DetachedCriteria detachedCriteria = pageBean.getDetachedCriteria();
         
        //查询total---总数据量
        detachedCriteria.setProjection(Projections.rowCount());//指定hibernate框架发出sql的形式----》select count(*) from;
        List<Long> countList = (List<Long>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
        Long count = countList.get(0);
        pageBean.setTotal(count.intValue());
         
        //查询rows---当前页需要展示的数据集合
        detachedCriteria.setProjection(null);//指定hibernate框架发出sql的形式----》select * from;
        int firstResult = (currentPage - 1) * pageSize;
        int maxResults = pageSize;
        List rows = this.getHibernateTemplate().findByCriteria(detachedCriteria, firstResult, maxResults);
        pageBean.setRows(rows);
		
	}



}
