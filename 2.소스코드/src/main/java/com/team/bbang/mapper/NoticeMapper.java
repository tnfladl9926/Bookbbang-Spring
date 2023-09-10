package com.team.bbang.mapper;

import java.util.List;

import com.team.bbang.domain.NoticeDTO;

public interface NoticeMapper {

	List<NoticeDTO> noticelist();

	NoticeDTO noticedetail(String noticeseq);

	void noticeinsert(NoticeDTO dto);

	void noticeviewcnt(String noticeseq);

	void noticedelete(String noticeseq);

}
