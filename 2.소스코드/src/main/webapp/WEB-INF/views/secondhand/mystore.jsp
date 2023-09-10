<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="/resources/css/style.css">
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
    
    <style>
        
    </style>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
<style>

	.itemList{
		display:flex;
		width: 800px;
		flex-wrap: wrap;
		padding: 10px;
	}
	
	.item{
		margin: 15px;
		cursor: pointer;
		width: calc(25% - 30px);
		margin-bottom: 50px;
	}
	
	.item:hover{
		color: cornflowerblue;
		
	}
	
	.item img{
		width: 170px;
		height: 150px;
		border-radius: 10%;
		box-shadow: 1px 1px 6px black;
	}
	.item img:hover{
		box-shadow: 3px 3px 8px black;
	}
	
	.JhList{
		text-align: center;
	}
	
	.word{
		border: 1px;
	}
	
	#search .search-container{
		width: 600px;
	}
	
	#searchSel{
		border: 0;
		border-style: none;
	}
	
	.JhList{
		width:800px;
		margin: 20px;
		
	}
	
	.innerbtn {
		/* width: 120px !important; */
		/* border: 1px solid #eee !important; */
		background-color: #e7dbc7 !important;
		width: auto !important;
    	padding: 0px 20px !important;
	}
	
	.scbtn {
    border: 0px;
    background-color: transparent;
    }
    
    #search {
    display: flex;
    }
	
</style>
</head>
<body>
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
                
			<div class="itemList">
			<div style="margin-left: 2em;">
				<form id="search">
					<div class="search-container search-box1" >
						<select name="condition" id="searchSel" style="width: 78px; margin-left: 15px;">
							<option value="1" selected>제목</option>
							<option value="2">주소</option>
						</select>
						<span class="material-symbols-outlined">
		                    arrow_drop_down
		                </span>
						<input type="text" name="word" class="word search-input"> &nbsp;<button type="submit" class="scbtn"> <span class="material-symbols-outlined search-icon">
		                   search
		                </span></button>
						</div>
						
						<sec:authorize access="isAuthenticated()">
							<div style="align-self: center; margin-left: 20px;"><button type="button" onclick="location.href='/secondhand/add.do';" class="innerbtn btn btn-light">글쓰기</button></div>
						</sec:authorize>
				</form>	
				</div>	
				
				<div style="width:800px; margin: 20px; font-weight: bold; text-align: center"><h1>등록한 상품</h1></div>
				
				<c:forEach items="${list}" var="dto">
					
									
					<div onclick="location.href='/secondhand/view.do?secondhandseq=${dto.secondhandseq}&nickname=${dto.nickname}';" class="item">
					
						<div style="margin-bottom: 8px;" class="images">
							<img src="/resources/secondhand/${dto.domainImg}">
						</div>
					
						<div class="title">${dto.title}</div>	
						
						<div style="font-weight: bold;" class="price">
							<c:set var="number" value="${dto.price}" />
							<fmt:formatNumber value="${number}" pattern="#,##0" />원
						</div>
					
						<input type="hidden" value="${dto.nickname}" name="nickname">
					
						<div class="address">${dto.address}</div>
					
						<div>
							<c:if test="${dto.hour < 24}">
								<span style="color:red;">new</span>
							</c:if>
							<c:if test="${dto.hour >= 24}">
							<c:set var="days" value="${dto.hour div 24}" />
								<span><fmt:formatNumber value="${days}" pattern="0" />일 전</span>
							</c:if>
							
						</div>
						
						<div class="status">
							<c:if test="${dto.status == 'y'}">
								<span style="color:red;">거래완료</span>
							</c:if>
						</div>
						
						
					</div>	
				</c:forEach>
			</div>

            </div>
          </div>
          <%@ include file="/WEB-INF/views/inc/stickybanner.jsp" %>
        </div>
    </div> 
  </main>
	<input type="hidden" name="memberseq" value="${memberseq}">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
	
	
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

</script>
</body>
</html>