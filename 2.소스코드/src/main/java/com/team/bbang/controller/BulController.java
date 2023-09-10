package com.team.bbang.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team.bbang.domain.BulCommentDTO;
import com.team.bbang.domain.BulFreeDTO;
import com.team.bbang.domain.BulMentionDTO;
import com.team.bbang.domain.Pager;
import com.team.bbang.domain.Search;
import com.team.bbang.service.BulFreeService;
import com.team.bbang.service.BulMentionService;
import com.team.security.CustomUser;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/bul")
@Log4j
public class BulController {

	@Autowired
	private BulFreeService service;

	@Autowired
	private BulMentionService service2;

	@Autowired
	private Search search;
	
	@Autowired
	   private Pager pager;


	@GetMapping("/bulfreeboard.do")
	   public String bulfreeboard(Model model, 
	                        Principal principal, 
	                        String nickname,
	                        @RequestParam (required = false, defaultValue = "1") int page,
	                        @RequestParam (required = false, defaultValue = "1") int range) {
	      
	   
	      
	      //페이지 전체 개수 
	      int listCnt = service.getFreeListCnt();
	      
	      //System.out.println(listCnt);
	      
	      //System.out.println(principal.getName());
	      
	      pager.pageInfo(page, range, listCnt);
	      
	      
	      //자유게시판 목록 출력
	      List<BulFreeDTO> list = service.list(pager);
	      //System.err.println(nickname);
	      
	   
	      
	      
	      
	      model.addAttribute("nickname", nickname);
	      model.addAttribute("pager", pager);
	      model.addAttribute("list",list);
	      
	      return "bul/bulfreeboard";
	   }


	@GetMapping("/bulfreedetail.do")
	public String bulfreedetail(Model model, BulFreeDTO bulboardseq, Authentication auth) {

		CustomUser user = (CustomUser) auth.getPrincipal();
		String logMember = user.getMemberseq();

		// 조회수 증가
		int viewcount = service.getviewcount(bulboardseq);

		model.addAttribute("logMember", logMember);

		// 자유게시판 상세보기 출력
		List<BulFreeDTO> list = service.view(bulboardseq);

		model.addAttribute("list", list);

		System.out.println(list);

		// 자유게시판 댓글 출력
		List<BulCommentDTO> clist = service.viewBulComment(bulboardseq);

		model.addAttribute("clist", clist);

		System.out.println(clist);

		// 자유게시판 대댓글 출력
		// List<BulCommentDTO> crlist = service.viewBulRComment(bulboardseq);

		// 자유게시판 댓글 수
		String totalcomment = service.gettotalcomment(bulboardseq);
		// System.out.println(bulboardseq);
		// System.out.println(totalcomment);

		// 자유게시판 댓글

		model.addAttribute("totalcomment", totalcomment);

		model.addAttribute("bulFreeDTO", bulboardseq);

		return "bul/bulfreedetail";
	}

	@GetMapping("/bulfreeadd.do")
	public String bulfreeadd(Model model, Principal Principal) {

		// 자유게시판 글쓰기
		String id = Principal.getName();

		return "bul/bulfreeadd";
	}

	@PostMapping("/bulfreeaddok.do")
	public String bulfreeaddok(Model model, BulFreeDTO dto) {

		// System.out.println(dto);
		// 자유게시판 글쓰기
		service.addbulfree(dto);

		return "redirect:/bul/bulfreeboard.do";
	}

	@GetMapping("/bulfreeedit.do")
	public String bulfreeedit(Model model, BulFreeDTO dto) {

		// 자유게시판 수정
		List<BulFreeDTO> list = service.view(dto);

		// System.out.println(list);

		model.addAttribute("list", list);
		// System.out.println(list);

		return "bul/bulfreeedit";
	}

	@PostMapping("/bulfreeeditok.do")
	public String bulfreeeditok(Model model, BulFreeDTO dto) {

		// 자유게시판 수정
		service.editbulfree(dto);

		return "redirect:/bul/bulfreedetail.do?" + "bulboardseq=" + dto.getBulboardseq();
	}

	@GetMapping("/bulfreedel.do")
	public String bulfreedel(Model model, BulFreeDTO dto) {

		// 자유게시판 삭제
		service.delbulfreeComment(dto.getBulboardseq());
		service.delbulfree(dto);

		return "bul/bulfreedel";
	}

	@PostMapping("/bulcommentadd.do")
	public String bulcommentadd(Model model, BulCommentDTO dto) {

		// 자유게시판 댓글 추가

		System.out.println(dto);
		service.addbulcomment(dto);

		return "redirect:/bul/bulfreedetail.do?" + "bulboardseq=" + dto.getBulboardseq();
	}

	@GetMapping("/bulcommentdel.do")
	public String bulcommentdel(Model model, BulCommentDTO dto) {

		// 자유게시판 댓글 삭제
		service.delbulcomment(dto);

		return "bul/bulcommentdel";
	}

	@PostMapping("/bulcommentedit.do")
	public String bulcommenteddit(Model model, BulCommentDTO dto) {

		// 자유게시판 댓글 수정
		service.editbulcomment(dto);
		model.addAttribute("dto", dto);

		return "redirect:/bul/bulfreedetail.do?" + "bulboardseq=" + dto.getBulboardseq();
	}

	@GetMapping("/bulmy.do")
	public String bulmy(Model model, Principal principal, BulFreeDTO dto, BulCommentDTO cdto) {

		String pname = principal.getName();

		dto.setPname(pname);

		// 마이페이지 게시글
		List<BulFreeDTO> list = service.getmyboard(dto);

		model.addAttribute("list", list);

		// 마이페이지 게시글 수
		int memboardcount = service.getmemboardcount(dto);

		model.addAttribute("memboardcount", memboardcount);

		// 마이페이지 댓글
		cdto.setPname(pname);

		List<BulCommentDTO> clist = service.getmycomment(cdto);

		model.addAttribute("clist", clist);

		// 마이페이지 댓글 수
		int memcommentcount = service.getmemcommentcount(cdto);

		model.addAttribute("memcommentcount", memcommentcount);

		return "bul/bulmy";
	}

	// 서평 게시판 글 추가
	@GetMapping("/bulreviewadd.do")
	public String bulfreeadd() {
		return "/bul/bulreviewadd";

	}

	// 북유럽 메인페이지 출력
	@GetMapping("/bulmain.do")
	public String bulmain(Model model) {

		List<BulMentionDTO> ImageList = service2.getBulImage();

		model.addAttribute("ImageList", ImageList);

		return "bul/bulmain";
	}

	// 서평 상세페이지 출력
	@GetMapping("/bulreviewdetail.do")
	public String bulreviewdetail(Model model, @RequestParam Integer bookMentionSeq) {

		BulMentionDTO dto = service2.getDetail(bookMentionSeq);

		model.addAttribute("dto", dto);

		return "bul/bulreviewdetail";
	}

	// 서평 전체 리스트 출력해주는 메소드
	@GetMapping("/bulreviewboard.do")
	public String getBoardList(Model model, @RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range,
			@RequestParam(required = false) String searchType, @RequestParam(required = false) String keyword)

	{

		search.setSearchType(searchType);
		search.setKeyword(keyword);

		int listCnt = service2.getBoardListCnt(search);

		if (keyword != null && !keyword.equals("") && searchType.equals("nickname")) {
			listCnt = service2.getBoardListCnt2(search);
		}

		search.pageInfo(page, range, listCnt);

		List<BulMentionDTO> boardList = service2.getBoardList(search);


		model.addAttribute("search", search);
		model.addAttribute("boardList", boardList);

		return "bul/bulreviewboard";

	}

}
