<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
	<link href="/resources/css/main.css" rel="stylesheet">
</head>
<style>

	.img-radius img {

        border-radius: 80px;
        height: 550px;
        border: 3px solid #b8cbea;
        margin-bottom: 100px;
        margin-top: 20px;
    }
	
	@font-face {
	    font-family: 'IM_Hyemin-Bold';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2106@1.1/IM_Hyemin-Bold.woff2') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	@font-face {
	     font-family: 'NIXGONM-Vb';
	     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/NIXGONM-Vb.woff') format('woff');
	     font-weight: bolder;
	     font-style: normal;
	}
	@import url('https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css');
	@font-face {
	    font-family: 'SUIT-Regular';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
	    font-weight: normal;
	    font-style: normal;
	}
	body {
	    font-family: 'SUIT-Regular';
	}
	
	h2 {
	    font-family: 'IM_Hyemin-Bold';
	}
	.ftnix {
	    font-family: 'NIXGONM-Vb';
	}
	.btn-light {
		width:auto;
	}
	
	.btn:hover {
		background-color: #EEE;
	}
	.minibook {
	margin-bottom: 10px;
	}
	
</style>
<body>
    <!--  -->

    <%@ include file="/WEB-INF/views/inc/header.jsp" %>
        

        <hr>
    
    <!-- 목록 -->
    
    <main class="py-md-3 pl-md-5">
      <div class="main-margin" id="main">
        <div class="row ">
          <div class="col-3 bd-sidebar">
            <ul class="nav" style="display: none;">
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
                <div class="bookListAll">
                
                	<h2 style="margin-left: 30px;">책빵과 함께해요! <7월 독서 이벤트>
                    </h2>

                    <!-- 정렬탭 -->
                    <div id="carouselExampleFade" class="carousel slide carousel-fade img-radius" data-bs-ride="carousel" style="width: 900px; margin-left:60px;" >
                        <div class="carousel-inner">
                          <div class="carousel-item active" data-bs-interval="3000">
                            <img src="/resources/image/001.jpg" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item" data-bs-interval="3000">
                            <img src="/resources/image/002.jpg" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item" data-bs-interval="3000">
                            <img src="/resources/image/003.jpg" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item" data-bs-interval="3000">
                            <img src="/resources/image/004.jpg" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item" data-bs-interval="3000">
                            <img src="/resources/image/005.jpg" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item" data-bs-interval="3000">
                            <img src="/resources/image/006.jpg" class="d-block w-100" alt="...">
                          </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                        </button>
                      </div>
                
                
                
                	<div class="cartHeader ftnix">
                		<strong>분야별 신작</strong>
                	</div>
                	
                	<hr>
                	
                	<div class="tableContainer"  style="margin-top:15px;">
                		<span>
                       		<input type="button" class="btn" name="field" id="field1" value="소설/시/희곡">
                       		<input type="button" class="btn" name="field" id="field2" value="역사">
                       		<input type="button" class="btn" name="field" id="field3" value="IT 모바일">
                       		<input type="button" class="btn" name="field" id="field4" value="경제/경영">
                       		<input type="button" class="btn" name="field" id="field5" value="여행">
						</span>
                        <table class="bookCont" id="tblfield">
                        	<tbody>
	                            <tr>
	                            	<c:forEach items="${fieldlist}" var="dto">
	                                	<td><img src="/resources/image/bookposter/${dto.image}"></td>
	                                </c:forEach>
	                            </tr>
	                            <tr>
	                                <c:forEach items="${fieldlist}" var="dto">
	                                	<td>
	                                		<a href='/book/bookview.do?bookseq=${dto.bookseq}&field=${dto.field}'>${dto.title}</a>
	                                		<br>
	                                		<span class="writer">${dto.writer}</span>
	                                	</td>
	                                </c:forEach>
	                            </tr>
                            </tbody>
                        </table>
                    </div>
                	
                	
                	
                
                
                
                	<hr style="margin-bottom: 50px;">

                    <!-- 정렬탭 -->
                    <div class="cartHeader ftnix">
                        <strong>지구의 선택</strong>
                    </div>
                    <hr>

                    <div class="cartHeader">
                        <table class="bookCont">
                            <tr>
                                <td style="display: flex; padding: 15px 15px;">
                                    <img src="/resources/image/bookposter/지구를 살리는 기후위기 수업.jpg">
                                    <div style="display: flex; flex-direction: column; align-items: flex-start; width: 500px; padding: 20px;">
                                        <div style="font-size: 20px;"><a href='/book/bookview.do?bookseq=733&field=자연과학'>[자연과학/지구과학] 지구를 살리는 기후위기 수업</a></div>
                                        <div style="font-size: 14px;">이영경</div>
                                        <div style="font-size: 16px;"><strong>16,150원</strong></div>
                                        <div style="font-size: 14px; text-align-last: left;">기후위기에 맞서서 미래를 바꿀 지혜와 행동알고 나면 많은 것이 달라질 거야!지구 온도 상승, 뭐가 문제예요? 전기차 타면 기후위기 해결할 수 있지 않나요? 에코백과 텀블러 열심히 쓰면 되지 않아요? 기후위기, 기후변화와 같은 말을 들을 때마다 누구나 한 번쯤 가지는 의문이다. 하지만 이 문제가 얼... </div>

                                    </div>
                                </td>
                                <td class="miniImg" style="margin-right: 20px;">
                                    <img class="minibook" src="/resources/image/bookposter/지구인만큼 지구를 사랑할 순 없어.jpg">
                                    <div style="font-size: 13px;"><a href='/book/bookview.do?bookseq=135&field=에세이'>지구인만큼 지구를 사랑할 순 없어</a></div>
                                </td>
                                <td class="miniImg">
                                    <img class="minibook" src="/resources/image/bookposter/위기의 지구  물러설 곳 없는 인간.jpg">
                                    <div style="font-size: 13px;"><a href='/book/bookview.do?bookseq=737&field=자연과학'>위기의 지구  물러설 곳 없는 인간</a></div>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <hr style="margin-bottom: 50px;">

                    <div class="cartHeader ftnix">
                        <strong>베스트셀러</strong>
                    </div>
                    <hr>

                    <div class="tableContainer">
                        <table class="bookCont">
                            <tr>
                            	<c:forEach items="${bestlist}" var="dto">
                                	<td><img src="/resources/image/bookposter/${dto.image}"></td>
                                </c:forEach>
                            </tr>
                            <tr>
                                <c:forEach items="${bestlist}" var="dto">
                                	<td>
                                		<a href='/book/bookview.do?bookseq=${dto.bookseq}&field=${dto.field}'>${dto.title}</a>
                                		<br>
                                		<span class="writer">${dto.writer}</span>
                                	</td>
                                </c:forEach>
                            </tr>
                        </table>
                        
                        </div>
                        
                    <hr style="margin-bottom: 50px;">
                    
                    
                    <div class="cartHeader ftnix">
                        <strong>오늘의 선택</strong>
                    </div>
                    <hr>

                    <div class="cartHeader">
                        <table class="bookCont">
                            <tr>
                                <td style="display: flex; padding: 15px 15px;">
                                    <img src="/resources/image/bookposter/백범일지.jpg">
                                    <div style="display: flex; flex-direction: column; align-items: flex-start; width: 500px; padding: 20px;">
                                        <div style="font-size: 20px;"><a href='/book/bookview.do?bookseq=945&field=역사'>[한국사/한국문화] 백범일지</a></div>
                                        <div style="font-size: 14px;">김구</div>
                                        <div style="font-size: 16px;"><strong>10,800원</strong></div>
                                        <div style="font-size: 14px; text-align-last: left;">『백범일지』는 1947년 국사원에서 최초로 출간된 이후 지금까지 수많은 사람들에게 읽혀져 왔고 지금도 꾸준히 읽히고 있는 전국민의 필독서이다. 27년간 대한민국임시정부를 이끌어온 민족독립운동가이자 자신의 전 생애를 조국과 민족을 위해 바친 겨레의 큰 스승 백범, 일제의 침략 아래 신음하는 우리 민족의 살길을 ... </div>
                                    </div>
                                </td>
                                <td class="miniImg" style="margin-right: 20px;">
                                    <img class="minibook" src="/resources/image/bookposter/리더라면 정조처럼.jpg">
                                    <div style="font-size: 13px;"><a href='/book/bookview.do?bookseq=941&field=역사'>리더라면 정조처럼</a></div>
                                </td>
                                <td class="miniImg">
                                    <img class="minibook" src="/resources/image/bookposter/30개 도시로 읽는 미국사.jpg">
                                    <div style="font-size: 13px;"><a href='/book/bookview.do?bookseq=966&field=역사'>30개 도시로 읽는 미국사</a></div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    
                    
                    <hr style="margin-bottom: 50px;">

                    <div class="cartHeader ftnix">
                        <strong>신작 도서</strong>
                    </div>
                    <hr>

                    <div class="tableContainer">
                        <table class="bookCont">
                            <tr>
                                <c:forEach items="${freshlist}" var="dto">
                                	<td><img src="/resources/image/bookposter/${dto.image }"></td>
                                </c:forEach>
                            </tr>
                            <tr>
                            	<c:forEach items="${freshlist}" var="dto">
                                	<td>
                                	<a href='/book/bookview.do?bookseq=${dto.bookseq}&field=${dto.field}'>${dto.title}</a>
                                		<br>
                                		<span class="writer">${dto.writer}</span>
                                	</td>
                                </c:forEach>
                            </tr>
                        </table>
                        
                        </div>
                        <hr>
            
            
                </div>

            </div>
          </div>
          <%@ include file="/WEB-INF/views/inc/stickybanner.jsp" %>
        </div>
    </div> 
  </main>
      <%@ include file="/WEB-INF/views/inc/footer.jsp" %>
    
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
    
    $('input[name="field"]').each(function(){
    	  $(this).click(function(){
    	    let field = $(this).val();
    	    
    	    

            $.ajax({
            	url : "/main/mainok.do",
                type: "get",
                dataType: "json",
                data: {
                    field: field
                },
                success: function(data) {
                    // 서버로부터 받은 응답 처리
                    let temp1 = '<tr>';
                    let temp2 = '<tr>';
                    $(data).each((index, item)=>{
                    	
                    	
                    	temp1 +=
                    	`
	                        <td><img src="/resources/image/bookposter/\${item.image}"></td>
	    				`;
	    				
	    			
	                     temp2 +=
	                    	 `
                            	<td>
                            		\${item.title}
                            		<br>
                            		\${item.writer}
                            	</td>     
                    	`;
                    });
                    
                    temp1 += '</tr>';
                    temp2 += '</tr>';
                    
                    $('#tblfield tbody').html('');
                    $('#tblfield tbody').append(temp1);
                    $('#tblfield tbody').append(temp2);
                    
                }
            });
        });
    });
        

    </script>
</body>
</html>
</html>