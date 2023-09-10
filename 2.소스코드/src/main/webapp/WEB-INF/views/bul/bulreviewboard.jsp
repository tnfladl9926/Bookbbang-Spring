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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="/resources/css/sulim.css">
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

							<div class="bul-item">

								<div class="bultitle">북유럽 전체 서평</div>

								<br>

								<div
									style="background-color: #F4F4F4; display: flex; justify-content: center; align-items: center; padding: 10px;">
									
									<span class="bulmonindex">5월 </span>
									<button class="bulmonthleftbtn" id="lastmon">
										<span class="material-symbols-outlined">
											keyboard_double_arrow_left </span>
									</button>
								
									<select  class="form-control form-control-sm" name="searchType" id="searchType"
										aria-label="Default select example"
										style="margin-right: 10px; width: 50px; border: #F4F4F4;">
										<option selected>선택</option>
										<option value="title">제목</option>
										<option value="content">내용</option>
										<option value="nickname">작성자</option>
									</select> <input type="text" placeholder="검색어를 입력하세요" class="form-control form-control-sm"
										style="margin-right: 10px; width: 300px; border: #F4F4F4; padding: 6px;" name="keyword" id="keyword">
									<button  class="btn btn-outline-secondary" name="btnSearch" id="btnSearch">검색</button>
				
									<button class="bulmonthrightbtn" id="nextmon">
										<span class="material-symbols-outlined">
											keyboard_double_arrow_right </span>
									</button>
									<span class="bulmonindex"> 6월</span>
									
									<button class="btn btn-outline-secondary" onclick="location.href='/bul/bulreviewadd.do'">글 등록</button>
								
									</div>

								
								<!-- 
                      <div class="bulmonth">

                        <button class="bulmonthbtn" id="lastmon"><span class="material-symbols-outlined">
                          keyboard_double_arrow_left
                          </span></button>
                        &nbsp;&nbsp;&nbsp;
                        <button class="bulmonthbtn" id="nextmon"><span class="material-symbols-outlined">
                          keyboard_double_arrow_right
                          </span></button>

                      </div> -->

								<br>


								<c:forEach items="${boardList}" var="dto">
									<ul class="bulul">
										<li style="cursor:pointer"
											onclick="location.href='/bul/bulreviewdetail.do?bookMentionSeq=${dto.bookMentionSeq}'">
											<div class="d-flex">
												<div class="d-flex col-2 align-center">
													<img src="/resources/image/bookposter/${dto.bimage}"
														class="big-img">
												</div>
												<div class="d-flex flex-column col-10">
													<p class="bulreviewname">${dto.title}|${dto.nickname}</p>
													<p class="bulreviewmem">${dto.btitle}|${dto.bwriter}</p>
													<p class="bulreviewcon">${dto.content}</p>
												</div>
											</div>
										</li>
									</ul>
								</c:forEach>

							</div>

							<!-- pager{s} -->

							<div id="pagerBox">

								<ul class="pagination">

									<c:if test="${search.prev}">

										<li class="page-item"><a class="page-link" href="#"
											onClick="fn_prev('${search.page}', '${search.range}', '${search.rangeSize}', '${search.searchType}', '${search.keyword}')">Previous</a></li>

									</c:if>



									<c:forEach begin="${search.startPage}" end="${search.endPage}"
										var="idx">

										<li
											class="page-item <c:out value="${search.page == idx ? 'active' : ''}"/> ">
											<a class="page-link"
												onClick="fn_pagination('${idx}', '${search.range}', '${search.rangeSize}', '${search.searchType}', '${search.keyword}')">
												${idx} </a></li>

									</c:forEach>



									<c:if test="${search.next}">

										<li class="page-item"><a class="page-link"
											onClick="fn_next('${search.page}', '${search.range}', '${search.rangeSize}', '${search.searchType}', '${search.keyword}')">Next</a></li>

									</c:if>

								</ul>

							</div>


						</div>

					</div>
				</div>

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



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

	<script>
	
	
		<c:url var="getBoardList" value="/bul/bulreviewboard.do">
	
		</c:url>

		var url = "${getBoardList}";
		
		//이전 버튼 이벤트

		function fn_prev(page, range, rangeSize) {

			var page = ((range - 2) * rangeSize) + 1;

			var range = range - 1;

			url = url + "?page=" + page;

			url = url + "&range=" + range;

			url = url + "&searchType=" + searchType;
			
			url = url + "&keyword=" + keyword;
			
			location.href = url;
			

		}

		//페이지 번호 클릭

		function fn_pagination(page, range, rangeSize, searchType, keyword) {

			url = url + "?page=" + page;

			url = url + "&range=" + range;
			
			url = url + "&searchType=" + searchType;
			
			url = url + "&keyword=" + keyword;
			
			location.href = url;

		}

		//다음 버튼 이벤트

		function fn_next(page, range, rangeSize) {
			console.log(page + " " + range + " " + rangeSize)
			
			var page = parseInt((range * rangeSize)) + 1;

			var range = parseInt(range) + 1;

		
		
			url = url + "?page=" + page;

			url = url + "&range=" + range;
			
			url = url + "&searchType=" + searchType;
			
			url = url + "&keyword=" + keyword;
			
			console.log(url);
			
			location.href = url;

		}
		
		
		$(document).on('click', '#btnSearch', function(e){

			e.preventDefault();


			url = url + "?searchType=" + $('#searchType').val();

			url = url + "&keyword=" + $('#keyword').val();

			console.log(url);

			location.href = url;

		});	
		
		
	</script>



</body>
</html>


