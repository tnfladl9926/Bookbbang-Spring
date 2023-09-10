SELECT * FROM member;
SELECT * FROM SECONDHAND;
select * from secondhandimg;

SELECT 
			s.secondhandseq,
            s.title,
            s.content,
            s.memberseq,
            TRUNC((sysdate - s.regdate) * 24) as regdate,
            s.price,
            s.status,
            s.address,
			(select nickname from member where memberseq =  s.memberseq) as nickname,
            (select secondhandimg 
            from SECONDHANDIMG 
            where secondhandimgseq = 
            (select min(secondhandimgseq) from secondhandimg where secondhandseq = s.secondhandseq)) as domainImg
		FROM SECONDHAND s;
        
select * from member;
select * from role;

SELECT sh.secondhandseq,
       sh.title,
       to_char(regdate, 'yyyy-mm-dd hh:mi') as regdate,
       sh.content,
       sh.memberseq,
       sh.price,
       sh.status,
       sh.address,
       si.*
			FROM SECONDHAND SH
				INNER JOIN SECONDHANDIMG SI
				ON SH.SECONDHANDSEQ = SI.SECONDHANDSEQ;

select * from secondhandimg;

select * from chatRoom;

INSERT INTO CHaTROOM VALUES(7, 61, 8, 7);

--�ŷ���ȭ
select * from chatcontent;

INSERT INTO CHATCONTENT VALUES(1, '�ݰ����ϴ�.', default, 8, 1);
INSERT INTO CHATCONTENT VALUES(2, '�� �ݰ�����', default, 1, 1);
INSERT INTO CHATCONTENT VALUES(3, '�����?', default, 1, 1);
INSERT INTO CHATCONTENT VALUES(4, '�� �����ϼ���.', default, 8, 1);

SELECT * FROM CHATCONTENT;

-- ���� ���� �Ȱ��ִ�(?) �Խù��� ���Ͽ� ä�ù濡 ������ ������ �г���
SELECT 
    ch.chatroomseq,
    (select nickname from MEMBER where memberseq = ch.bmemberseq) as nickname
FROM SECONDHAND SC
INNER JOIN CHATROOM CH
ON SC.SECONDHANDSEQ = CH.SECONDHANDSEQ
WHERE sc.secondhandseq = 24 and sc.memberseq = 8;

-- ����� ������ ��ȭ�� not in���ָ� �񱳰� ��
SELECT 
    (select nickname from MEMBER where memberseq = ct.memberseq) as nickname,
    (select memberseq from MEMBER where memberseq = ct.memberseq) as memberseq,
    CT.FIELD,
    to_char(CT.REGDATE, 'hh24:mi') as regdate
FROM SECONDHAND SC
INNER JOIN CHATROOM CR
ON SC.SECONDHANDSEQ = CR.SECONDHANDSEQ
INNER JOIN CHATCONTENT CT
ON CR.CHATROOMSEQ = CT.CHATROOMSEQ
WHERE CR.CHATROOMSEQ = 3
order by ct.regdate asc;

SELECT 
        (select nickname from MEMBER where memberseq = ch.bmemberseq) as nickname
		FROM SECONDHAND SC
		INNER JOIN CHATROOM CH
		ON SC.SECONDHANDSEQ = CH.SECONDHANDSEQ
		WHERE ch.chatroomseq = 1;

SELECT memberseq FROM SECONDHAND WHERE SECONDHANDSEQ = 31;

SELECT smemberseq FROM chatroom where chatroomseq = 1;

SELECT 
    nvl(chatroomseq, 0) as cnt
FROM SECONDHAND SC
INNER JOIN CHATROOM CR
ON SC.SECONDHANDSEQ = CR.SECONDHANDSEQ
WHERE CR.BMEMBERSEQ = 7 and cr.secondhandseq = 31;


select count(memberseq) as cnt
from chatcontent 
where chatroomseq = 5;

SELECT * FROM CHATROOM;

select * from chatcontent;

SELECT CHATROOMSEQ.NEXTVAL FROM dual;

select * from chatlog;

SELECT MAX(CHATROOMSEQ) FROM CHATROOM;

SELECT 
        DISTINCT NICKNAME
		FROM SECONDHAND SC
		INNER JOIN MEMBER M
        ON SC.MEMBERSEQ = M.MEMBERSEQ
        INNER JOIN CHATROOM CH
        ON CH.SECONDHANDSEQ = SC.SECONDHANDSEQ
        WHERE CH.CHATROOMSEQ = 33;

SELECT COUNT(CHATROOMSEQ)
FROM CHATCONTENT
GROUP BY CHATROOMSEQ;

SELECT 
    CR.CHATROOMSEQ,
    COUNT(CR.CHATROOMSEQ) AS CNT
FROM CHATROOM CR
INNER JOIN CHATCONTENT CT
ON CR.CHATROOMSEQ = CT.CHATROOMSEQ
where regdate > (SELECT max(regdate) from chatlog where isExit = '퇴장' and chatroomseq = 1 and memberseq = 8)
GROUP BY CR.CHATROOMSEQ;


SELECT 
    COUNT(*) AS CNT,
    CR.CHATROOMSEQ
FROM CHATROOM CR
INNER JOIN CHATLOG CL
ON CR.CHATROOMSEQ = CL.CHATROOMSEQ
INNER JOIN CHATCONTENT CT
ON CR.CHATROOMSEQ = CT.CHATROOMSEQ
WHERE CR.SECONDHANDSEQ = 61 
GROUP BY CR.CHATROOMSEQ;


select * from chatlog;

SELECT * FROM chatcontent;

SELECT * FROM CHATCONTENT;

SELECT * FROM CHATROOM;
SELECT * FROM SECONDHAND;



SELECT 
		    (select nickname from MEMBER where memberseq = ct.memberseq) as nickname,
		    (select memberseq from MEMBER where memberseq = ct.memberseq) as memberseq,
		    ct.field,
		    to_char(CT.REGDATE, 'hh24:mi') as regdate
		FROM SECONDHAND SC
		INNER JOIN CHATROOM CR
		ON SC.SECONDHANDSEQ = CR.SECONDHANDSEQ
		INNER JOIN CHATCONTENT CT
		ON CR.CHATROOMSEQ = CT.CHATROOMSEQ
		WHERE CR.CHATROOMSEQ = 1
		order by ct.regdate asc	;
        
        
SELECT CL.CHATROOMSEQ, COUNT(CT.CHATCONTENTSEQ) AS CNT
FROM CHATLOG CL
JOIN CHATCONTENT CT ON CL.CHATROOMSEQ = CT.CHATROOMSEQ
WHERE CL.ISEXIT = '퇴장' AND CT.REGDATE > CL.REGDATE
GROUP BY CL.CHATROOMSEQ;


