> # Spring Project - BookBBang
스프링
<br/>

> ## 🖥 프로젝트 소개
도서 구매, 도서 중고거래, 책 서평 커뮤니티, 오프라인 매장 소개 등의 기능을 제공하는 통합 도서 서비스 플랫폼입니다.
<br/>


> ## 📅 개발기간
* 23.06.19 ~ 23.07.12  
<br/>
  
> ## ⚙ 개발 환경
* `Java 8`
* `JDK 1.8.0`
- **IDE** : STS3
- **Database** : Oracle DB(11xe), MyBatis

> ## :two_men_holding_hands: 팀원 소개
> 

### ✔️Frond-end
<img src="https://img.shields.io/badge/HTML-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"> <img src="https://img.shields.io/badge/Css-1572B6?style=for-the-badge&logo=Css3&logoColor=white"> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"> <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"> <img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white">
### ✔️Back-end
<img src="https://img.shields.io/badge/JAVA-007396?style=for-the-badge&logo=java&logoColor=white"> <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white"> <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white">
</br>

</br>

> ## :keyboard:DB 설계
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/54098fe7-ae84-428c-aa36-276f7569bff2" width="550" height="400"/> 

</br></br>

### 📌 주요 기능
> 메인 화면
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/3eeee7a0-d2d1-4910-851b-5f738992c60e"/>
  
📋 구현 기능  
* 메인 화면으로 신작, 베스트 셀러 등 분야별 대표 도서 목록이 출력됩니다.

<br/>

> 도서 목록 페이지
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/a43fbc70-9853-4201-86e2-41dfd75971a2"/>
  
📋 구현 기능  
* 메인 페이지에서 도서 탭을 클릭시 도서 페이지로 이동, 메인 페이지에서는 책을 대분류, 소분류로 나눠 목록을 출력, 낮은 가격순, 높은 가격순, 출판날짜 등으로 정렬하여 조회가 가능합니다.

<br/>

> 도서 상세정보, 구매 페이지
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/2bbdcf8f-5882-4c4d-bd2d-f1d59bd5dba0"/>
  
📋 구현 기능  
* 선택한 도서의 상세 정보를 확인 할 수 있고, 장바구니에 넣기 또는 바로 주문이 가능합니다.

<br/>

> 장바구니 페이지
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/73ea6a09-ef06-4367-b9cb-16ae821cc423"/>
  
📋 구현 기능  
* 구매 페이지에서 장바구니에 담기 버튼을 누르면 장바구니에 해당 도서 상품이 담깁니다.
* 장바구니 상품 중 원하는 상품만 구매, 삭제가 가능합니다.

<br/>

> 주문 페이지
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/0f7c4617-6b49-420f-9b9f-fe5b019e97f6"/>
  
📋 구현 기능  
* ajax를 활용하여 원하는 배송지를 선택하면 실시간으로 배송지 정보가 변합니다.
* ajax를 활용하여 실시간으로 쿠폰을 적용시켜 할인된 금액이 출력됩니다.
* 카카오결제 api를 활용하여 카카오페이 결제가 가능합니다.

<br/>

> 커뮤니티 '북유럽'의 메인 페이지
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/fe40c73a-6389-482e-9f40-bc2810d042d9"/>
  
📋 구현 기능  
* 소비자들이 작성한 서평 중 이달의 서평 어워드에 선정된 서평 목록이 한눈에 보기 쉽도록 도서 표지가 출력됩니다.

<br/>

> '북유럽'의 서평 목록 출력 페이지
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/1df3070d-a79e-4dac-81b7-a4de13371b17"/>
  
📋 구현 기능  
* 서평 목록 페이지에선 도서 표지만 출력되는것이 아닌 책의 기본 정보들모두 출력되어 서평에 대한 정보가 더욱 상세하게 출력됩니다.


<br/>

> 매장별 위치 페이지
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/b2aad5f2-a71e-4167-9fe5-5bd217a0e939"/>
  
📋 구현 기능  
* 카카오맵 api를 활용하여 오프라인 매장의 위치가 지도에 출력합니다.


<br/>

> 마이페이지 > 주문 내역 페이지
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/a7df850f-f8c2-477a-ae66-2443fd324fe1"/>
  
📋 구현 기능  
* 주문 내역이 한 눈에 알아보기 쉽게 출력됩니다.
* ajax를 활용하여 주문 취소 버튼을 클릭할 때 주문 접수 카운트가 줄어들고 취소 카운트가 늘어납니다.

<br/>

> 마이페이지 > 배송 주소록 페이지
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/076c6401-4197-423a-b8f2-ed8e12c76757"/>
  
📋 구현 기능  
* 주소 api를 활용하여 주소 등록을 더욱 편리하게 구현하였습니다.
* ajax를 활용하여 실시간 배송지 CRUD가 가능합니다.

<br/>  

> 중고거래 > 중고 거래 페이지
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/6b1d90bd-c498-4bad-9f08-62bd701183ca"/>
  
📋 구현 기능  
* 회원 간 중고 거래를 할 수 있는 페이지입니다.
* 판매를 원하는 회원은 판매하고 싶은 중고 상품을 등록 할 수 있습니다.

<br/>  

> 중고거래 > 중고 상품 상세 페이지 
<img width="550px" src="https://github.com/jinseobb/BookBBang/assets/131458472/50463146-c2c4-4bf6-aebc-1720e370b2e3"/>
  
📋 구현 기능  
* 구매를 희망하는 상품 클릭 시 해당 상품의 상세 정보가 출력되는 페이지입니다.
* 웹 소켓을 활용해 채팅 채팅 기능을 이용 할 수 있습니다.
* 판매자는 구매를 원하는 회원이 보낸 채팅 갯수를 확인 할 수 있습니다.

<br/>
