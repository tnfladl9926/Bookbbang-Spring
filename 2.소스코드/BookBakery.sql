drop sequence eventseq;
drop sequence memberseq;
drop sequence askseq;
drop sequence membercouponseq;
drop sequence noticeseq;
drop sequence chatcontentseq;
drop sequence chatroomseq;
drop sequence askcommnetseq;
drop sequence bookseq;
drop sequence bookreviewseq;
drop sequence cartseq;
drop sequence genreseq;
drop sequence paymentseq;
drop sequence secondhandseq;
drop sequence bulcommentseq;
drop sequence bulboardseq;
drop sequence writerSeq;
drop sequence roleseq;
drop sequence storeSeq;
drop sequence memberseq;
drop sequence chatlogseq;

create sequence chatlogseq;
create sequence askSeq;
CREATE SEQUENCE EVENTSEQ;
create sequence membercouponSeq;
create sequence couponSeq;
create sequence noticeSeq;
create sequence chatcontentseq;
create sequence chatroomseq;
create sequence askcommentSeq;
create sequence bookseq;
create sequence bookreviewseq;
create sequence cartseq;
CREATE SEQUENCE GENRESEQ;
create sequence paymentSeq;
create sequence secondhandseq;

create sequence bulcommentseq;
create sequence bulboardseq;
create sequence writerSeq;
create sequence roleseq;
create sequence storeSeq;
create sequence memberseq;
create sequence SECONDHANDIMGSEQ;

--회원
create table member (  
memberseq number not null primary key, 
id varchar2(30) not null, 
pw varchar2(30) not null, 
nickname varchar2(50) not null, 
name varchar2(15) not null,  
tel varchar2(50) not null,  
address varchar2(150) not null,  
birth varchar2(15) not null,  
email varchar2(50) not null 
); 


--권한
create table role (
    roleseq number primary key,
    memberseq number not null references member(memberseq),
    authority varchar2(50) not null
);

--북유럽게시판
create table bulboard(
bulboardseq number not null primary key, 
title varchar2(100) not null,
content varchar2(4000) not null,
regdate date default sysdate not null, 
type varchar2(30) not null, 
likecount number not null, 
memberseq number not null references member(memberseq)
); 


--북유럽댓글
create table bulcomment(
bulcommentseq number not null primary key,
content varchar2(1000) not null, 
regdate date default sysdate not null, 
memberseq number not null references member(memberseq), 
bulboardseq number not null references bulboard(bulboardseq) 
);


-- 중고거래
create table secondhand (
     secondhandseq number not null primary key,                              --거래번호
     title varchar2(150) not null,                                                       --제목
     content varchar2(4000) not null,                                               --내용
     regdate date default sysdate not null,                                         --날짜
     memberseq number not null references member(memberseq),        --회원번호
     price varchar2(20)                      --가격
);

ALTER TABLE SECONDHAND DROP COLUMN IMAGE;
ALTER TABLE SECONDHAND ADD STATUS char(1) DEFAULT 'n' check(status IN('y', 'n'));
ALTER TABLE SECONDHAND ADD ADDRESS VARCHAR2(100) NOT NULL;

CREATE TABLE SECONDHANDIMG(
    SECONDHANDIMGSEQ number primary key not null,
    SECONDHANDSEQ NUMBER references SECONDHAND(SECONDHANDSEQ) NOT NULL,
    SECONDHANDIMG VARCHAR2(100) NOT NULL
);

INSERT INTO SECONDHANDIMG VALUES(SECONDHANDIMGSEQ.NEXTVAL, 5, 'a03.jpg');


-- 채팅방
create table chatroom(
    chatroomseq number primary key,                                                         --채팅방 번호
    secondhandseq number not null references secondhand(secondhandseq),    --거래번호
    smemberseq number not null references member(memberseq),               --회원번호
    bmemberseq number not null references member(memberseq)               --회원번호2
);



-- 거래대화
create table chatcontent (
    chatcontentseq number not null primary key,                                     --대화번호
    field varchar2(1000) not null,                                                           --내용
    regdate date default sysdate not null,                                               --날짜
    memberseq number not null references member(memberseq),            --회원번호
    chatroomseq number not null references chatroom(chatroomseq)        --채팅방번호
);



--공지사항
create table notice(
    noticeSeq number primary key,
    title varchar2(100) not null,
    content varchar2(100) not null,
    regdate date default sysdate,
    memberSeq references Member(memberSeq)
);

-- 쿠폰
create table coupon (
    couponSeq number not null primary key,
    name varchar2(50) not null,
    rate number(30) not null,
    deadline date not null
);


-- 보유쿠폰
create table membercoupon(
    couponSeq number not null references coupon(couponSeq),
    memberSeq number not null references member(memberSeq),
    use varchar2(10) not null
);


--이벤트
CREATE TABLE EVENT(
    EVENTSEQ NUMBER PRIMARY KEY NOT NULL,
    TITLE VARCHAR2(100) NOT NULL,
    CONTENT VARCHAR2(4000) NOT NULL,
    REGDATE DATE DEFAULT SYSDATE NOT NULL,
    COUPONSEQ NUMBER REFERENCES COUPON(COUPONSEQ) NOT NULL
);


-- 문의
create table ask(
    askSeq number not null primary key,
    memberseq number not null references member(memberSeq),
    title varchar2(100) not null,
    content varchar2(1000) not null,
    type varchar(50) not null,
    regdate date default sysdate not null
);

-- 문의 답글
create table askcomment(
    askcommentseq number not null primary key,
    askSeq number not null references ask(askSeq),
    memberSeq number not null references member(memberSeq),
    content varchar(500) not null,
    regdate date default sysdate not null
);


-- 도서
create table book (
    bookseq number primary key,
    title varchar2(100) not null,
    writer varchar2(100) not null,
    field varchar2(50), /* 대분류 */
    genre varchar2(50), /* 장르(소분류) */
    price varchar2(100) not null,
    publisher varchar2(100) not null,
    inventory number not null, /* 재고 */
    regdate varchar2(100) not null, /*출판일자*/
    salesrate number default 0 not null, /* 판매량 */
    explain varchar2(4000) not null,
    image varchar2(200)
);


-- 도서 리뷰
create table bookreview (
    bookreviewseq number primary key,
    memberseq number not null references member(memberseq),
    bookseq number not null references book(bookseq),
    onecomment varchar2(100) not null,
    star number not null
);



--장바구니
CREATE TABLE CART(
    CARTSEQ NUMBER PRIMARY KEY NOT NULL,
    MEMBERSEQ NUMBER REFERENCES MEMBER(MEMBERSEQ) NOT NULL,
    BOOKSEQ NUMBER REFERENCES BOOK(BOOKSEQ) NOT NULL
);


--주문
CREATE TABLE PAYMENT (
    paymentSeq NUMBER NOT NULL PRIMARY KEY, /* 주문번호 */
    memberSeq NUMBER NOT NULL REFERENCES member(memberSeq), /* 회원번호 */
    couponSeq NUMBER REFERENCES coupon(couponSeq), /* 쿠폰번호 */
    name varchar2(15) NOT NULL, /* 이름 */
    address varchar2(150) NOT NULL, /* 주소 */
    tel varchar2(50) NOT NULL, /* 연락처 */
    pay varchar2(30) NOT NULL, /* 결제금액 */
    checknumber number, /* 주문확인번호 */
    regdate date NOT NULL /* 날짜 */
);


-- 주문도서
CREATE TABLE ORDERBOOK (
    paymentSeq NUMBER NOT NULL REFERENCES payment(paymentSeq), /* 주문번호 */
    bookSeq NUMBER NOT NULL REFERENCES book(bookSeq) /* 도서번호 */
);


-- 매장
create table store (
    storeSeq number not null primary key,
    name varchar2(50) not null,
    address varchar2(150) not null,
    latitude varchar2(20) not null,
    longitude varchar2(20) not null
);

-- 채팅방(입장,퇴장)로그
CREATE TABLE CHATLOG(
   CHATLOGSEQ NUMBER PRIMARY KEY,
   CHATROOMSEQ NUMBER REFERENCES CHATROOM(CHATROOMSEQ),
   MEMBERSEQ NUMBER REFERENCES MEMBER(MEMBERSEQ),
   REGDATE DATE DEFAULT SYSDATE,
   ISEXIT VARCHAR2(10) CHECK(ISEXIT IN ('입장', '퇴장'))
);
