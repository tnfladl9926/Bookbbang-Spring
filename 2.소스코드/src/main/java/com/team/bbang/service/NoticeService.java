package com.team.bbang.service;

import java.util.List;

import com.team.bbang.domain.NoticeDTO;

public interface NoticeService {

	List<NoticeDTO> noticelist();

	NoticeDTO noticedeatil(String noticeseq);

	void noticeinsert(NoticeDTO dto);

	void noticeviewcnt(String noticeseq);

	void noticedelete(String noticeseq);


}
