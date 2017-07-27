package org.fkit.service;

import java.util.List;

import org.fkit.domain.Collect;

public interface CollectService {
	
	void insertCollect(Collect collect);
	
	List<Collect> selectAllCollect();
	
	void deleteCollect(int id);
}
