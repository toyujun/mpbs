package com.mplbs.service;

import java.util.List;

import com.mplbs.domain.DesPart;

public interface DesPartService {

	public void save(DesPart model);

	public List<DesPart> findAll();
}
