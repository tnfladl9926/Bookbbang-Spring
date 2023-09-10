package com.team.bbang.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.bbang.domain.EventDTO;
import com.team.bbang.mapper.EventMapper;
import com.team.bbang.service.EventService;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventMapper mapper;
	
	
	@Override
	public List<EventDTO> getList() {
		
		return mapper.getList();
	}
	
	@Override
	public List<EventDTO> view(String seq) {
		
		return mapper.view(seq);
	}

	@Override
	public void addcoupon(String seq, String memberseq) {

		Map<String, String> map = new HashMap<String, String>();
		
		map.put("seq", seq);
		map.put("memberseq", memberseq);
		
		mapper.addcoupon(map);
		
	}
	
	
	
}
