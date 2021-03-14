DROP SEQUENCE MEMBER_SEQ;
DROP TRIGGER MEMBER_TRG;
DROP TABLE MEMBER;
DROP TABLE GRADE;

CREATE TABLE MEMBER (
	memberNumber        NUMBER	                                            CONSTRAINT PK_MEMBER_MEMBERNUMBER PRIMARY KEY,
    memberGrade         VARCHAR(20)     DEFAULT 'GRADE_GENERAL',
	memberEmail	        VARCHAR2(100)                                       CONSTRAINT UQ_MEMBER_MEMBEREMAIL UNIQUE,
	memberPassword	    VARCHAR2(100),
	memberName	        VARCHAR2(100),
	memberNick          VARCHAR2(100),                                      CONSTRAINT UQ_MEMBER_MEMBERNICK UNIQUE,
	memberPhone         VARCHAR2(100),
	memberRegDate  	    DATE,
	memberUnRegDate     DATE,
	memberPwChangeDate  DATE,
    memberAgree	        VARCHAR(20),
	memberRole	        VARCHAR(20)		DEFAULT 'ROLE_REGURAL',
    memberKey           VARCHAR2(100)
);

CREATE TABLE GRADE (
	memberGrade         VARCHAR(20)     DEFAULT 'ROLE_REGURAL'              CONSTRAINT PK_GRADE_MEMBERGRADE PRIMARY KEY,
	discountRate        NUMBER          DEFAULT 0
);

ALTER TABLE MEMBER
ADD CONSTRAINT FK_MEMBER_MEMBERGRADE FOREIGN KEY (memberGrade)
REFERENCES GRADE(memberGrade) ON DELETE CASCADE;

CREATE SEQUENCE MEMBER_SEQ;

CREATE OR REPLACE TRIGGER MEMBER_TRG
BEFORE INSERT ON MEMBER
FOR EACH ROW
BEGIN
    BEGIN
        IF INSERTING AND :NEW.memberNumber IS NULL THEN
            SELECT MEMBER_SEQ.NEXTVAL INTO :NEW.memberNumber FROM SYS.DUAL;
        END IF;
        IF INSERTING AND :NEW.memberGrade IS NULL THEN
            SELECT ('GRADE_GENERAL') INTO :NEW.memberRole FROM SYS.DUAL;
        END IF;
        IF INSERTING AND :NEW.memberRegDate IS NULL THEN
            SELECT SYSDATE INTO :NEW.memberRegDate FROM SYS.DUAL;
        END IF;
        IF INSERTING AND :NEW.memberPwChangeDate IS NULL THEN
            SELECT SYSDATE INTO :NEW.memberPwChangeDate FROM SYS.DUAL;
        END IF;
        IF INSERTING AND :NEW.memberRole IS NULL THEN
            SELECT ('ROLE_REGURAL') INTO :NEW.memberRole FROM SYS.DUAL;
        END IF;

    END COLUMN_SEQUENCES;
END;

/

INSERT INTO GRADE (memberGrade, discountRate) VALUES('GRADE_GENERAL',   0);
INSERT INTO GRADE (memberGrade, discountRate) VALUES('GRADE_MEMBERSHIP',0.3);

COMMIT;


---------- SAMPLE ----------


INSERT INTO MEMBER (
    memberName,             memberRegDate,          memberPwChangeDate,
    memberNick,             memberPhone,            memberEmail,
    memberRole,             memberPassword
)
VALUES (
    '홍길동',                SYSDATE,                SYSDATE,                
    '길동미디어',             '010-1234-5678',        'gildong@hwalbin.com',
    'ROLE_REGURAL',         '$2a$10$BKtqkvprIhG4.rka1IGTgeigBRvQiYMmD0GJD5KLoz6CIRv4X3Jzq' -- 'password : 델루나1!'
);

INSERT INTO MEMBER (
    memberName,             memberRegDate,          memberPwChangeDate,
    memberNick,             memberPhone,            memberEmail,
    memberRole,             memberPassword
)
VALUES (
    '한만월',                SYSDATE,                TO_DATE('2019-08-20','YYYY-MM-DD'),
    '관리자',                '010-7777-7777',        'tiger@hug.com',
    'ROLE_ADMIN',           '$2a$10$BKtqkvprIhG4.rka1IGTgeigBRvQiYMmD0GJD5KLoz6CIRv4X3Jzq' -- 'password : 델루나1!'
);

INSERT INTO MEMBER (
    memberName,             memberRegDate,          memberPwChangeDate,
    memberNick,             memberPhone,            memberEmail,
    memberRole,             memberPassword
)
VALUES (
    '아무개',                SYSDATE,                TO_DATE('2020-08-20','YYYY-MM-DD'),
    '늙은이',                '010-1111-1111',        'old@what.co.kr',
    'ROLE_REGURAL',         '$2a$10$BKtqkvprIhG4.rka1IGTgeigBRvQiYMmD0GJD5KLoz6CIRv4X3Jzq' -- 'password : 델루나1!'
);

INSERT INTO MEMBER (
    memberName,             memberRegDate,          memberPwChangeDate,
    memberNick,             memberPhone,            memberEmail,
    memberRole,             memberPassword
)
VALUES (
    '아무개',                SYSDATE,                SYSDATE,
    '난누군가또여긴어딘가',     '010-1111-1111',        'new@what.co.kr',
    'ROLE_REGURAL',         '$2a$10$BKtqkvprIhG4.rka1IGTgeigBRvQiYMmD0GJD5KLoz6CIRv4X3Jzq' -- 'password : 델루나1!'
);

INSERT INTO MEMBER (
    memberName,             memberRegDate,          memberPwChangeDate,
    memberNick,             memberPhone,            memberEmail,
    memberGrade,             memberPassword
)
VALUES (
    '알부자',                SYSDATE,                SYSDATE,
    '돈많아',                '010-1111-1111',        'gold@gold.com',
    'GRADE_MEMBERSHIP',     '$2a$10$BKtqkvprIhG4.rka1IGTgeigBRvQiYMmD0GJD5KLoz6CIRv4X3Jzq' -- 'password : 델루나1!'
);

COMMIT;


---------- EXAMPLE : TEST ----------


SELECT * FROM GRADE;
SELECT * FROM MEMBER;

SELECT M.memberNumber NO, M.memberName NAME, M.memberNick Nick, M.memberEmail EMAIL, memberRole ROLE, M.memberGrade GRADE, G.discountRate DC
FROM MEMBER M
LEFT JOIN GRADE G ON M.memberGrade = G.memberGrade;

UPDATE MEMBER SET 
memberName = '홍홍홍',
WHERE memberNumber = 1;

DELETE FROM MEMBER;

SELECT memberPwChangeDate, memberNumber, memberName, memberGrade, memberNick, memberPassword, memberPhone, memberEmail, memberRole, memberKey FROM MEMBER;
SELECT memberId FROM MEMBER WHERE memberName = '한만월' AND memberPhone = '777-7777-7777;
SELECT * FROM MEMBER;

UPDATE MEMBER SET 
    memberPwChangeDate = ADD_MONTHS(SYSDATE, -2)
WHERE memberNumber = 33;
/
UPDATE MEMBER SET 
    memberPwChangeDate = TO_DATE('2020-08-20','YYYY-MM-DD')
WHERE memberNumber = 46;
/
UPDATE MEMBER SET 
    memberPassword = '$2a$10$kEbtQaS.O/gPhgeVF/Ci2efNDSKJmp03MfTiuGDrr4ONSHZ9jWOke'
WHERE memberNumber = 9;

COMMIT;