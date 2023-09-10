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
<!-- <link rel="stylesheet" href="https://me2.do/5BvBFJ57"> -->
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
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/bookdetailadmin.css">
<style>
	.contains{
		display: flex;
	}
	
	.wrap-content{
		overflow: hidden;
	}
	
	.leftBtn, .rightBtn{
		z-index: 1;
		align-self: center;
		font-size: 2rem;
		margin: 20px;
		
	}
	
	.leftBtn:hover, .rightBtn:hover{
		cursor:pointer;
		color: cornflowerblue;
	}

	.item{
		border-collapse: collapse;
		border: 1px solid #CCC;
	}
	
	.item tr {
		border: 1px solid #CCC;
	}
	
	.item td{
		padding: 8px;
		border: 1px solid #CCC;
		align-items: center;
		text-align: center;
	}
	
	.image{
		display: flex;
	}
	
	.items img{
		flex-shrink: 0;
		width: 100%;
		height: 750px;
		object-fit: full;
		transition: 0.5s all;
	}
	
	.item .items{
		width: 750px;
		height: 620px;
		padding: 15px;
		
	}
	
	.item tr:nth-child(1) td{
		text-align: left;
	
	}
	
	.item .content > td{
		max-width: 620px;
		text-align: left;
	}
	
	.chatBtns{
		min-width: 200px;
		display: inline-block;
	}
	
	.chatBtns > .chatBtn{
		margin: 15px;
		
	}
	
	.chatBtns .chatBtn button {
		font-size: 15px;
	}
	
	.chatBtn > button:hover{
		background-color: cornflowerblue;
	}
	
	.chatBtns button{
		font-size: 1.5rem;
		border: 0;
		border-style: none;
		background-color: #BACEE0;
		padding: 10px;
	}
	
	.innerbtn {
		/* width: 120px !important; */
		/* border: 1px solid #eee !important; */
		background-color: #e7dbc7 !important;
		width: auto !important;
    	padding: 0px 20px !important;
	}
	
	.bookListAll {
		margin-bottom: 0px;
		
	}
	
	.btns {
	margin: 20px 0px;
    display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: center;
    }
    
    .container {
    	display: flex;
    }
    
    .countdiv {
    display: inline-block;	
    background-color: #fff;
    width: 25px;
    height: 25px;
    border-radius: 50%;
    }
	
	
	.wrap-content .image{
		width: 750px;
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
            <ul class="nav">
              <li><h3>${bookList[3].field}</h3></li>
              <c:forEach items="${booknav}" var="dto">
              <li><a href="booklist.do?field=${bookList[3].field}&genre=${dto.genre}">${dto.genre}</a></li>
              </c:forEach>
            </ul>
            <br>
          </div>
          <div class="col-8 main-width">
            <div class="over-wrap">
            
                <!-- ********여기애 메인 내용을 넣어주세요^^^^^^^^^^^********  -->
                
                <div class="bookListAll">
                    <div class="quHeader">
                        헌책방 게시물
                    </div>
                    
                    <hr>
                
                <div class="container">
                
                <c:if test="${dto.imgList.size() > 1}">	
					<span class="leftBtn">&lt;</span>
				</c:if>

                    <!-- 정렬탭 -->
                    <hr style="margin: 0px;">
                    <table class="table tblQ">
                        <tr>
				<th style="border-top:0px;">제목</th>
				<td colspan="3" style="border-top:0px;">${dto.title}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${nickname}</td>
				<th>작성일자</th>
				<td>${dto.regdate}</td>
			</tr>
			<tr>
				<th>금액</th>
				<td colspan="3">
					<c:set var="number" value="${dto.price}" />
					<fmt:formatNumber value="${number}" pattern="#,##0" />원
				</td>
			</tr>
			<tr>
				<td colspan="4" class="items" style="border-bottom-width:0px">
					<div class="wrap-content">
						<div class="image">
							<c:forEach items="${dto.imgList}" var="image">
								<img src="/resources/secondhand/${image.secondhandimg}" class="img">
							</c:forEach>
						</div>
					</div>
				</td>
			</tr>
			
			<tr class="content" style="display: contents; border-style: none;">
				<td colspan="4" style="border:0px;">${dto.content}</td>
			</tr>
			
                    </table>
                    <c:if test="${dto.imgList.size() > 1}">	
			<span class="rightBtn">&gt;</span>
		</c:if>
		<div class="chatBtns">
			<c:forEach items="${chatDto}" var="cdto">
				<div class="chatBtn">
					<button type="button" class="${cdto.chatroomseq}" onclick="openChat(${cdto.chatroomseq})">
						${cdto.nickname} 
						<div class="countdiv">
						<span class="count">${cdto.cnt}</span>
						</div>
					</button>
				</div>
			</c:forEach>
			<c:if test="${others == 2}">
				<div class="chatBtn"><button type="button" onclick="startChat(${memberseq})">판매자와 대화하기</button></div>
			</c:if>
		</div>
	</div>
	</div>
	
	<hr>
	
	<div class="btns">
	<div>
		<sec:authentication property="principal" var="pinfo"/>
		<sec:authorize access="hasRole('ROLE_ADMIN') or (isAuthenticated() and principal.memberseq == #dto.memberseq)">	
			<button type="button" class="innerbtn btn btn-light" onclick="location.href='/secondhand/edit.do?secondhandseq=${dto.secondhandseq}';">수정하기</button>
			<button type="button" class="innerbtn btn btn-light" onclick="isCheck(${dto.secondhandseq})">삭제하기</button>
		</sec:authorize>
	</div>
	<br>
	<div style="align-self: flex-end;">
		<button type="button" class="innerbtn btn btn-light" onclick="location.href='/secondhand/list.do';">돌아가기</button>
	</div>
	</div>
		
	<div class="itemList">
		<c:forEach items="${list}" var="dto">
			<div onclick="location.href='/secondhand/view.do?secondhandseq=${dto.secondhandseq}&nickname=${dto.nickname}';" class="item">
				<div>
					<img src="/resources/secondhand/${dto.domainImg}">
				</div>
				<div>${dto.title}</div>
						
				<div style="font-weight: bold;">
					<c:set var="number" value="${dto.price}" />
					<fmt:formatNumber value="${number}" pattern="#,##0" />원
				</div>
				<div>작성자: ${dto.nickname}</div>
				<div>${dto.address}</div>
				<div>
					<c:if test="${dto.status == 'y'}">
						<span style="color:red;">거래완료</span>
					</c:if>
					<c:if test="${dto.status == 'n'}">
						<span style="color:red;">거래 미완료</span>
					</c:if>
				</div>
			</div>
		</c:forEach>
	</div>
	
	</main>
     <%@ include file="/WEB-INF/views/inc/footer.jsp" %>

	
	<input type="hidden" value="${dto.secondhandseq}" class="secondhandseq">
	<input type="hidden" value="${smemberseq}" class="smemberseq">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" class="token">
	<input type="hidden" name="${_csrf.headerName}" value="${_csrf.headerName }" class="jhHeader">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
		
		let index = 0;

		$('.leftBtn').click(function(){
		    if(index == 0){
		        alert('처음 사진 입니다.');
		    }
		
		    if(index != 0){
		        index--;
		    }
		        
		    let imgMove = index * -750;
		
		    $('.img').css('transform', 'translateX(' + imgMove + 'px)');
		
		});
		
		$('.rightBtn').click(function(){
		    let length = $('.img').length;
		    
		    if(index == length - 1){
		        alert('마지막 사진 입니다.');
		    }
		
		    if(index < length - 1){
		        index++;
		    }
		        
		    let imgMove = index * -750;
		
		    $('.img').css('transform', 'translateX(' + imgMove + 'px)');
		    
		});
		
		function isCheck(seq){
			let result = confirm('정말 삭제하시겠습니까?');
			
			if(result == true){
				location.href = '/secondhand/del.do?seq=' + seq;
			}
		}
		
		function openChat(seq){
			
			$('.' + seq).find('.count').eq(0).html('0');
			 let child = window.open('/chat/chatroom.do?chatroomseq=' + seq, '_blank' , 'width=404,height=570,resizable=no');
			 
			 child.addEventListener('load', function(){
			 	child.connect(); 
			 });
		}
		
		
		function startChat(memberseq){
			let secondhandseq = $('.secondhandseq').val();
			let smemberseq = $('.smemberseq').val();
			
			let data = {
				bmemberseq: memberseq,
				secondhandseq : secondhandseq,
				smemberseq: smemberseq
			};
			
			let child;
			
			$.ajax({
				url: '/chat/checkroom.do',
				type: 'POST',
				dataType: 'json',
				data: {
					data: JSON.stringify(data)
				},
				beforeSend: function (jqXHR, settings) {
			        var header = $('.jhHeader').val();
			       	var token = $('.token').val();
			        jqXHR.setRequestHeader(header, token);
				},
				success: function(result){
					child = window.open('/chat/chatroom.do?chatroomseq=' + result, '_blank', 'width=404,height=570,resizable=no');
					child.addEventListener('load', function(){
						 child.connect(); 
					});		
				},
				error: (a,b,c) => console.log(a,b,c)
				
			});
			//구매자의 경우 기존에 채팅방이 있는지 확인해서 처리할 로직
		}
		
		
</script>
</body>
</html>