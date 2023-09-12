# Spring Project - BookBBang
JAVA와 스프링 MVC를 기반으로 구현한 프로젝트입니다.  
<br/>

## 🖥 프로젝트 소개
도서 구매, 도서 중고거래, 책 서평 커뮤니티, 오프라인 매장 소개 등의 기능을 제공하는 통합 도서 서비스 플랫폼입니다.  
<br/>
서점 웹사이트이지만 고객에게 서평 커뮤니티, 중고거래 등의 컨텐츠를 제공하여 단순 도서 구매뿐만 아니라 책에 대한 다양한 서비스를 제공하는데 목표를 두었습니다.
<br/>


## 📅 개발기간
* 23.06.19 ~ 23.07.12  
<br/>

## :two_men_holding_hands: 팀원 구성
 - 김수림: 북유럽 커뮤니티(책 서평 커뮤니티) CRUD, 댓글 CRUD, 조회수, 페이징, 북유럽 마이페이지, 오프라인 매장 소개
 - 연진섭: 도서 주문, 결제, 마이페이지
 - 이채린: 메인페이지, 도서 CRUD, 장바구니
 - 김재욱: 북유럽 서평 CRUD
 - 최재현: 시큐리티 설정, 도서 중고거래, 웹소켓 대화방
 - 유동현: 회원가입, 도서 주문, 결제, 공지사항 CRUD
 - 김지우: 도서 상세보기, 이벤트, 쿠폰 다운로드  
<br/>
  
## ⚙ 개발 환경
* `Java 11`
* `JDK 1.8.0`
- **IDE** : STS3
- **Database** : Oracle DB(11xe), MyBatis  
<br/>

### ✔️Frond-end
<img src="https://img.shields.io/badge/HTML-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"> <img src="https://img.shields.io/badge/Css-1572B6?style=for-the-badge&logo=Css3&logoColor=white"> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"> <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"> <img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white">
### ✔️Back-end
<img src="https://img.shields.io/badge/JAVA-007396?style=for-the-badge&logo=java&logoColor=white"> <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white"> <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white">  
<br/>

## :keyboard:DB 설계
![bberd](https://github.com/tnfladl9926/Bookbbang-Spring/assets/134984241/1d63244f-f092-4164-acb5-3b157649a52e)  
<br/>

## 📌 주요 기능

#### 북유럽 커뮤니티 [상세보기-WIKI이동](https://github.com/tnfladl9926/Bookbbang-spring/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(%EB%B6%81%EC%9C%A0%EB%9F%BD-%EC%BB%A4%EB%AE%A4%EB%8B%88%ED%8B%B0))
  - 게시글 CRUD
  - 댓글 CRUD
  - 조회수
  - 페이징

#### 북유럽 마이페이지 [상세보기-WIKI이동](https://github.com/tnfladl9926/Bookbbang-spring/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(%EB%B6%81%EC%9C%A0%EB%9F%BD-%EB%A7%88%EC%9D%B4%ED%8E%98%EC%9D%B4%EC%A7%80))
  - 북유럽 활동 조회

#### 매장 안내 [상세보기-WIKI이동](https://github.com/tnfladl9926/Bookbbang-spring/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(%EB%A7%A4%EC%9E%A5-%EC%95%88%EB%82%B4))
  - 카카오 지도 API 사용

#### 도서 구매
  - 도서 선택
  - 장바구니
  - 배송지 입력
  - 쿠폰 적용
  - 결제
  - 구매 완료

#### 메인페이지
  - 분야별 신작, 베스트 셀러 등 조회

## :heartpulse: 느낀점  
#### :heart: &nbsp; 이론수업으로만 접했던 스프링mvc를 프로젝트에 사용하며 많이 연습하고 성장할 수 있었습니다.
이론수업에서 배웠던 스프링 mvc가 어떤 구조로 이루어져 있는지, 각 구성요소들이 어떠한 역할을 하는지를 직접 사용해보며 더 깊이 이해할 수 있었습니다. 모델, 뷰, 컨트롤러가 각각 자신이 맡은 일만 하는 것이 서블릿과 비슷하면서도 서블릿보다 훨씬 편하다고 느꼈으며 코드의 길이도 서블릿에 비해 짧아지는 경험을 하였습니다.또한 갑작스럽게 기능에 대한 요구사항이 변할 때도 훨씬 유연하게 대처할 수 있어 구현하는데 있어 시간을 절약할 수 있었습니다.
#### :heart: &nbsp; 스프링 초기 설정, 스프링 시큐리티부분에 대한 부족함을 느끼고 스프링 공부에 대한 동기부여가 되었습니다.    
스프링의 초기설정, 시큐리티 설정에서 선생님과 팀원의 도움을 받았습니다. 이번 프로젝트에서는 팀원과 이미 세팅해놓은 시큐리티를 사용하는 경험에 그쳤지만 이러한 경험을 통해 권한 관리를 효과적으로 다루는 방법을 배우게 되었고, 보안에 대한 심도 있는 이해를 얻을 수 있었습니다. 선생님께서 '스프링은 처음에는 정말 어렵지만 사용하면 할수록 그거만큼 쉬운 언어가 없다'라는 말씀이 하셨었는데 이 말씀이 살짝 이해도 가면서 스프링에 대해 더욱 심도있게 공부하고 싶다는 욕심이 생겼습니다. 스프링 웹 프로젝트를 진행하면서 어려움과 도전이 있었지만, 이를 극복하는 과정에서 더욱 성장했다고 느꼈으며 개발 공부와 경험에 대한 동기부여가 되었습니다.
<br/>
