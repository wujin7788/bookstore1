package org.fkit.service.impl;

import org.fkit.domain.Manager;
import org.fkit.mapper.ManagerMapper;
import org.fkit.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("managerService")
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	private ManagerMapper managerMapper;
	
	@Override
	public Manager selectManager(Manager manager) {
		return managerMapper.selectManager(manager);
	}

}
