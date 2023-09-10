package com.team.bbang.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.bbang.domain.BulCommentDTO;
import com.team.bbang.domain.BulFreeDTO;
import com.team.bbang.domain.Pager;
import com.team.bbang.mapper.BulFreeMapper;
import com.team.bbang.service.BulFreeService;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BulFreeServiceImpl  implements BulFreeService{
   
   @Autowired
   private BulFreeMapper mapper;

   
   Map<String, String> map = new HashMap<String, String>();
   
   @Override
   public List<BulFreeDTO> list(Pager pager) {
      
      map.put("startList", Integer.toString(pager.getStartList()));
      map.put("endList", Integer.toString(pager.getEndList()));
      
      log.info(map);
      
      return mapper.getbulFreeList(map);
   }

   @Override
   public List<BulFreeDTO> view(BulFreeDTO dto) {
      
      return mapper.getbulFreeView(dto);
   }

   @Override
   public void addbulfree(BulFreeDTO dto) {
      mapper.addbulfree(dto);
   }

   @Override
   public void editbulfree(BulFreeDTO dto) {
      
      mapper.editbulfree(dto);
   }

   @Override
   public void delbulfree(BulFreeDTO dto) {
      
      mapper.delbulfree(dto);
   }

   @Override
   public List<BulCommentDTO> viewBulComment(BulFreeDTO bulboardseq) {
      
      return mapper.viewBulComment(bulboardseq);
   }

   @Override
   public void addbulcomment(BulCommentDTO dto) {
      
      mapper.addbulcomment(dto);
   }

   @Override
   public void delbulcomment(BulCommentDTO dto) {
      
      mapper.delbulcomment(dto);
   }

   @Override
   public void editbulcomment(BulCommentDTO dto) {
      
      mapper.editbulcomment(dto);
   }

   @Override
   public String gettotalcomment(BulFreeDTO bulboardseq) {
      
      return mapper.gettotalcomment(bulboardseq);
   }

   @Override
   public int getviewcount(BulFreeDTO bulboardseq) {
      
      return mapper.getviewcount(bulboardseq);
   }

   @Override
   public List<BulFreeDTO> getmyboard(BulFreeDTO dto) {
      
      return mapper.getmyboard(dto);
   }

   @Override
   public List<BulCommentDTO> getmycomment(BulCommentDTO cdto) {
      
      return mapper.getmycomment(cdto);
   }

   @Override
   public int getmemboardcount(BulFreeDTO dto) {
      
      return mapper.getmemboardcount(dto);
   }

   @Override
   public int getmemcommentcount(BulCommentDTO cdto) {
      // TODO Auto-generated method stub
      return mapper.getmemcommentcount(cdto);
   }

   
   
   //페이징 전체 페이지 개수 출력 메소드
   @Override
   public int getFreeListCnt() {
      
   
      return mapper.getFreeListCnt();
   }

@Override
public void delbulfreeComment(String bulboardseq) {
	
	mapper.delbulfreeComment(bulboardseq);
}

   
//   @Override
//   public List<BulCommentDTO> viewBulRComment(BulFreeDTO bulboardseq) {
//      
//      return mapper.viewBulRComment(bulboardseq);
//   }

   

   
   

}