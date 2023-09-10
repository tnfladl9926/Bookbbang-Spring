package com.team.bbang.mapper;

import java.util.List;
import java.util.Map;

import com.team.bbang.domain.BulCommentDTO;
import com.team.bbang.domain.BulFreeDTO;
import com.team.bbang.domain.Pager;

public interface BulFreeMapper {

   List<BulFreeDTO> getbulFreeList(Map<String, String> map);

   List<BulFreeDTO> getbulFreeView(BulFreeDTO dto);

   void addbulfree(BulFreeDTO dto);

   void editbulfree(BulFreeDTO dto);

   void delbulfree(BulFreeDTO dto);

   List<BulCommentDTO> viewBulComment(BulFreeDTO bulboardseq);

   void addbulcomment(BulCommentDTO dto);

   void delbulcomment(BulCommentDTO dto);

   void editbulcomment(BulCommentDTO dto);

   String gettotalcomment(BulFreeDTO bulboardseq);

   int getviewcount(BulFreeDTO bulboardseq);

   List<BulFreeDTO> getmyboard(BulFreeDTO dto);

   List<BulCommentDTO> getmycomment(BulCommentDTO cdto);

   int getmemboardcount(BulFreeDTO dto);

   int getmemcommentcount(BulCommentDTO cdto);

   int getFreeListCnt();

void delbulfreeComment(String bulboardseq);

   

   

//   List<BulCommentDTO> viewBulRComment(BulFreeDTO bulboardseq);


}