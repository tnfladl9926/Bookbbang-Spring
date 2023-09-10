package com.team.bbang.serviceImpl;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.bbang.domain.BookDTO;
import com.team.bbang.domain.Pager;
import com.team.bbang.domain.PaymentDTO;
import com.team.bbang.mapper.BookMapper;
import com.team.bbang.service.BookService;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookMapper mapper;

	@Override
	public List<BookDTO> bookList(String field, String genre, String order, Pager pager) {

		Map<String, String> map = new HashMap<String, String>();
		map.put("field", field);
		map.put("genre", genre);
		map.put("order", order);
		map.put("startPage", Integer.toString(pager.getStartPage()));
		map.put("endPage", Integer.toString(pager.getEndPage()));
		map.put("startList", Integer.toString(pager.getStartList()));

//		System.out.println("order: " + order);

		return mapper.bookList(map);
	}

	@Override
	public List<BookDTO> booknav(String field) {

		return mapper.booknav(field);
	}

	@Override
	public List<BookDTO> booklistadmin() {

		return mapper.booklistadmin();
	}

	@Override
	public void bookadd(BookDTO dto) {
		mapper.bookadd(dto);
	}

	@Override
	public List<BookDTO> bookdetailadmin(String bookseq) {

		return mapper.bookdetailadmin(bookseq);
	}

	@Override
	public List<BookDTO> bookgenre(String field) {

		return mapper.bookgenre(field);
	}

//	@Override
//	public List<BookDTO> bookview(String bookseq) {
//		
//		List<BookDTO> bookview = mapper.bookview(bookseq);
//		
//		return mapper.bookview(bookseq);
//		
//	}

	@Override
	public List<BookDTO> bookview(String bookseq, String field) {

		Map<String, String> map = new HashMap<String, String>();
		map.put("bookseq", bookseq);
		map.put("field", field);

		return mapper.bookview(map);

	}

	@Override
	public void bookeditadminok(BookDTO dto) {

		mapper.bookeditadminok(dto);
	}

	// 페이지 전체 목록 개수 구하는 메소드
	@Override
	public int getBookListCnt() {
		// TODO Auto-generated method stub
		return mapper.getBookListCnt();
	}

	@Override
	public List<BookDTO> getPrice(String string) {

		return mapper.getPrice(string);
	}

	@Override
	public List<BookDTO> getBook(String string) {

		return mapper.getBook(string);
	}

	
	//여기서 선언한 4개 메서드 전부다 mapper에 쿼리 삽입해야함.
	@Override
	public void paymentOrder(PaymentDTO dto) {

		// 쿠폰 번호 + 회원번호 복합키로 MEMBERCOUPON테이블의 행 삭제
		if (dto.getCouponseq() != null || !dto.getCouponseq().equals("")) {
			mapper.delmembercoupon(dto);
		}
		// 결제 누르면 장바구니에서 삭제하기 > xml안에서 for문돌리기
		mapper.delCart(dto);

		// 주문하기 > 회원번호 + 쿠폰번호 + 이름 + 주소 + 연락처 + 결재금액 + 주문번호 + 날짜
		Calendar now = Calendar.getInstance();
		Random ran = new Random();
		String ranNumber = Integer.toString(ran.nextInt(1000000000) + 111111111) + String.format("%tF", now);
		dto.setSerialNum(ranNumber);
		int result = mapper.insertPayment(dto); // 셀렉트 키로 paymentseq를 선언하면 dto.setPaymentseq 알아서해줘서 밑에 insertorderbook은 그대로 사용하면 됨
		
		// 등록한 주문의 주문도서 관계테이블 만들기 > xml안에서 for문돌리기
		mapper.insertorderbook(dto);
	}

}
