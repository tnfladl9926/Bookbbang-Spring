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
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/sulim.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="/resources/css/style.css">
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
  
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
            <ul class="nav">
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
                
                
                  <h1>Events</h1>

                <div class="gray-bg">
                    <div class="row">
                        
                        <article class="card fl-left">
                        <section class="date">
                            <time datetime="23th feb">
                            <span>31</span><span>07</span>
                            </time>
                        </section>
                        <section class="card-cont">
                            <h3 style="padding-top: 10px;">${list[0].title}</h3>
                            <div class="even-date">
                            <i class="fa fa-calendar"></i>
                            <time>
                            <span>${list[0].regdate}</span>
                            <span>${list[0].deadline}</span>
                            </time>
                            </div>
                            <div class="even-info">
                            <i class="fa fa-map-marker"></i>
                            <p>
                                ${list[0].content}
                            </p>
                            </div>
                            <a href="/event/view.do?eventseq=${list[0].eventseq}" style="background-color: #9E6F21; border-radius: 5px;">상세보기</a>
                        </section>
                        </article>
                         <article class="card fl-left">
                        <section class="date">
                            <time datetime="23th feb">
                            <span>31</span><span>07</span>
                            </time>
                        </section>
                        <section class="card-cont">
                            <!-- <small>dj khaled</small> -->
                            <h3 style="padding-top: 10px;">이벤트 제목</h3>
                            <div class="even-date">
                            <i class="fa fa-calendar"></i>
                            <time>
                            <span>2023-07-01</span>
                            <span>2023-07-31</span>
                            </time>
                            </div>
                            <div class="even-info">
                            <i class="fa fa-map-marker"></i>
                            <p>
                                이벤트 내용
                            </p>
                            </div>
                            <a href="/event/view.do" style="background-color: #9E6F21; border-radius: 5px;">상세보기</a>
                        </section>
                        </article>
                    </table>
                    </div>

                    <div class="row">
                        <article class="card fl-left">
                        <section class="date">
                            <time datetime="23th feb">
                            <span>31</span><span>07</span>
                            </time>
                        </section>
                        <section class="card-cont">
                            <!-- <small>dj khaled</small> -->
                            <h3 style="padding-top: 10px;">이벤트 제목</h3>
                            <div class="even-date">
                            <i class="fa fa-calendar"></i>
                            <time>
                            <span>2023-07-01</span>
                            <span>2023-07-31</span>
                            </time>
                            </div>
                            <div class="even-info">
                            <i class="fa fa-map-marker"></i>
                            <p>
                                이벤트 내용
                            </p>
                            </div>
                            <a href="/BB/eventdetail.html" style="background-color: #9E6F21; border-radius: 5px;">상세보기</a>
                        </section>
                        </article>
                        <article class="card fl-left">
                            <section class="date">
                                <time datetime="23th feb">
                                <span>31</span><span>07</span>
                                </time>
                            </section>
                            <section class="card-cont">
                                <!-- <small>dj khaled</small> -->
                                <h3 style="padding-top: 10px;">이벤트 제목</h3>
                                <div class="even-date">
                                <i class="fa fa-calendar"></i>
                                <time>
                                <span>2023-07-01</span>
                                <span>2023-07-31</span>
                                </time>
                                </div>
                                <div class="even-info">
                                <i class="fa fa-map-marker"></i>
                                <p>
                                    이벤트 내용
                                </p>
                                </div>
                                <a href="/event/view.do?eventseq=${eventseq}" style="background-color: #9E6F21; border-radius: 5px;">상세보기</a>
                            </section>
                            </article>
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
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
    
    </script>
</body>
</html>