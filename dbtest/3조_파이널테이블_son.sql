--------------------------------------------------
------------------------�μ�-----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_DEPARTMENT;

-----������ ����-----
CREATE SEQUENCE SEQ_DEPARTMENT NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE DEPARTMENT CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE DEPARTMENT (
	CODE              NUMBER        PRIMARY KEY
	, NAME            VARCHAR2(100)
	, STATE           VARCHAR2(100)
	, ENROLL_DATE     TIMESTAMP
	, MODIFY_DATE     TIMESTAMP
	, END_DATE        TIMESTAMP
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
-------------------������Ʈ��-----------------------
--------------------------------------------------

-----���̺� ����-----
DROP TABLE DIVISION CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE DIVISION (
	CODE              NUMBER        PRIMARY KEY
    , DEPT_CODE       NUMBER
	, NAME            VARCHAR2(100)
	, STATE           VARCHAR2(100)
	, ENROLL_DATE     TIMESTAMP
	, MODIFY_DATE     TIMESTAMP
	, END_DATE        TIMESTAMP
);

-----�ܷ�Ű ��������-----
ALTER TABLE DIVISION ADD CONSTRAINT FK_DEPARTMENT_TO_DIVISION FOREIGN KEY (DEPT_CODE)
REFERENCES DEPARTMENT (CODE);

--------------------------------------------------


--------------------------------------------------
-------------------------����---------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_AUTHORITY;

-----������ ����-----
CREATE SEQUENCE SEQ_AUTHORITY NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE AUTHORITY CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE AUTHORITY (
	RANK              NUMBER        PRIMARY KEY
	, NAME            VARCHAR2(100)
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
------------------------����----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_POSITION;

-----������ ����-----
CREATE SEQUENCE SEQ_POSITION NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE POSITION CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE POSITION (
	CODE              NUMBER        PRIMARY KEY
	, NAME            VARCHAR2(100)
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
----------------------����------------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_ATTEND;

-----������ ����-----
CREATE SEQUENCE SEQ_ATTEND NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE ATTEND CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE ATTEND (
	STATE             NUMBER        PRIMARY KEY
	, NAME            VARCHAR2(100)
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
----------------------�޿�------------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_SALARY;

-----������ ����-----
CREATE SEQUENCE SEQ_SALARY NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE SALARY CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE SALARY (
	SALARY_CODE       NUMBER    PRIMARY KEY
	, SALARY          NUMBER
	, MIN_SAL         NUMBER
	, MAX_SAL         NUMBER
);

-----�ܷ�Ű ��������-----


--------------------------------------------------


--------------------------------------------------
-----------------------����-----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_ANNUAL_LEAVE;

-----������ ����-----
CREATE SEQUENCE SEQ_ANNUAL_LEAVE NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE ANNUAL_LEAVE CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE ANNUAL_LEAVE(
    ID	        NUMBER  NOT NULL
	, MEMBER NUMBER  NOT NULL
	, YEAR	    DATE    NULL
	, DAYS	    DATE    		
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
-----------------------�ް�-----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_LEAVE;

-----������ ����-----
CREATE SEQUENCE SEQ_LEAVE NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE LEAVE CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE LEAVE(
    ID              NUMBER  NOT NULL
	, EMP        NUMBER  NOT NULL
    , SIGN       NUMBER  NOT NULL
	, TYPE          NUMBER
	, START_DATE    DATE
	, END_DATE      DATE
	, REASON	    VARCHAR(4000)
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
-----------------------�������----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_EMPLOYEE;
DROP SEQUENCE SEQ_EMPLOYEE_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_EMPLOYEE NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE EMPLOYEE (
	NO                  NUMBER              PRIMARY KEY
	, DEPT_CODE         NUMBER
    , DIV_CODE          NUMBER
	, POSITION_CODE     NUMBER
	, STATE             NUMBER
	, SALARY_CODE       NUMBER
	, RANK              NUMBER
	, SALARY            NUMBER
	, BONUS             NUMBER
	, ID                VARCHAR2(100)
	, PWD               VARCHAR2(100)
	, NICK              VARCHAR2(100)
	, NAME              VARCHAR2(100)
	, PHONE             CHAR(11)
	, ADDRESS           VARCHAR2(100)
	, ENROLL_DATE       TIMESTAMP
	, RETIRE_DATE       TIMESTAMP
	, RETIRE_YN         CHAR(1)             DEFAULT 'N'
);

-----�ܷ�Ű ��������-----
ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_DEPARTMENT_TO_EMPLOYEE FOREIGN KEY (DEPT_CODE)
REFERENCES DEPARTMENT (CODE);

ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_POSITION_TO_EMPLOYEE FOREIGN KEY (POSITION_CODE)
REFERENCES POSITION (CODE);

ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_ATTEND_TO_EMPLOYEE FOREIGN KEY (STATE)
REFERENCES ATTEND (STATE);

ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_EMPLOYEE_SALARY FOREIGN KEY (SALARY_CODE)
REFERENCES SALARY (SALARY_CODE);

ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_AUTHORITY_TO_EMPLOYEE FOREIGN KEY (RANK)
REFERENCES AUTHORITY (RANK);

--------------------------------------------------


--------------------------------------------------
-------------------�λ��������---------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_HR_ACCOUNT;

-----������ ����-----
CREATE SEQUENCE SEQ_HR_ACCOUNT NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE HR_ACCOUNT CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE HR_ACCOUNT(
    NO      NUMBER
    , RANK  NUMBER
    , ID    VARCHAR2(100)
    , PWD   VARCHAR2(100)
    , NICK VARCHAR2(100)
);

-----�ܷ�Ű ��������-----
ALTER TABLE HR_ACCOUNT ADD CONSTRAINT FK_AUTHORITY_TO_HR_ACCOUNT FOREIGN KEY (RANK)
REFERENCES AUTHORITY (RANK);


--------------------------------------------------


--------------------------------------------------
-------------------�޽���--------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_MESSAGE;

-----������ ����-----
CREATE SEQUENCE SEQ_MESSAGE NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE MESSAGE CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE MESSAGE(
    NO          NUMBER		    PRIMARY KEY
	, SENDER    NUMBER		    NOT NULL
	, RECEIVER  NUMBER		    NOT NULL
	, TITLE     VARCHAR2(100)
	, CONTENT   VARCHAR2(1000)
	, SEND_TIME TIMESTAMP       DEFAULT SYSDATE
	, READ_YN	CHAR(1)         DEFAULT 'N'     NOT NULL
	, DEL_YN	CHAR(1)	        DEFAULT 'N'     NOT NULL
);

-----�ܷ�Ű ��������-----
ALTER TABLE MESSAGE
ADD CONSTRAINT FK_MESSAGE_SENDER
FOREIGN KEY (SENDER)
REFERENCES EMPLOYEE(NO);

ALTER TABLE MESSAGE
ADD CONSTRAINT FK_MESSAGE_RECEIVER
FOREIGN KEY (RECEIVER)
REFERENCES EMPLOYEE(NO);

--------------------------------------------------












--------------------------------------------------
-------------------����--------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_����;

-----������ ����-----
CREATE SEQUENCE SEQ_���� NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE ���� CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE ����(

);

-----�ܷ�Ű ��������-----

--------------------------------------------------

COMMIT;

