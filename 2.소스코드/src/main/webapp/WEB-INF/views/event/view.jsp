<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	<link rel="stylesheet" href="/resources/css/style.css">
    <!-- Load Bootstrap -->
	<link rel="stylesheet" href=
	"https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
			integrity=
	"sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I"
			crossorigin="anonymous" >
		<script src=
	"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
			integrity=
	"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
			crossorigin="anonymous">
		</script>
		<script src=
	"https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
			integrity=
	"sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
			crossorigin="anonymous">
		</script>
    <style>

@import url('https://fonts.googleapis.com/css?family=Oswald');
    * {
        margin: 0;
        padding: 0;
        border: 0;
        box-sizing: border-box
    }

    body {
        /* background-color: #dadde6; */
        font-family: arial
    }

    /* .container {
        background-color: #dadde6;
    } */

    .fl-left {
        float: left
    }

    .fl-right {
        float: right
    }

    h1 {
        text-transform: uppercase;
        font-weight: 900;
        border-left: 10px solid #9E6F21;
        padding-left: 10px;
        margin-bottom: 30px
    }

    .row {
        overflow: hidden
        /* background-color: #989898; */
    }

    .card {
        display: table-row;
        width: 49%;
        background-color: #e2c182;
        color: #989898;
        margin-bottom: 10px;
        font-family: 'Oswald', sans-serif;
        text-transform: uppercase;
        border-radius: 4px;
        position: relative
    }

    .card+.card {
        margin-left: 2%
    }

    .date {
        display: table-cell;
        width: 25%;
        position: relative;
        text-align: center;
        border-right: 2px dashed #dadde6
    }

    .date:before,
    .date:after {
        content: "";
        display: block;
        width: 30px;
        height: 30px;
        background-color: #fff;
        position: absolute;
        top: -15px;
        right: -15px;
        z-index: 1;
        border-radius: 50%
        
    }

    .date:after {
        top: auto;
        bottom: -15px
    }

    .date time {
        display: block;
        position: absolute;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%)
    }

    .date time span {
        display: block
    }

    .date time span:first-child {
        color: #2b2b2b;
        font-weight: 600;
        font-size: 250%
    }

    .date time span:last-child {
        text-transform: uppercase;
        font-weight: 600;
        margin-top: -10px
    }

    .card-cont {
        display: table-cell;
        width: 75%;
        font-size: 85%;
        padding: 10px 10px 30px 50px
    }

    .card-cont h3 {
        color: #3C3C3C;
        font-size: 130%
    }

    /* .row:last-child .card:last-of-type .card-cont h3 {
        text-decoration: line-through
    } */

    .card-cont>div {
        display: table-row
    }

    .card-cont .even-date i,
    .card-cont .even-info i,
    .card-cont .even-date time,
    .card-cont .even-info p {
        display: table-cell
    }

    .card-cont .even-date i,
    .card-cont .even-info i {
        padding: 5% 5% 0 0
    }

    .card-cont .even-info p {
        padding: 30px 50px 0 0
    }

    .card-cont .even-date time span {
        display: block
    }

    .card-cont a {
        display: block;
        text-decoration: none;
        width: 80px;
        height: 30px;
        background-color: #D8DDE0;
        color: #fff;
        text-align: center;
        line-height: 30px;
        border-radius: 2px;
        position: absolute;
        right: 10px;
        bottom: 10px
    }
    @media screen and (max-width: 860px) {
        .card {
            display: block;
            float: none;
            width: 100%;
            margin-bottom: 10px
        }
        .card+.card {
            margin-left: 0
        }
        .card-cont .even-date,
        .card-cont .even-info {
            font-size: 75%
        }
    }

    .gray-bg {
        background-color: #fff;
        width: max;
        height: max;
    }


    body{margin-top:20px;}

    .blog-listing {
        padding-top: 30px;
        padding-bottom: 30px;
    }
    .gray-bg {
        background-color: #f5f5f5;
    }
   
    .article {
    box-shadow: 0 0 30px rgba(31, 45, 61, 0.125);
    border-radius: 5px;
    overflow: hidden;
    background: #ffffff;
    padding: 15px;
    margin: 15px 0 30px;
    }
    .article .article-title {
    padding: 15px 0 20px;
    }
    
    .article .article-title h2 {
    color: black;
    font-weight: 600;
    }
    .article .article-title .media {
    padding-top: 15px;
    border-bottom: 1px dashed #ddd;
    padding-bottom: 20px;
    }
    .article .article-title .media .avatar {
    width: 45px;
    height: 45px;
    border-radius: 50%;
    overflow: hidden;
    }
    .article .article-title .media .media-body {
    padding-left: 8px;
    }
    /* .article .article-title .media .media-body label {
    font-weight: 600;
    color: #fc5356;
    margin: 0;
    }
    .article .article-title .media .media-body span {
    display: block;
    font-size: 12px;
    }
    .article .article-content h1,
    .article .article-content h2,
    .article .article-content h3,
    .article .article-content h4,
    .article .article-content h5,
    .article .article-content h6 {
    color: #20247b;
    font-weight: 600;
    margin-bottom: 15px;
    } */
    
    .article .article-content blockquote .blockquote-footer cite {
    font-weight: 600;
    }
    .article .tag-cloud {
    padding-top: 10px;
    }

    .article-comment {
    box-shadow: 0 0 30px rgba(31, 45, 61, 0.125);
    border-radius: 5px;
    overflow: hidden;
    background: #ffffff;
    padding: 20px;
    }
    
    img {
        max-width: 100%;
    }
    img {
        vertical-align: middle;
        border-style: none;
    }


    @media (max-width: 767px) {
    .contact-form .send {
        margin-bottom: 20px;
    }
    }

    /* .section-title h2 {
        font-weight: 700;
        color: #20247b;
        font-size: 45px;
        margin: 0 0 15px;
        border-left: 5px solid #fc5356;
        padding-left: 15px;
    }
    .section-title {
        padding-bottom: 45px;
    } */
    .contact-form .send {
        margin-top: 20px;
    }

    .cute-button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #9E6F21;
        color: #fff;
        text-decoration: none;
        font-weight: bold;
        border-radius: 20px;
        box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
        transition: background-color 0.3s ease;
    }

    .cute-button:hover {
        background-color: #9E6F21;
    }

    </style>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    
    <%@ include file="/WEB-INF/views/inc/header.jsp" %>

    <hr>
    
    <!-- 목록 -->
    
    <main class="py-md-3 pl-md-5">
      <div class="main-margin" id="main">
        <div class="row ">
          <div class="col-3 bd-sidebar">
            <ul class="nav" display="none;">
              <li><h3>목록목록</h3></li>
              <li><a>Side 1</a></li>
              <li><a>Side 2</a></li>
              <li><a>Side 3</a></li>
              <li><a>Side 4</a></li>
              <li><a>Side 5</a></li>
              <li><a>Side 6</a></li>
            </ul>
            <br>
          </div>
          <div class="col-8 main-width">
            <div class="over-wrap">

                <!-- ********여기애 메인 내용을 넣어주세요^^^^^^^^^^^********  -->
                <!--eventdetail.html-->
                <div class="blog-single gray-bg">
                    <div class="container">
                        <div class="row align-items-start">
                            <div class="col-lg-8 m-15px-tb">
                                <article class="article">
                                    <div class="article-img">
                                        <img src="/img/event.jpeg" title="" alt="">
                                    </div>
                                    <div class="article-title">
                                        <h2>${view[0].title}</h2>
                                        <div class="media">
                                            <div class="date">
                                                <span>${view[0].regdate}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="article-content">
                                        <p>${view[0].content}</p>     
                                    </div>
                                    
                                    <div class="gray-bg">
                                        <div class="row">
                                            
                                            <article class="card fl-left" style= "width: 500px; margin-left: 20px;">
                                            <section class="date">
                                                <time datetime="23th feb">
                                                <span>31</span><span>07</span>
                                                </time>
                                            </section>
                                            <section class="card-cont">
                                                <!-- <small>dj khaled</small> -->
                                                <h3 style="padding-top: 10px;">${view[0].name}</h3>
                                                <div class="even-date">
                                                <i class="fa fa-calendar"></i>
                                                <time>
                                                <span>${view[0].regdate}</span>
                                                <span>~ ${view[0].deadline}</span>
                                                </time>
                                                </div>
                                                <div class="even-info">
                                                <i class="fa fa-map-marker"></i>
                                                <p>
                                                    ${view[0].rate}%
                                                </p>
                                                </div>
			                                     <%-- <form id="myForm" name="myForm">
													<input type="hidden" name="sample" id="sample" value="sample" />
													<jsp:include page="/event/pop.jsp"/>
													 <a href="/event/pop.do" style="background-color: #9E6F21; border-radius: 20px;">다운로드</a> --%>
													 
													 <div class="container mt-3" style="width: 700px;">
													 <!-- Button trigger modal -->
														<button type="button" class="btn btn-primary" onclick="download(${view[0].couponseq});"
															data-toggle="modal" data-target="#exampleModal" style="background-color: #9E6F21;">
															다운로드
														</button>
													 <!-- Modal -->
														<div class="modal fade" id="exampleModal">
															<div class="modal-dialog">
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title">Coupon</h5>
																		<button type="button" class="close"
																			data-dismiss="modal" aria-label="Close">
																			<span aria-hidden="true">
																				×
																			</span>
																		</button>
																	</div>
																	<div class="modal-body">
																		<h5>쿠폰이 발급되었습니다.</h5>
																		<!-- <a href="#" data-toggle="tooltip"
																			title="GeeksforGeeks" data-placement="right">
																			Hover over me
																		</a> -->
																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-secondary"
																			data-dismiss="modal">
																			닫기
																		</button>
																		<!-- <button type="button" class="btn btn-primary">
																			Save changes
																		</button> -->
																	</div>
																</div>
															</div>
														</div>
														</div>
														
														
											<!-- 	</form> -->
                            
                                            </section>
                                            </article>
                      
                                        </div>

                                        </div>
                    

                                    <div class="nav tag-cloud">
                                        <a href="/event/list.do" class="cute-button">목록</a> 
                                    </div>
                                </article>
                            
                                
                            </div>
                        </div>
                    </div>
                </div>

                

                
            </div>
          </div>
          <div class="col-1 over-wrap" id="aside1" >
            <table class="right-sidebar">
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                </tr>
            </table>
         </div>
        </div>
    </div> 
  </main>
      <hr>

      <div class="container-fluid footer-div" >
        <div class="footer1">
          <footer class="footer2">
              <div class="row footer3">
                <div class="col-6 col-md-10 mb-3">
                    <img src="img/bb1.png" class="footer-img">
                    <ul class="nav flex-column">
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">회사소개&nbsp;&nbsp;이용약관&nbsp;&nbsp;개인정보처리방침&nbsp;&nbsp;청소년보호정책&nbsp;&nbsp;대량주문안내&nbsp;&nbsp;협력사여러분&nbsp;&nbsp;채용정보&nbsp;&nbsp;광고소개</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">대표이사 : 유동현 서울특별시 종로구 종로 1 사업자등록번호 : 102-81-11670</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">대표전화 : 1544-1900 | FAX : 0502-987-5711(지역번호 공통) 서울특별시 통신판매업신고번호 : 제 653호 사업자정보확인</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">© KYOBO BOOK CENTRE</a></li>
                    <li class="nav-item mb-7"><a href="#" class="nav-link p-0 text-muted"></a><small>&copy;&nbsp;2023&nbsp;JDSC&nbsp;F7Company,&nbsp;Inc.&nbsp;All&nbsp;rights&nbsp;reserved.</small></li>
                    </ul>
                    
                </div>
              
                <div class="col-md-2  mb-3">
                  <a href="https://instagram.com/book._bbang?igshid=MmIzYWVlNDQ5Yg=="><i class="bi bi-instagram footer-ico n" style="font-size: 2rem;"></i></a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="https://www.youtube.com/@amazingc0met"><i class="bi bi-youtube footer-icon"></i></a>
                </div>
              </div> 
          </footer>
        </div>
      </div>
    
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" class="token">
   <input type="hidden" name="${_csrf.headerName}" value="${_csrf.headerName }" class="jhheader">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
    
   /*  
  	//1.빈창 팝업 생성
	var url = "";
	var windowTargetName = "targetName";
	var features = "scrollbars=yes,width=300,height=300,location=no, resizable=yes";
	window.open(url, windowTargetName, features);
	
	// 2.POST로 데이터 전달
	myForm.action="pop.do"; // 이동
	myForm.method="post";
	myForm.target=windowTargetName;
	myForm.submit(); */
	
	// Enable tooltips
	var tooltipTriggerList =
		[].slice.call(
			document.querySelectorAll('[data-toggle="tooltip"]'));
	var tooltipList =
		tooltipTriggerList.map(function (tooltipTriggerEl) {
			return new bootstrap.Tooltip(tooltipTriggerEl);
		});
    
	
	function download(seq){
		
		$.ajax({
			url:'/event/addcoupon.do',
			type: 'POST',
			data: {
				seq: seq
			},
			beforeSend: function (jqXHR, settings) {
                var header = $('.jhheader').val();
                var token = $('.token').val();
              jqXHR.setRequestHeader(header, token);
            }
		});
		
	}
    </script>
</body>
</html>