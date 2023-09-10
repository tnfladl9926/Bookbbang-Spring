<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
  <link href="/resources/css/register.css" rel="stylesheet">
  <link href="/resources/css/ydhn.css" rel="stylesheet">

  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  
  
  <title>회원가입</title>
  <style>
    
  </style>
</head>
<body>
  <div class="login-container" style="height: 100%;">
    <div class="login-form">
      <div class="asdf">
        <img src="/resources/image/Bookbbang_logo.png" style="height: 100px ;">
        <h3>회원가입</h3>
        

            <!-- ID -->
            <form action="/member/registerok.do" method="post">
                <div>
                    <h4 class="join_title">
                        <label for="id">아이디</label>
                    </h4>
                    <span class="box int_id" style="display: flex;">    
                        <input type="text" id="id" name="id" class="int" maxlength="20">
                        <input type="button" class="styled-button-big" value="중복확인" onclick="idcheck()">
                    </span>
                   	<span id="alertid" style="color:red; font-size:13px; margin-left:5px; visibility: hidden;"></span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h4 class="join_title"><label for="pswd1">비밀번호</label></h4>
                    <span class="box int_pass">
                        <input type="password" id="pswd1" name="pw" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h4 class="join_title"><label for="pswd2">비밀번호 재확인</label></h4>
                    <span class="box int_pass_check">
                        <input type="password" id="pswd2" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h4 class="join_title"><label for="name">이름</label></h4>
                    <span class="box int_name">
                        <input type="text" id="name" name="name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h4 class="join_title"><label for="yy">생년월일</label></h4>
                    <div id="bir_yy">
                        <span class="box">
                            <input type="date" id="yy" name="birth" class="int">
                        </span>
                    </div>
                </div>

                <!-- EMAIL -->
                <div>
                    <h4 class="join_title"><label for="email">이메일</label></h4>
                    <span class="box int_email">
                        <input type="email" id="email" name="email" class="int" maxlength="100" placeholder="선택입력">
                    </span>
                </div>


                <!-- ADDRESS -->
                <div>
                    <div style="display: flex;">
                        <h4 class="join_title"><label for="name">주소</label></h4>
                        <input class="btn styled-button searchadr" type="button" name="" value="검색" onclick="findAddr()">
                    </div>
                    <span class="box int_name">
                        <div>
                            <input type="text" class="input-middle bg-readonly" name="" id="member_post" readonly>
                        </div>
                        <div>
                            <input type="text" class="input-long bg-readonly" name="address1" id="member_addr" readonly>
                            <input type="text" class="input-long" name="address2" id="" placeholder="상세주소 입력">
                            
                        </div>
                        
                    </span>
                    <span class="error_next_box"></span>
                </div>
                


                <!-- NICKNAME -->
                <div>
                    <h4 class="join_title"><label for="name">닉네임</label></h4>
                    <span class="box int_name" style="display: flex;">
                        <input type="text" id="nickname" name="nickname" class="int" maxlength="20">
                        <input type="button" class="styled-button-big" value="중복확인" onclick="nickcheck()">
                    </span>
                    <span id="alertnick" style="color:red; font-size:13px; margin-left:5px; visibility: hidden;"></span>
                    <span class="error_next_box"></span>
                </div>

                

                <!-- MOBILE -->
                <div>
                    <h4 class="join_title"><label for="phoneNo">휴대전화</label></h4>
                    <span class="box int_mobile">
                        <input type="text" name="tel1" id="" style="width: 65px;">
                        <span>-</span>
                        <input type="text" name="tel2" id="" style="width: 65px;">
                        <span>-</span>
                        <input type="text" name="tel3" id="" style="width: 65px;">
                    </span>
                    <span class="error_next_box"></span>    
                </div>


                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="submit" id="btnJoin">
                        <span>가입하기</span>
                    </button>
                </div>
                <%-- <input type="hidden" name="memberseq" value="<sec:authentication property="principal.memberseq"/>" > --%>
                <input type="hidden" name="memberseq" value="&lt;sec:authentication property=&quot;principal.memberseq&quot;/&gt;" >
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" class="token">
			    <input type="hidden" name="${_csrf.headerName}" value="${_csrf.headerName }" class="header">
            </form>

            

        
            
      </div>
    </div>
  </div>

  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script>

        function findAddr(){
            new daum.Postcode({
                oncomplete: function(data) {
                    
                    console.log(data);
                    
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                    // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.```
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var jibunAddr = data.jibunAddress; // 지번 주소 변수
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('member_post').value = data.zonecode;
                    if(roadAddr !== ''){
                        document.getElementById("member_addr").value = roadAddr;
                    } 
                    else if(jibunAddr !== ''){
                        document.getElementById("member_addr").value = jibunAddr;
                    }
                }
            }).open();
        }
        
        function idcheck(){
        	
        	let id = $("#id").val();
        	var alertElement = document.getElementById("alertid");
	        	       	
			$.ajax({
				url : "/member/idcheck.do",
				type : "post",
				dataType : "json",
				data: {
	                id: id
	            },
				success : function(data){
						
					if(data == 1){
						alertElement.style.visibility = "visible";
						alertElement.innerHTML = "중복된 아이디입니다.";
					}else if(data == 0){
						alertElement.style.visibility = "visible";
				        alertElement.innerHTML = "사용가능한 아이디입니다.";
					}
				},
	            beforeSend: function (jqXHR, settings) {
	                 var header = $('.header').val();
	                   var token = $('.token').val();
	                 jqXHR.setRequestHeader(header, token);
	            }
	            
			})
		}
        
        
        
		function nickcheck(){
        	
        	let nickname = $("#nickname").val();
        	var alertElement = document.getElementById("alertnick");

			$.ajax({
				url : "/member/nickcheck.do",
				type : "post",
				dataType : "json",
				data: {
	                nickname: nickname
	            },
				success : function(data){

					if(data == 1){
						alertElement.innerHTML = "중복된 닉네임입니다.";
						alertElement.style.visibility = "visible";
					}else if(data == 0){
						alertElement.innerHTML = "사용가능한 닉네임입니다.";
						alertElement.style.visibility = "visible";
					}
				},
	            beforeSend: function (jqXHR, settings) {
	                 var header = $('.header').val();
	                  var token = $('.token').val();
	                 jqXHR.setRequestHeader(header, token);
	            }
	            
			})
		}
        
  </script>
</body>
</html>






