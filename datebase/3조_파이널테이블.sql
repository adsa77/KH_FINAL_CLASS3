--------------------------------------------------
------------------------�μ�-----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_DEPARTMENT_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_DEPARTMENT_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE DEPARTMENT CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE DEPARTMENT (
	CODE              VARCHAR2(100) PRIMARY KEY
	, NAME            VARCHAR2(100)
	, STATE           VARCHAR2(100)
	, ENROLL_DATE     DATE
	, MODIFY_DATE     TIMESTAMP
	, END_DATE        DATE
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
-------------------------����---------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_AUTHORITY_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_AUTHORITY_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE AUTHORITY CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE AUTHORITY (
	RANK              CHAR(2)       PRIMARY KEY
	, NAME            VARCHAR2(100)
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
------------------------����----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_POSITION_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_POSITION_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE POSITION CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE POSITION (
	CODE              CHAR(2)       PRIMARY KEY
	, NAME            VARCHAR2(100)
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
----------------------����------------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_ATTEND_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_ATTEND_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE ATTEND CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE ATTEND (
	STATE             VARCHAR2(100) PRIMARY KEY
	, NAME            VARCHAR2(100)
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
----------------------�޿�------------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_SALARY_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_SALARY_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE SALARY CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE SALARY (
	SALARY_CODE       CHAR(2)   PRIMARY KEY
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
DROP SEQUENCE SEQ_ANNUAL_LEAVE_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_ANNUAL_LEAVE_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE ANNUAL_LEAVE CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE ANNUAL_LEAVE(
    ID	        VARCHAR2(100)   NOT NULL
	, MEMBER_NO VARCHAR2(100)   NOT NULL
	, YEAR	    DATE		    NULL
	, DAYS	    DATE    		
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
-----------------------�ް�-----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_OTHRE_LEAVE_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_OTHRE_LEAVE_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE OTHRE_LEAVE CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE OTHRE_LEAVE(
    ID	VARCHAR(255)                NOT NULL
	, NO	VARCHAR2(1000)          NOT NULL
	, TYPE	VARCHAR(255)
	, START_DATE	VARCHAR(255)
	, END_DATE	VARCHAR(255)
	, REASON	VARCHAR(255)
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
------------------------���-----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_MEMBER_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_MEMBER_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE MEMBER CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE MEMBER (
	NO                  VARCHAR2(1000)      PRIMARY KEY
	, DEPT_CODE         VARCHAR2(100)
	, POSITION_CODE     CHAR(2)
	, STATE             VARCHAR2(100)
	, SALARY_CODE       VARCHAR2(100)
	, RANK              CHAR(2)            
	, SALARY            NUMBER
	, BONUS             NUMBER
	, ID                VARCHAR2(100)
	, PWD               VARCHAR2(100)
	, NICK              VARCHAR2(100)
	, NAME              VARCHAR2(100)
	, PHONE             CHAR(11)
	, ADDRESS           VARCHAR2(100)
	, ENROLL_DATE       DATE
	, RETIRE_DATE       DATE
	, RETIRE_YN         CHAR(1) DEFAULT 'N'
	, AUTHOR_CODE       CHAR(2)
	, PERSONAL_WORK_NO  NUMBER              
    , REST_LEAVE        VARCHAR2(100)
);

-----�ܷ�Ű ��������-----
ALTER TABLE MEMBER ADD CONSTRAINT FK_DEPARTMENT_TO_MEMBER FOREIGN KEY (DEPT_CODE)
REFERENCES DEPARTMENT (CODE);

ALTER TABLE MEMBER ADD CONSTRAINT FK_POSITION_TO_MEMBER FOREIGN KEY (POSITION_CODE)
REFERENCES POSITION (CODE);

ALTER TABLE MEMBER ADD CONSTRAINT FK_ATTENDANCE_TO_MEMBER FOREIGN KEY (STATE)
REFERENCES ATTENDANCE (STATE);

ALTER TABLE MEMBER ADD CONSTRAINT FK_SALARY_TO_MEMBER FOREIGN KEY (SALARY_CODE)
REFERENCES SALARY (SALARY_CODE);

ALTER TABLE MEMBER ADD CONSTRAINT FK_AUTHORITY_TO_MEMBER FOREIGN KEY (RANK)
REFERENCES AUTHORITY (RANK);

ALTER TABLE MEMBER ADD CONSTRAINT FK_PERSONAL_WORK_TO_MEMBER FOREIGN KEY (PERSONAL_WORK_NO)
REFERENCES PERSONAL_WORK (NO);

--------------------------------------------------











--------------------------------------------------
-------------------����--------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_����_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_����_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE ���� CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE ����(

);

-----�ܷ�Ű ��������-----

--------------------------------------------------

COMMIT;

