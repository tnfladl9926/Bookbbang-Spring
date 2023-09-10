package com.team.bbang.service;

import java.util.List;

import com.team.bbang.domain.BulMentionDTO;
import com.team.bbang.domain.Search;

public interface BulMentionService {

//	List<BulMentionDTO> getList(Pager pager);

	public int getBoardListCnt(Search search);

	public List<BulMentionDTO> getBoardList(Search search);

	public List<BulMentionDTO> getBulImage();

	public BulMentionDTO getDetail(Integer bookMentionSeq);

	public int getBoardListCnt2(Search search);


	
}
