<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/inline.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/mypage.css">
    <style>
        
    </style>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>


</head>
<body>
	<!--  --><%@ include file="/WEB-INF/views/inc/header.jsp" %>

        <hr>
    
    <!-- 목록 -->
    
    <main class="py-md-3 pl-md-5">
      <div class="main-margin" id="main">
        <div class="row ">
          

          <div class="col-3 bd-sidebar myinfo" style="overflow-y: hidden;">
            <!-- <div>
              <span>연진섭닙</span>
            </div>
            <div class="mybadge">

            </div> -->
            
            <div id="AsideMyProfile" class="my_profile_area" style="">
             
              <div class="profile_inner">
            <div class="profile_thumb_box no_img">
                    
              <div class="thumb_box">
                 <img src="/resources/image/bb1.png" style="width:100px;">
              </div>
            </div>
                  <div class="profile_name_box" style="">
              <span class="name" data-role="nickname">${name}님</span>
              <br>
              <div class="infobottom">
                <div class="zzim" >
                  <div class="zziminner">쿠폰</div>
                  <div class="zziminner" id="zzimcount">${couponResult}</div>
                </div>
                <div class="zzimcart" >
                  <div class="zziminner">장바구니</div>
                  <div class="zziminner" id="zzimcount">${result}</div>
                </div>
              </div>
          </div>
          
          <ul class="profile_info_list">
                  <li class="info_item" data-role="wish">
                      <a href="https://my.kyobobook.co.kr/library/wish" class="info_link">
                          <span class="title" onclick="ga360.GA_Event('click_마이룸_PC', '상단', '', '찜', '');">찜</span>
                          <span class="val" onclick="ga360.GA_Event('click_마이룸_PC', '상단', '', '찜', '');">0</span>
                      </a>
                  </li>
                  <li class="info_item" data-role="list">
                      <a href="https://my.kyobobook.co.kr/library/list" class="info_link">
                          <span class="title" onclick="ga360.GA_Event('click_마이룸_PC', '상단', '', '리스트', '');">리스트</span>
                          <span class="val" onclick="ga360.GA_Event('click_마이룸_PC', '상단', '', '리스트', '');">0</span>
                      </a>
                  </li>
          
          
           </ul>
              
          
              
          </div>
          
                      
                  
              
          </div>

          <ul class="nav">
            <li><h5 class="mytitle">쇼핑 내역</h5></li>
            <li><a href="/member/mypagemain.do" class="acolor">주문내역</a></li>
           
            <li><a href="/member/mypagestore.do" class="acolor"> 내 가게</a></li>
            <br>
            <li><h5 class="mytitle">문의 내역</h5></li>
            <li><a href="/member/mypagemain.do" class="acolor">1:1 문의</a></li>
            <li><a href="/member/mypagemain.do" class="acolor">상품 문의</a></li>
            <br>
            <li><h5 class="mytitle">내 정보</h5></li>
            <li><a href="/member/mypagedelivery.do" class="acolor">배송 주소록</a></li>
            <li><a href="/member/mypageedit.do?memberseq=${dto.memberseq}" class="acolor">회원 정보 수정</a></li>
          </ul>
            <br>
          </div>
          <div class="col-8 main-width">
            <div class="over-wrap">

                <!-- ********여기애 메인 내용을 넣어주세요^^^^^^^^^^^********  -->
                <div  class="mypagemain">
                  
                  <!-- <div class="myhome">
                    <span class="material-symbols-outlined">
                      home
                      </span><span class="myhomespan"> 마이 홈</span>
                  </div> -->

                  <div class="mypageorder">
                    <div>
                      <span ><h4 class="detitle">배송 주소록</h4></span>
                    </div>
                    <br>
                  
  
                    
                  </div>
                 <br>
                 <br>
                 

                
                <div class="list_result_wrap" data-address="address-info-area">
                  <p class="result_count"><span class="fc_green">${deliverycount}</span>개</p>
                  <div class="right_area">
                      <p class="bul_item_asterisk font_size_xxs">배송지는 최대 100개까지 등록 가능합니다.</p>
                      
                    
                     
                        <!-- Button trigger modal -->
                        <button type="button" class="btn_sm btn_line_primary" data-address="new-btn" data-bs-toggle="modal" data-bs-target="#newmodal"style="padding-left: 0; padding-right: 0; padding-top: 0; margin-left: 30px; width:150px;">
                          <span class="material-symbols-outlined">
                            add
                            </span>  
                          <span class="text" style="text-align: center;">새 배송지 등록</span>
                        </button>

                          <!-- Modal -->
                          <div class="modal fade" id="newmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h1 class="modal-title fs-5" id="exampleModalLabel">배송지 등록</h1>
                                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                <div style="margin-right: 300px; text-align: center; width:100%">
                                  <div style="text-align: left; font-weight: bold;"><label style="text-align: left;">배송지명</label></div>
                                <div><input type="text" class="medit" placeholder="배송지 별칭 입력" name="addressaname" id="addressaname"></div>
                                <br>
                                <div  style="text-align: left; font-weight: bold;" ><p>받는 분</p></div>
                                <div><input type="text"  class="medit" placeholder="이름을 입력하세요" name="membername" id="membername" style="margin-bottom: 10px;"></div>
                               
                                <div><input type="text" class="medit" placeholder="휴대폰 번호를 입력하세요" name="phonenumber" id="phonenumber"></div>
                                <br>
                                
                                 <div>   <input type="text" id="sample4_jibunAddress"  class="firstaddress" placeholder="지번주소" required disabled name="addressList" style="width: 50%;">
               <input type="button" onclick="sample4_execDaumPostcode()" value="주소입력">
               
               <span id="guide" style="color:#999;display:none"></span>
               <br>
               <input type="text" id="sample4_detailAddress"  placeholder="상세주소" required name="addressList" style="width: 50%;"></div>
                                <div class="modal-footer">
                                  <button type="submit" class="btn btn-secondary" onclick="history.back();">닫기</button>
                                  <!--  등록자리-->
                                  <input type="submit" class="btnadd btn btn-secondary"   data-bs-dismiss="modal" value="등록"  ></input>
                                </div>
                                      </div>  
                              </div>  
                              </div>
                              </div>
                            </div>
                                <input type="hidden" id="memberseq1" name="memberseq" value="<sec:authentication property="principal.memberseq"/>"/>
                      		 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
                          </div>
                  </div>
              </div>



                <div class="tbl_col_wrap type_board">
                  <table class="tbl_col_line" id="listtbl">
                      <caption>배송주소록 테이블로 배송지 선택/주소록이름/받는사람/연락처/우편번호/주소, 버튼영역을(를) 나타낸 표입니다.</caption>
                      <colgroup>
                          <col>
                          <col style="width: 174px;">
                      </colgroup>
                      <thead class="hidden">
                      <tr>
                          <th scope="col">배송지 선택/주소록이름/받는사람/연락처/우편번호/주소</th>
                          <th scope="col">버튼영역</th>
                      </tr>
                      </thead>
                      <tbody data-address="address-list-area">
                     
                     <!--추가  -->
                     
                      
                      <!-- 추가  -->
                      
                      
                      <c:forEach items="${ddto}" var="dto" varStatus="status">
                      <tr class="${dto.deliveryseq}" >
                        <td class="align_left">
                            <div class="address_item my_address">
                                <div class="address_chk_box">
                                    
                                        <input type="radio" value="" name="basicdelivery">
                                    
                                </div>
                                <div class="address_info_box">
                                    <div class="address_name">
                                        <span class="name">${dto.addressaname }</span>
                                        <span class="badge_sm badge_pill badge_line_primary"><span class="text">기본배송지</span></span>
                                    </div>

                                    <div class="address_person">
                                        <span class="name">${dto.membername }</span>
                                        <span class="phone_number">${dto.phonenumber}</span>
                                    </div>
                                    <div class="address">${dto.address}</div>
                                </div>
                            </div>
                        </td>
                        
                        <td>
                            <div class="btn_wrap">
                                <!-- Button trigger modal -->
                                  <button type="button" class="btn_sm btn_line_gray" data-bs-toggle="modal" data-bs-target="#editmodal"  style="margin-bottom: 10px;">
                                    <span class="material-symbols-outlined">
                                      edit
                                      </span> <span class="text">수정</span>
                                  </button>

                                  <!-- Modal -->
                                  <div class="modal fade" id="editmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                      <div class="modal-content">
                                        <div class="modal-header">
                                          <h1 class="modal-title fs-5" id="exampleModalLabel">배송지 수정</h1>
                                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                        <div style="margin-right: 300px; text-align: center; width:100%">
                                          <div style="text-align: left; font-weight: bold;"><label style="text-align: left;">배송지명</label></div>
                              
                                        <div><input type="text" class="medit" placeholder="배송지 별칭 입력" ></div>
                                        <br>
                                        <div  style="text-align: left; font-weight: bold;" ><p>받는 분</p></div>
                                        <div><input type="text"  class="medit" placeholder="이름을 입력하세요" style="margin-bottom: 10px;"></div>
                                       
                                        <div><input type="text" class="medit" placeholder="휴대폰 번호를 입력하세요"></div>
                                        <br>
                                        <div  style="text-align: left; font-weight: bold;"><p>주소</p></div>
                                       
                                      </div>
                                        <div class="modal-footer">
                                          <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                                          <input type="submit" class="btn btn-primary"  value="저장"></input>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  </div>
                                
                               

                                  <button type="button" class="btn_sm btn_line_gray" data-bs-toggle="modal" data-bs-target="#delmodal${status.count}">
                                    <span class="material-symbols-outlined">
                                      delete
                                      </span> <span class="text">삭제</span>
                                  </button>

                                  <!-- Modal -->
                                  <div class="modal fade" id="delmodal${status.count}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                      <div class="modal-content">
                                        <div class="modal-header">
                                          <h1 class="modal-title fs-5" id="exampleModalLabel">삭제</h1>
                                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" >
                                          <input type="hidden" name="deseq" class="deseq" value="${dto.deliveryseq}">
                                          </button>
                                        </div>
                                        <div class="modal-body">
                                          <div><p>선택된 배송지를 삭제하시겠습니까?</p></div>
                                      </div>
                                        <div class="modal-footer">
                                          <div style="margin-right: 130px;">
                                            <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal" style="display: inline-block; width:100px;">취소</button>
                                            <button type="button" class="btndel btn btn-primary" data-bs-dismiss="modal" style="display: inline-block; width:100px;" onclick="delbtn(${dto.deliveryseq});">확인</button>
                                            
                                          </div>
                                         
                                        </div>
                                      </div>
                                    </div>
                                  </div>

                            </div>
                        </td>
                    </tr>
                    </c:forEach>
                  
                 
                  </tbody>
                  </table>
                  
              </div>

                   

                </div>
               <br>
               

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
                    <img src="/resources/image/bb1.png" class="footer-img">
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
    
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" class="csrf_token">
    <input type="hidden" name="${_csrf.headerName}" value="${_csrf.headerName }" class="csrf_header">
    
 
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>


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

$('.form1').submit(function(){
 
    
    let address = '';
    $('input[name=addressList]').each(function(){
       address += $(this).val() + ' ';
    });
    
    $('table').append(`<input type="hidden" value="\${address}" name="address">`);
    
    
 });
 
 
 
 
 
  $('.btnadd').click(function(){

	 
	 
	 var addressaname = $('#addressaname').val();
	 var address = $('.firstaddress').val() + '' + $('#sample4_detailAddress').val();
	 var membername = $('#membername').val();
	 var phonenumber = $('#phonenumber').val();
	 
	 
	
 
	 
	 let data = {
			 addressaname : addressaname,
			 address : address,
			 phonenumber : phonenumber,
			 membername : membername
			 };
	
	
	 
	 
	 $.ajax({
         url: '/member/mypagedelivery.do',
         type: 'POST',
         dataType: 'json',
         data: {
            data: JSON.stringify(data)
         },
         beforeSend: function (jqXHR, settings) {
              var header = $('.csrf_header').val();
              var token = $('.csrf_token').val();
             
              jqXHR.setRequestHeader(header, token);
         },
         success: function(data) { 
        	 
        	 console.log(data.deliveryseq);
        	 
        	 let tr = `
                 
                 <tr  class="\${data.deliveryseq}">
                   <td class="align_left">
                       <div class="address_item my_address">
                           <div class="address_chk_box">
                               
                                   <input type="radio" value="" name="basicdelivery">
                               
                           </div>
                           <div class="address_info_box">
                               <div class="address_name">
                                   <span class="name">\${data.addressaname }</span>
                                   <span class="badge_sm badge_pill badge_line_primary"><span class="text">기본배송지</span></span>
                               </div>

                               <div class="address_person">
                                   <span class="name">\${data.membername }</span>
                                   <span class="phone_number">\${data.phonenumber}</span>
                               </div>
                               <div class="address">\${data.address}</div>
                           </div>
                       </div>
                   </td>
                   
                   <td>
                       <div class="btn_wrap">
                           <!-- Button trigger modal -->
                             <button type="button" class="btn_sm btn_line_gray" data-bs-toggle="modal" data-bs-target="#editmodal"  style="margin-bottom: 10px;">
                               <span class="material-symbols-outlined">
                                 edit
                                 </span> <span class="text">수정</span>
                             </button>

                             <!-- Modal -->
                             <div class="modal fade" id="editmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                               <div class="modal-dialog">
                                 <div class="modal-content">
                                   <div class="modal-header">
                                     <h1 class="modal-title fs-5" id="exampleModalLabel">배송지 수정</h1>
                                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                     <input  type="hidden" value="/${data.deliveryseq}">
                                     </button>
                                   </div>
                                   <div class="modal-body">
                                   <div style="margin-right: 300px; text-align: center; width:100%">
                                     <div style="text-align: left; font-weight: bold;"><label style="text-align: left;">배송지명</label></div>
                         
                                   <div><input type="text" class="medit" placeholder="배송지 별칭 입력" ></div>
                                   <br>
                                   <div  style="text-align: left; font-weight: bold;" ><p>받는 분</p></div>
                                   <div><input type="text"  class="medit" placeholder="이름을 입력하세요" style="margin-bottom: 10px;"></div>
                                  
                                   <div><input type="text" class="medit" placeholder="휴대폰 번호를 입력하세요"></div>
                                   <br>
                                   <div  style="text-align: left; font-weight: bold;"><p>주소</p></div>
                                  
                                 </div>
                                   <div class="modal-footer">
                                     <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                                     <input type="submit" class="btn btn-primary" data-bs-dismiss="modal" value="저장"></input>
                                   </div>
                                 </div>
                               </div>
                             </div>
                             </div>
                           
                          

                             <button type="button" class="btn_sm btn_line_gray" data-bs-toggle="modal" data-bs-target="#delmodal">
                               <span class="material-symbols-outlined">
                                 delete
                                 </span> <span class="text">삭제</span>
                             </button>

                             <!-- Modal -->
                             <div class="modal fade" id="delmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                               <div class="modal-dialog">
                                 <div class="modal-content">
                                   <div class="modal-header">
                                     <h1 class="modal-title fs-5" id="exampleModalLabel">삭제</h1>
                                     <button type="button" class="btn-close"  data-bs-dismiss="modal" aria-label="Close" >
                                      
                                        <input type="hidden" class="deseq" value="/${data.deliveryseq}">
                                        </button>
                                   </div>
                                     <div><p>선택된 배송지를 삭제하시겠습니까?</p></div>
                                     <div style="margin-right: 130px;">
                                       <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal" style="display: inline-block; width:100px;">취소</button>
                                       <button type="button" class="btndel btn btn-primary" data-bs-dismiss="modal" style="display: inline-block; width:100px;" onclick="delbtn(\${data.deliveryseq});">확인</button>
                                     </div>
                                 </div>
                                   <div class="modal-footer">
                                    
                                   </div>
                                 </div>
                               </div>
                             </div>

                       </div>
                   </td>
               </tr>
              
              
              `;
        	 
        	  $('#listtbl tbody').prepend(tr); 
        	  
        	  
        	  
        	  //console.log(result);
         },
         error: (a,b,c) => {
        	 console.log(a,b,c);	
         }
         
         
      });
	 
	 
	 
	 
 });

/*  $('.btndel').click(function() {
	  var hiddenInput = $(this).parent().find('.deseq');
	  var seqValue = hiddenInput.val();
	  
	  alert(seqValue)
	  
	  $.ajax({
	    url: '/member/mypagedelivery.do',
	    type: 'POST',
	    dataType: 'json',
	    data: {
	      seqValue: seqValue
	    },
	    beforeSend: function(jqXHR, settings) {
	      var header = $('.csrf_header').val();
	      var token = $('.csrf_token').val();

	      jqXHR.setRequestHeader(header, token);
	    },
	    success: function() {
	      alert('삭제완료');
	    },
	    error: function(a, b, c) {
	      console.log(a, b, c);
	    }
	  });
	});  */
	
	function delbtn(delseq){
		
		let seq = delseq;
		
		 $.ajax({
			    url: '/member/mypagedelivery.do',
			    type: 'POST',
			    dataType: 'json',
			    data: {
			      delseq : seq
			    },
			    beforeSend: function(jqXHR, settings) {
			      var header = $('.csrf_header').val();
			      var token = $('.csrf_token').val();

			      jqXHR.setRequestHeader(header, token);
			    },
			    success: function() {
			      alert('삭제완료');
			    },
			    error: function(a, b, c) {
			      console.log(a, b, c);
			    }
			  });
		
	};
 
  

  
  
</script>
</body>
</html>






