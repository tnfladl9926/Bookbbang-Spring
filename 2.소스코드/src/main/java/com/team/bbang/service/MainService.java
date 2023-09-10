package com.team.bbang.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.team.bbang.domain.EventDTO;
import com.team.bbang.domain.MainDTO;


public interface MainService {


	List<MainDTO> bestlist();

	List<MainDTO> freshlist();

	List<EventDTO> eventlist();

	List<MainDTO> fieldlist(String field);

}
