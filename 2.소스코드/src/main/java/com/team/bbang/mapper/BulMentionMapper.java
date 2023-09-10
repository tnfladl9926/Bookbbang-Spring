package com.team.bbang.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.team.bbang.domain.BulMentionDTO;
import com.team.bbang.domain.Search;



public interface BulMentionMapper {

	int getBoardListCnt(Map<String, String> map);

	int getBoardListCnt2(Map<String, String> map);

	
	List<BulMentionDTO> getBoardList(Map<String, String> map);
	
	
	
	
	
	List<BulMentionDTO> getBulImage();

	BulMentionDTO getDetail(Integer bookMentionSeq);





	
	
	
}
