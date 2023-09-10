package com.team.bbang.service;

import java.util.List;

import com.team.bbang.domain.EventDTO;

public interface EventService {

	List<EventDTO> getList();


	List<EventDTO> view(String seq);


	void addcoupon(String seq, String memberseq);

	
}
