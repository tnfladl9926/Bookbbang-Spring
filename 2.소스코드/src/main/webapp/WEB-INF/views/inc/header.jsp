<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
<style>

 .btn-light {
 	background-color: #FFF;
 	color: #333;
 	border: 0px;
 	width: 200px;
 	height: 44px;
 }
 
 .btn-light:hover {
 	background-color: #f0e7d6;
 	color: #333;
 	border: 0px;
 }
 
 .btn-check:checked+.btn, .btn.active, .btn.show, .btn:first-child:active, :not(.btn-check)+.btn:active {
	 background-color: #FFF;
	 	color: #333;
	 	border: 0px;
 }
 .dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
}
.nav {
	margin-bottom: 10px;
}

.dropdown-menu {
	z-index : 1001;
}
 
 
</style>

<header class="header">
        <div class="container-fluid" >
            <header class="d-flex flex-wrap justify-content-center py-3 mb-4">
              <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none" style="margin-left: 150px;">
                  <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
              </a>
  
              <ul class="nav header-nav">
                  <li class="nav-item"><a href="#" class="nav-link"  aria-current="page">홈</a></li>
                  <sec:authorize access="isAnonymous()">
               <li class="nav-item"><a href="/member/login.do" class="nav-link">로그인</a></li>
            </sec:authorize>

            <sec:authorize access="isAuthenticated()">
               <li class="nav-item"><a href="/member/logout.do"
                  class="nav-link">로그아웃</a></li>
            </sec:authorize>
                  <li class="nav-item"><a href="/member/register.do" class="nav-link">회원가입</a></li>
                  <li class="nav-item"><a href="/member/mypagemain.do" class="nav-link">마이페이지</a></li>
                  <li class="nav-item"><a href="/book/booklistadmin.do" class="nav-link">도서등록</a></li>
              </ul>

     <div class="content"> 
           <div class="icon width: 300px;">
                <img src="/resources/image/Bookbbang_logo.png" class="main-logo" onclick="location.href='/main/main.do';">
            </div>
            <div class="search-container search-box1">
                <form class="form-content">
                    <div class="search-arrow">
                        <select title="검색유형" id="s-type">
                            <option value="total">통합검색</option>
                            <option value="title">제목</option>
                            <option value="auth">저자</option>
                        </select>
                        <span class="material-symbols-outlined">
                            arrow_drop_down
                        </span>
                    </div>
                    <input type="text" class="search-input">
                    <button class="s-icon">
                    <span class="material-symbols-outlined search-icon">
                      search
                    </span>
                  </button>
                </form>
            </div>
            <div class="img-cart header-icon">
              <span class="material-symbols-outlined icon shopping-color" >shopping_cart</span>
              <span class="material-symbols-outlined icon user-color">account_circle</span>
            </div>
    </div>

            </header>
            </div>

          <!-- 내비게이션 바 -->
          <ul class="nav justify-content-center navi">
              <li class="nav-item">
              <div class="dropdown">
				  <button class="btn btn-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				    도서
				  </button>
				  <ul class="dropdown-menu">
				    <li><button class="dropdown-item" type="button" onclick="window.location.href='/book/booklist.do?field=소설/시/희곡'">소설/시/희곡</button></li>
				    <li><button class="dropdown-item" type="button" onclick="window.location.href='/book/booklist.do?field=경제/경영'">경제/경영</button></li>
				    <li><button class="dropdown-item" type="button" onclick="window.location.href='/book/booklist.do?field=IT 모바일'">IT 모바일</button></li>
				    <li><button class="dropdown-item" type="button" onclick="window.location.href='/book/booklist.do?field=자연과학'">자연과학</button></li>
				    <li><button class="dropdown-item" type="button" onclick="window.location.href='/book/booklist.do?field=에세이'">에세이</button></li>
				    <li><button class="dropdown-item" type="button" onclick="window.location.href='/book/booklist.do?field=역사'">역사</button></li>
				    <li><button class="dropdown-item" type="button" onclick="window.location.href='/book/booklist.do?field=인문'">인문</button></li>
				    <li><button class="dropdown-item" type="button" onclick="window.location.href='/book/booklist.do?field=예술'">예술</button></li>
				    <li><button class="dropdown-item" type="button" onclick="window.location.href='/book/booklist.do?field=여행'">여행</button></li>
				    <li><button class="dropdown-item" type="button" onclick="window.location.href='/book/booklist.do?field=잡지'">잡지</button></li>
				  </ul>
				</div>
<!--               <a class="nav-link" aria-current="page" href="#">도서</a> -->
              </li>
              <li class="nav-item">
              <div class="dropdown">
				  <button class="btn btn-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				    북유럽
				  </button>
				  <ul class="dropdown-menu">
				    <li><button class="dropdown-item" type="button" onclick="location.href='/bul/bulmain.do';">서평</button></li>
				    <li><button class="dropdown-item" type="button" onclick="location.href='/bul/bulfreeboard.do';">커뮤니티</button></li>
				    <li><button class="dropdown-item" type="button" onclick="location.href='/bul/bulmy.do'">마이페이지</button></li>
				  </ul>
				</div>
              </li>
              <li class="nav-item">
              <div class="dropdown">
				  <button class="btn btn-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				    헌책방
				  </button>
				  <ul class="dropdown-menu">
				    <li><button class="dropdown-item" type="button" onclick="location.href='/secondhand/list.do';">헌책방 게시판</button></li>
				    <li><button class="dropdown-item" type="button" onclick="location.href='/secondhand/mystore.do';">내 상점</button></li>
				  </ul>
				</div>
              </li>
              <li class="nav-item">
                <div class="dropdown">
				  <button class="btn btn-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				    책빵소식
				  </button>
				  <ul class="dropdown-menu">
				    <li><button class="dropdown-item" type="button" onclick="location.href='/notice/notice.do';">공지사항</button></li>
				    <li><button class="dropdown-item" type="button" onclick="location.href='/event/list.do';">이벤트</button></li>
				  </ul>
				</div>
              </li>
              <li class="nav-item">
                <div class="dropdown">
				  <button class="btn btn-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				    매장안내
				  </button>
				  <ul class="dropdown-menu">
				    <li><button class="dropdown-item" type="button" onclick="location.href='/store/store.do'">지점 안내</button></li>
				  </ul>
				</div>
              </li>
          </ul>
        </header>  
        