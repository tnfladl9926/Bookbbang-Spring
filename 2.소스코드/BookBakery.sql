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

--ȸ��
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


--����
create table role (
    roleseq number primary key,
    memberseq number not null references member(memberseq),
    authority varchar2(50) not null
);

--�������Խ���
create table bulboard(
bulboardseq number not null primary key, 
title varchar2(100) not null,
content varchar2(4000) not null,
regdate date default sysdate not null, 
type varchar2(30) not null, 
likecount number not null, 
memberseq number not null references member(memberseq)
); 


--���������
create table bulcomment(
bulcommentseq number not null primary key,
content varchar2(1000) not null, 
regdate date default sysdate not null, 
memberseq number not null references member(memberseq), 
bulboardseq number not null references bulboard(bulboardseq) 
);


-- �߰�ŷ�
create table secondhand (
     secondhandseq number not null primary key,                              --�ŷ���ȣ
     title varchar2(150) not null,                                                       --����
     content varchar2(4000) not null,                                               --����
     regdate date default sysdate not null,                                         --��¥
     memberseq number not null references member(memberseq),        --ȸ����ȣ
     price varchar2(20)                      --����
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


-- ä�ù�
create table chatroom(
    chatroomseq number primary key,                                                         --ä�ù� ��ȣ
    secondhandseq number not null references secondhand(secondhandseq),    --�ŷ���ȣ
    smemberseq number not null references member(memberseq),               --ȸ����ȣ
    bmemberseq number not null references member(memberseq)               --ȸ����ȣ2
);



-- �ŷ���ȭ
create table chatcontent (
    chatcontentseq number not null primary key,                                     --��ȭ��ȣ
    field varchar2(1000) not null,                                                           --����
    regdate date default sysdate not null,                                               --��¥
    memberseq number not null references member(memberseq),            --ȸ����ȣ
    chatroomseq number not null references chatroom(chatroomseq)        --ä�ù��ȣ
);



--��������
create table notice(
    noticeSeq number primary key,
    title varchar2(100) not null,
    content varchar2(100) not null,
    regdate date default sysdate,
    memberSeq references Member(memberSeq)
);

-- ����
create table coupon (
    couponSeq number not null primary key,
    name varchar2(50) not null,
    rate number(30) not null,
    deadline date not null
);


-- ��������
create table membercoupon(
    couponSeq number not null references coupon(couponSeq),
    memberSeq number not null references member(memberSeq),
    use varchar2(10) not null
);


--�̺�Ʈ
CREATE TABLE EVENT(
    EVENTSEQ NUMBER PRIMARY KEY NOT NULL,
    TITLE VARCHAR2(100) NOT NULL,
    CONTENT VARCHAR2(4000) NOT NULL,
    REGDATE DATE DEFAULT SYSDATE NOT NULL,
    COUPONSEQ NUMBER REFERENCES COUPON(COUPONSEQ) NOT NULL
);


-- ����
create table ask(
    askSeq number not null primary key,
    memberseq number not null references member(memberSeq),
    title varchar2(100) not null,
    content varchar2(1000) not null,
    type varchar(50) not null,
    regdate date default sysdate not null
);

-- ���� ���
create table askcomment(
    askcommentseq number not null primary key,
    askSeq number not null references ask(askSeq),
    memberSeq number not null references member(memberSeq),
    content varchar(500) not null,
    regdate date default sysdate not null
);


-- ����
create table book (
    bookseq number primary key,
    title varchar2(100) not null,
    writer varchar2(100) not null,
    field varchar2(50), /* ��з� */
    genre varchar2(50), /* �帣(�Һз�) */
    price varchar2(100) not null,
    publisher varchar2(100) not null,
    inventory number not null, /* ��� */
    regdate varchar2(100) not null, /*��������*/
    salesrate number default 0 not null, /* �Ǹŷ� */
    explain varchar2(4000) not null,
    image varchar2(200)
);


-- ���� ����
create table bookreview (
    bookreviewseq number primary key,
    memberseq number not null references member(memberseq),
    bookseq number not null references book(bookseq),
    onecomment varchar2(100) not null,
    star number not null
);



--��ٱ���
CREATE TABLE CART(
    CARTSEQ NUMBER PRIMARY KEY NOT NULL,
    MEMBERSEQ NUMBER REFERENCES MEMBER(MEMBERSEQ) NOT NULL,
    BOOKSEQ NUMBER REFERENCES BOOK(BOOKSEQ) NOT NULL
);


--�ֹ�
CREATE TABLE PAYMENT (
    paymentSeq NUMBER NOT NULL PRIMARY KEY, /* �ֹ���ȣ */
    memberSeq NUMBER NOT NULL REFERENCES member(memberSeq), /* ȸ����ȣ */
    couponSeq NUMBER REFERENCES coupon(couponSeq), /* ������ȣ */
    name varchar2(15) NOT NULL, /* �̸� */
    address varchar2(150) NOT NULL, /* �ּ� */
    tel varchar2(50) NOT NULL, /* ����ó */
    pay varchar2(30) NOT NULL, /* �����ݾ� */
    checknumber number, /* �ֹ�Ȯ�ι�ȣ */
    regdate date NOT NULL /* ��¥ */
);


-- �ֹ�����
CREATE TABLE ORDERBOOK (
    paymentSeq NUMBER NOT NULL REFERENCES payment(paymentSeq), /* �ֹ���ȣ */
    bookSeq NUMBER NOT NULL REFERENCES book(bookSeq) /* ������ȣ */
);


-- ����
create table store (
    storeSeq number not null primary key,
    name varchar2(50) not null,
    address varchar2(150) not null,
    latitude varchar2(20) not null,
    longitude varchar2(20) not null
);

-- ä�ù�(����,����)�α�
CREATE TABLE CHATLOG(
   CHATLOGSEQ NUMBER PRIMARY KEY,
   CHATROOMSEQ NUMBER REFERENCES CHATROOM(CHATROOMSEQ),
   MEMBERSEQ NUMBER REFERENCES MEMBER(MEMBERSEQ),
   REGDATE DATE DEFAULT SYSDATE,
   ISEXIT VARCHAR2(10) CHECK(ISEXIT IN ('����', '����'))
);
