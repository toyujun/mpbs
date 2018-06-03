package com.mplbs.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.mplbs.action.base.BaseAction;
import com.mplbs.domain.DesPart;
import com.mplbs.service.DesPartService;
import com.mplbs.service.UserService;

@Controller
@Scope("prototype")
public class DesPartAction extends BaseAction<DesPart> {
	
	@Autowired
	private DesPartService desPartService;
	
	public String savePart() {
		desPartService.save(model);
		return null;
	}

}
