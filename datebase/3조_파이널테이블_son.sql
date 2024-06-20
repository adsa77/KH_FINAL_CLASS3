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
	CODE              NUMBER        PRIMARY KEY
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
	RANK              NUMBER        PRIMARY KEY
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
	CODE              NUMBER        PRIMARY KEY
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
	STATE             NUMBER        PRIMARY KEY
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
DROP SEQUENCE SEQ_ANNUAL_LEAVE_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_ANNUAL_LEAVE_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE ANNUAL_LEAVE CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE ANNUAL_LEAVE(
    ID	        NUMBER  NOT NULL
	, MEMBER_NO NUMBER  NOT NULL
	, YEAR	    DATE    NULL
	, DAYS	    DATE    		
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
-----------------------�ް�-----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_LEAVE_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_LEAVE_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE LEAVE CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE LEAVE(
    ID              NUMBER  NOT NULL
	, EMP_NO        NUMBER  NOT NULL
    , SIGN_NO       NUMBER  NOT NULL
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
DROP SEQUENCE SEQ_EMPLOYEE_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_EMPLOYEE_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;

-----���̺� ����-----
CREATE TABLE EMPLOYEE (
	NO                  NUMBER              PRIMARY KEY
	, DEPT_CODE         NUMBER
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
	, ENROLL_DATE       DATE
	, RETIRE_DATE       DATE
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

