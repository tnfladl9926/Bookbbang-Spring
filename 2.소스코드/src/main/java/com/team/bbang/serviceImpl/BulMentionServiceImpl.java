package com.team.bbang.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.bbang.domain.BulMentionDTO;
import com.team.bbang.domain.Pager;
import com.team.bbang.domain.Search;
import com.team.bbang.mapper.BulMentionMapper;
import com.team.bbang.service.BulMentionService;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BulMentionServiceImpl implements BulMentionService {
	

	@Autowired
	private BulMentionMapper mapper;
	
	
	Map<String, String> map = new HashMap<String, String>();
	
	
	
	@Override
	public int getBoardListCnt(Search search) {
		
		map.put("keyword", search.getKeyword());
		map.put("searchType", search.getSearchType());
		
		return mapper.getBoardListCnt(map);

	}
	
	
	@Override
	public int getBoardListCnt2(Search search) {

		map.put("keyword", search.getKeyword());
		map.put("searchType", search.getSearchType());
		
		return  mapper.getBoardListCnt2(map);
	

	}
	
	
	
	
	@Override
	public List<BulMentionDTO> getBoardList(Search search) {
		
		
		log.info(search);
		
		map.put("keyword", search.getKeyword());
		map.put("searchType", search.getSearchType());
		map.put("startList", Integer.toString(search.getStartList()));
		map.put("endList", Integer.toString(search.getEndList()));
		
		System.out.println(map);
		
		return mapper.getBoardList(map);
		
		
		
	}
	
	
	@Override
	public List<BulMentionDTO> getBulImage() {
		return mapper.getBulImage();
	}
	
	
	
	@Override
	public BulMentionDTO getDetail(Integer bookMentionSeq) {
		
		return mapper.getDetail(bookMentionSeq);
	}
}
