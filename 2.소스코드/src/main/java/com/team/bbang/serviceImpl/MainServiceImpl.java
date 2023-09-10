package com.team.bbang.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.bbang.domain.EventDTO;
import com.team.bbang.domain.MainDTO;
import com.team.bbang.mapper.MainMapper;
import com.team.bbang.service.MainService;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainMapper mapper;
	

	@Override
	public List<MainDTO> bestlist() {
		
		return mapper.bestlist();
	}


	@Override
	public List<MainDTO> freshlist() {
		// TODO Auto-generated method stub
		return mapper.freshlist();
	}


	@Override
	public List<EventDTO> eventlist() {
		// TODO Auto-generated method stub
		return mapper.eventlist();
	}
	
	@Override
	public List<MainDTO> fieldlist(String field) {
		// TODO Auto-generated method stub
		return mapper.fieldlist(field);
	}

}
