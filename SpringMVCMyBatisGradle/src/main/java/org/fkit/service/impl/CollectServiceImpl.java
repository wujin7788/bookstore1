package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Collect;
import org.fkit.mapper.CollectMapper;
import org.fkit.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("collectService")
public class CollectServiceImpl implements CollectService {
	
	@Autowired
	private CollectMapper collectMapper;
	
	
	@Override
	public void insertCollect(Collect collect) {
		collectMapper.insertCollect(collect);
	}


	@Override
	public List<Collect> selectAllCollect() {
		return collectMapper.selectAllCollect();
	}


	@Override
	public void deleteCollect(int id) {
		collectMapper.deleteCollect(id);
	}

}
