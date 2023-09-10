<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="canonical"
   href="https://getbootstrap.com/docs/5.2/examples/headers/">
<link rel='stylesheet'
   href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="/resources/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/sulim.css">
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="/resources/css/style.css">
<link href="/resources/css/style.css" rel="stylesheet">
<link href="/resources/css/inlineJ.css" rel="stylesheet">
 <link rel="stylesheet" href="/resources/css/fontJ.css">
<style>
</style>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<%@ include file="/WEB-INF/views/inc/bulheader.jsp"%>

	<hr>

	<!-- 목록 -->

	<main class="py-md-3 pl-md-5">
		<div class="main-margin" id="main">
			<div class="row ">
				<div class="bulNavbar dropdown-menu d-block position-static pt-0 mx-0 rounded-3 shadow overflow-hidden w-280px col-2" style="text-indent: 1rem;">
                <div class="navbar-title">
                    Book U Love 
                </div>
                <hr>
                <ul class="mb-0">
                  <li><a class="d-flex align-items-center gap-2 py-2" href="/bul/bulreviewboard.do">
                    <span class="side_title d-inline-block rounded-circle p-1">
                    북유럽 서평
                    </span>
                  </a></li>
                  <li><a class="d-flex align-items-center gap-2 py-2" href="/bul/bulfreeboard.do">
                    <span class="side_title d-inline-block rounded-circle p-1">
                    북유럽 커뮤니티
                    </span>
                  </a></li>
                  <li><a class="d-flex align-items-center gap-2 py-2" href="/bul/bulmy.do">
                    <span class="side_title d-inline-block rounded-circle p-1">
                    북유럽 마이페이지
                    </span>
                  </a></li>
                </ul>
              </div>
				<div class="col-8 main-width">
					<div class="over-wrap">

						<!-- ********여기애 메인 내용을 넣어주세요^^^^^^^^^^^********  -->

						<div id="container">

							<div class="bultitle">서평 상세보기</div>

							<br>

							<div class="bulreview">
								<!-- <div>
                  <img src="/asset/images/exbook.jpg" class="middle-img">
                  <p>
                    <div style="float: left;"><span>[경제]</span>책 제목입니다.</div><div class="bulreviewname">| 저자 이름</div>
                  </p>
                  <p>
                    <div style="float: left;">서평 제목입니다.</div><div class="bulreviewname">| 작성자 이름</div>
                  </p>
                  
                  

                  <p>날짜: 2023-12-31</p>
                  <p>별점: 3.0/5</p>
              </div> -->




								<table class="bulheader">

									<tr>
										<th>서평 제목</th>
										<td colspan="3">${dto.title}</td>
										<th>작성자</th>
										<td>${dto.name}</td>
									</tr>
									<tr>
										<th>책 제목</th>
										<td>${dto.btitle}</td>
										<th>작가</th>
										<td>${dto.bwriter}</td>
										<th>조회수</th>
										<td>${dto.viewCount}</td>
									</tr>
								</table>





								<div class="form-floating">
									<textarea class="form-control"
										placeholder="Leave a comment here" id="floatingTextarea"
										style="height: 400px;">${dto.content}
                </textarea>

								</div>

								<div
									style="display: block; margin-top: 20px; text-align: center;">
									<button class="bullike">${dto.likeCount}</button>
								</div>

								<div
									style="display: block; margin-top: 20px; text-align: center;">
									<button class="btn btn-outline-secondary" onclick="location.href='/bul/bulreviewboard.do';">목록</button>
									<button class="btn btn-outline-secondary" onclick="">수정</button>
									<button class="btn btn-outline-secondary" onclick="">삭제</button>
								</div>

							</div>

							<div class="comment">
								<p style="font-size: large; font-weight: bold;">댓글 (3)</p>
								<div>
									<div>작성자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2023-04-12</div>
									<br>
									<div>
										<input placeholder="댓글을 입력하세요." type="text"
											style="float: left; width: 80%; margin-top: 3px; border: none;">
										<button class="btn btn-outline-secondary"
											style="margin-left: 70px;" onclick="">등록</button>
									</div>

									<br>
									<hr style="border: 1px solid black;">


								</div>
								<div>
									<br>
									<div>작성자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2023-04-12</div>
									<br>
									<div style="float: left;">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ댓글내용~~ㄴ</div>
									<div style="margin-left: 820px;">
										<button class="btn btn-outline-secondary" onclick="">수정</button>
										<button class="btn btn-outline-secondary" onclick="">삭제</button>
									</div>
								</div>

								<br>
								<hr style="border: 1px solid black; border-style: dashed;">

								<div class="recomment">
									<div>> 작성자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2023-04-12</div>
									<br>
									<div style="float: left;">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ답댓글내용~~ㄴ</div>
									<div style="margin-left: 780px;">
										<button class="btn btn-outline-secondary" onclick="">수정</button>
										<button class="btn btn-outline-secondary" onclick="">삭제</button>
									</div>
								</div>

							</div>

						</div>

					</div>
				</div>
				<%@ include file="/WEB-INF/views/inc/stickybanner.jsp" %>
			</div>
		</div>
	</main>
	<hr>

	<div class="container-fluid footer-div">
		<div class="footer1">
			<footer class="footer2">
				<div class="row footer3">
					<div class="col-6 col-md-10 mb-3">
						<img src="/resources/image/bb1.png" class="footer-img">
						<ul class="nav flex-column">
							<li class="nav-item mb-2"><a href="#"
								class="nav-link p-0 text-muted">회사소개&nbsp;&nbsp;이용약관&nbsp;&nbsp;개인정보처리방침&nbsp;&nbsp;청소년보호정책&nbsp;&nbsp;대량주문안내&nbsp;&nbsp;협력사여러분&nbsp;&nbsp;채용정보&nbsp;&nbsp;광고소개</a></li>
							<li class="nav-item mb-2"><a href="#"
								class="nav-link p-0 text-muted">대표이사 : 유동현 서울특별시 종로구 종로 1
									사업자등록번호 : 102-81-11670</a></li>
							<li class="nav-item mb-2"><a href="#"
								class="nav-link p-0 text-muted">대표전화 : 1544-1900 | FAX :
									0502-987-5711(지역번호 공통) 서울특별시 통신판매업신고번호 : 제 653호 사업자정보확인</a></li>
							<li class="nav-item mb-2"><a href="#"
								class="nav-link p-0 text-muted">© KYOBO BOOK CENTRE</a></li>
							<li class="nav-item mb-7"><a href="#"
								class="nav-link p-0 text-muted"></a><small>&copy;&nbsp;2023&nbsp;JDSC&nbsp;F7Company,&nbsp;Inc.&nbsp;All&nbsp;rights&nbsp;reserved.</small></li>
						</ul>

					</div>

					<div class="col-md-2  mb-3">
						<a
							href="https://instagram.com/book._bbang?igshid=MmIzYWVlNDQ5Yg=="><i
							class="bi bi-instagram footer-ico n" style="font-size: 2rem;"></i></a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
							href="https://www.youtube.com/@amazingc0met"><i
							class="bi bi-youtube footer-icon"></i></a>
					</div>
				</div>
			</footer>
		</div>
	</div>



	<script>
		
	</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

</body>
</html>


