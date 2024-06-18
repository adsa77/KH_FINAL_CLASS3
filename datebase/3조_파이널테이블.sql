--------------------------------------------------
------------------------���-----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_MEMBER_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_MEMBER_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE MEMBER;

-----���̺� ����-----
CREATE TABLE MEMBER (
	NO                VARCHAR2(1000)    PRIMARY KEY
	, DEPT_CODE       VARCHAR2(100)
	, POSITION_CODE   CHAR(2)
	, STATE           VARCHAR2(100)
	, SALARY_CODE     VARCHAR2(100)
	, RANK            CHAR(2)           NOT NULL
	, SALARY          NUMBER
	, BONUS           NUMBER
	, ID              VARCHAR2(100)
	, PWD             VARCHAR2(100)
	, NICK            VARCHAR2(100)
	, NAME            VARCHAR2(100)
	, PHONE           CHAR(11)
	, ADDRESS         VARCHAR2(100)
	, ENROLL_DATE     DATE
	, RETIRE_DATE     DATE
	, RETIRE_YN       CHAR(1) DEFAULT 'N'
	, AUTHOR_CODE     CHAR(2)
	, PERSONAL_WORK_NO NUMBER          NOT NULL
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
------------------------�μ�-----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE DEPARTMENT_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_DEPARTMENT_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE DEPARTMENT;

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
DROP SEQUENCE SEQ_MEMBER_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_MEMBER_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE MEMBER;

-----���̺� ����-----
CREATE TABLE AUTHORITY (
	RANK              CHAR(2)       PRIMARY KEY
	, NAME            VARCHAR2(100)
	, Field           VARCHAR(255)
);

-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
------------------------����----------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SEQ_MEMBER_NO;

-----������ ����-----
CREATE SEQUENCE SEQ_MEMBER_NO NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE POSITION;

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
DROP SEQUENCE ATTENDANCE;

-----������ ����-----
CREATE SEQUENCE ATTENDANCE NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE ATTENDANCE;

-----���̺� ����-----
CREATE TABLE ATTENDANCE (
	STATE             VARCHAR2(100) PRIMARY KEY
	, NAME            VARCHAR2(100)
);
-----�ܷ�Ű ��������-----

--------------------------------------------------


--------------------------------------------------
----------------------�޿�------------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE SALARY;

-----������ ����-----
CREATE SEQUENCE SALARY NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE SALARY;

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
-------------------����--------------------
--------------------------------------------------

-----������ ����-----
DROP SEQUENCE ����;

-----������ ����-----
CREATE SEQUENCE ���� NOCACHE NOCYCLE;

-----���̺� ����-----
DROP TABLE ����;

-----���̺� ����-----
CREATE TABLE ����(

);

-----�ܷ�Ű ��������-----


--------------------------------------------------

