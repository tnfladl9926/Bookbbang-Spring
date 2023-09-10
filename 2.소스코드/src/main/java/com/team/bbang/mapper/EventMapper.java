package com.team.bbang.mapper;

import java.util.List;
import java.util.Map;

import com.team.bbang.domain.EventDTO;

public interface EventMapper {

	public List<EventDTO> getList();

//	public EventDTO getView();

	public List<EventDTO> view(String seq);

	public void addcoupon(Map<String, String> map);
	
}
