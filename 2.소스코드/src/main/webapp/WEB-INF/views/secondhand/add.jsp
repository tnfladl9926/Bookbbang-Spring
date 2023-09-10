<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	#attach-zone {
		background-color: var(--back-color);
		min-width: 500px;
		min-height: 150px;
	}

	#attach-zone .item {
		display: flex;
		justify-content: space-between;
		font-size: 14px;
		margin: 8px;
		
	}
	
	#attach-zone .item > span:nth-child(1) {
		border-bottom:1px solid black;
	}
	
	input[type=text]{
		border-style: none;
		border: 0px;
		
	}
	
	textarea{
		border-style: none;
		border: 0px;
		width: 90%;
		min-height: 300px;
	}
	
	.bolder input[type=text]{
		border: 1px solid #CCC;
	}
	
	
	.innerbtn {
		/* width: 120px !important; */
		/* border: 1px solid #eee !important; */
		background-color: #e7dbc7 !important;
		width: auto !important;
    	padding: 0px 20px !important;
	}
	.btns {
	margin: 20px 0px;
    display: flex;
    justify-content: center;
    flex-direction: column;
    align-items: center;
    flex-direction: row;
    }
    
    .tblQ {
    margin-bottom: 0px;
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
                        헌책방 게시물 등록
                    </div>
                    
                    <hr>
                
                <div class="container">
                
                <form method="POST" action="/secondhand/addok.do" enctype="multipart/form-data" class="form1">
		<table class="table tblQ">
			<tr>
				<th style="border-top:0px;">제목</th>
				<td style="border-top:0px;" ><input type="text" name="title" required placeholder="제목을 입력해주세요."></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" required placeholder="내용을 입력해주세요"></textarea></td>
			</tr>
			<tr>
				<th>사진</th>
				<td>
					<div id="attach-zone"><input type="text" placeholder="등록할 사진을 드래그하세요" disabled></div> 
					<input type="file" name="images" id="attach" style="display: none;">
				</td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input type="text" name="price" required style="text-align:right; width: auto;" onkeyup="plusComma(this)" maxlength="11" placeholder="금액을 입력해주세요.">원</td>
			</tr>
			<tr>
				<th>거래 장소</th>
				<!-- <td class="bolder"><input type="text" required placeholder="주소를 입력해주세요."> -->
				<td class="bolder">					
					<input type="text" id="sample4_jibunAddress" placeholder="지번주소" required disabled name="addressList" style="width: 50%;">
					<input type="button" class="btn" style="border: 1px solid #a69f9f; padding: 1px 10px;" onclick="sample4_execDaumPostcode()" value="주소입력">
					<span id="guide" style="color:#999;display:none"></span>
					<br>
					<input type="text" id="sample4_detailAddress" placeholder="상세주소" required name="addressList" style="width: 50%;">
				</td>
			</tr>
		</table>
		
		<hr style="margin: 0px !important;">
		
		<input type="hidden" name="memberseq" value="<sec:authentication property="principal.memberseq"/>"/>
		<div class="btns">
			<button type="submit" class="innerbtn btn btn-light">등록하기</button>
			<button type="button" class="innerbtn btn btn-light" onclick="location.href='/secondhand/list.do';">돌아가기</button>
		</div>
		<!-- POST요청할때는 반드시 토큰이 있어야함 -->
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
	</form>
	</div>
	</div>
	</main>
	
    <%@ include file="/WEB-INF/views/inc/footer.jsp" %>

	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
	function plusComma(input){
		let value = input.value.replace(/[^0-9]/g, '');
		
		let formattedValue = value.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		
		input.value = formattedValue;
	};
	
	
	
	$('.form1').submit(function(){
		let price = $('input[name="price"]');
		
		price.val(price.val().replace(/,/g, ''));
		
		let address = '';
		$('input[name=addressList]').each(function(){
			address += $(this).val() + ' ';
		});
		
		$('table').append(`<input type="hidden" value="\${address}" name="address">`);
		
		
	});
	
	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

            }
        }).open();
    }
	
	
	
	function checkFile(filename, filesize){
		const maxsize = 10485760; //10MB
		//위험 파일들 > 실행파일(exe, sh) 등 못올리게 하기
		const regex = /(.*?)\.(exe|sh)$/gi;
		
		if(filesize >= maxsize){
			alert('단일 파일의 크기가 10MB 이하만 가능합니다.');
			return false;
		}
		
		//정규식으로 test함수를 통해 filename에 exe나 sh가 포함되면 파일을 못올리게끔
		if(regex.test(filename)){
			alert('해당 파일은 업로드할 수 없습니다.');
			return false;
		}
		
		return true;
	}
	
	$('#attach-zone')
	.on('dragenter', function(e){
		e.preventDefault();
		e.stopPropagation();
	})
	.on('dragover', function(e){
		e.preventDefault();
		e.stopPropagation();
		$(this).css('background-color', '#f0e7d6');
	})
	.on('dragleave', function(e){
		e.preventDefault();
		e.stopPropagation();
		$(this).css('background-color', 'var(--back-color)');
	})
	.on('drop', function(e){
		$(this).empty();
		e.preventDefault();
		
		//드랍했을때 파일명
		const files = e.originalEvent.dataTransfer.files;
		
		if(files != null && files != undefined){
			let temp = '';
			for(let i = 0; i< files.length; i++){
				//console.log(files[i].name);
				let f = files[i];
				
				let filename = f.name;
				let filesize = f.size / 1024 / 1024; //MB 변환
				
				if(!checkFile(filename, f.size)){
					e.preventDefault();
					return false;
				}
				
				//파일 사이즈가 너무 작으면 소수2자리까지 출력하고, 아니라면 소수1개까지만 출력
				filesize = filesize < 1 ? filesize.toFixed(2) : filesize.toFixed(1);
				
				temp += `
					<div class="item">
						<span>\${filename}</span>
						<input type="hidden" value="\${filename}" name="addImg">
						<span>\${filesize}MB</span>
					</div>
					`;
				
			}//for
			
			$(this).append(temp);
		}//if
		
		$(this).css('background-color', 'var(--back-color)');
		//속성에 type="file"에는 files라는 속성이 있음
		$('#attach').prop('files', files);
	});
</script>
</body>
</html>