package com.team.bbang.mapper;

import java.util.List;

import com.team.bbang.domain.EventDTO;
import com.team.bbang.domain.MainDTO;

public interface MainMapper {


	List<MainDTO> bestlist();

	List<MainDTO> freshlist();

	List<EventDTO> eventlist();

	List<MainDTO> fieldlist(String field);

}
