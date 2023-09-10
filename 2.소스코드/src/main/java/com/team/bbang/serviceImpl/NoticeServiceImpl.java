package com.team.bbang.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.bbang.domain.NoticeDTO;
import com.team.bbang.mapper.NoticeMapper;
import com.team.bbang.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeMapper mapper;
	
	@Override
	public List<NoticeDTO> noticelist() {
		
		return mapper.noticelist();
	}

	@Override
	public NoticeDTO noticedeatil(String noticeseq) {
		
		return mapper.noticedetail(noticeseq);
	}

	@Override
	public void noticeinsert(NoticeDTO dto) {
		
		mapper.noticeinsert(dto);
		
	}

	@Override
	public void noticeviewcnt(String noticeseq) {
		
		mapper.noticeviewcnt(noticeseq);
		
	}

	@Override
	public void noticedelete(String noticeseq) {
		
		mapper.noticedelete(noticeseq);
		
	}

	
	
}
