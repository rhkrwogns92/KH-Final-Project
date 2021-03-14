/*─────────────────────────────────────────────── 댓글 ───────────────────────────────────────────────*/
drop table REPLY;
drop sequence seq_reply_rNo;



/*------------------------------- REPLY 테이블 생성 -------------------------------*/
CREATE table REPLY(
    rNo          NUMBER         NOT NULL primary key,
    nNo          NUMBER         NOT NULL,
    memberNumber NUMBER,
    content      VARCHAR2(2000) NOT NULL,
    password     VARCHAR2(20)   NOT NULL,
    regdate      VARCHAR2(100)  DEFAULT SYSDATE,
    
    constraint fk_reply_nNo FOREIGN KEY(nNo) REFERENCES NOTICE(nNo)on delete cascade ,
    constraint fk_reply_memberId FOREIGN KEY(memberNumber) REFERENCES MEMBER(memberNumber) on delete cascade
);

/*------------------------------- 시퀀스 생성 -------------------------------*/
CREATE SEQUENCE seq_reply_rNo;

/*------------------------------- REPLY 데이터 등록 -------------------------------*/
INSERT INTO REPLY (rNo, nNo, memberNumber, password, content, regdate) 
VALUES (seq_reply_rNo.nextval, 100, 1, 1111,'안녕하세요 반갑습니다.1', to_char(sysdate, 'yyyy-MM-dd HH24:MI:SS') );
INSERT INTO REPLY (rNo, nNo, memberNumber, password, content, regdate) 
VALUES (seq_reply_rNo.nextval, 100, 1, 1111,'안녕하세요 반갑습니다.2', to_char(sysdate, 'yyyy-MM-dd HH24:MI:SS') );
INSERT INTO REPLY (rNo, nNo, memberNumber, password, content, regdate) 
VALUES (seq_reply_rNo.nextval, 100, 1, 1111,'안녕하세요 반갑습니다.3', to_char(sysdate, 'yyyy-MM-dd HH24:MI:SS') );
INSERT INTO REPLY (rNo, nNo, memberNumber, password, content, regdate) 
VALUES (seq_reply_rNo.nextval, 100, 1, 1111,'안녕하세요 반갑습니다.4', to_char(sysdate, 'yyyy-MM-dd HH24:MI:SS') );
INSERT INTO REPLY (rNo, nNo, memberNumber, password, content, regdate) 
VALUES (seq_reply_rNo.nextval, 100, 1, 1111,'안녕하세요 반갑습니다.5', to_char(sysdate, 'yyyy-MM-dd HH24:MI:SS') );
INSERT INTO REPLY (rNo, nNo, memberNumber, password, content, regdate) 
VALUES (seq_reply_rNo.nextval, 100, 1, 1111,'안녕하세요 반갑습니다.6', to_char(sysdate, 'yyyy-MM-dd HH24:MI:SS') );
INSERT INTO REPLY (rNo, nNo, memberNumber, password, content, regdate) 
VALUES (seq_reply_rNo.nextval, 100, 1, 1111,'안녕하세요 반갑습니다.7', to_char(sysdate, 'yyyy-MM-dd HH24:MI:SS') );


commit;