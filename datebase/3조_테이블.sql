-- 시퀀스 삭제
DROP SEQUENCE SEQ_EMPLOYEE;
DROP SEQUENCE SEQ_HR_ACCOUNT;
DROP SEQUENCE SEQ_SIGN;
DROP SEQUENCE SEQ_SIGN_FILE;
DROP SEQUENCE SEQ_SIGN_PATH;
DROP SEQUENCE SEQ_SIGN_REF;
DROP SEQUENCE SEQ_SIGN_COM;
DROP SEQUENCE SEQ_LEAVE;
DROP SEQUENCE SEQ_BUSINESS_TRIP;
DROP SEQUENCE SEQ_LEAVE_TYPE;
DROP SEQUENCE SEQ_LEADER_EVAL;
DROP SEQUENCE SEQ_MEMBER_EVAL;
DROP SEQUENCE SEQ_COLLEAGE_EVAL;
DROP SEQUENCE SEQ_KPI;
DROP SEQUENCE SEQ_COMMUTE;
DROP SEQUENCE SEQ_TENDINOUS;
DROP SEQUENCE SEQ_TENDINOUS_REVIEW;
DROP SEQUENCE SEQ_FREE_BOARD;
DROP SEQUENCE SEQ_FREE_BOARD_REVIEW;
DROP SEQUENCE SEQ_NOTICE_BOARD;
DROP SEQUENCE SEQ_PROJECT;
DROP SEQUENCE SEQ_PROJECT_MANAGER;
DROP SEQUENCE SEQ_CONFERENCE_RECORD;
DROP SEQUENCE SEQ_PROJECT_WORK;
DROP SEQUENCE SEQ_PERSONAL_WORK;
DROP SEQUENCE SEQ_MESSAGE;


-- 시퀀스 생성
CREATE SEQUENCE SEQ_EMPLOYEE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_HR_ACCOUNT NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_SIGN NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_SIGN_FILE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_SIGN_PATH NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_SIGN_REF NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_SIGN_COM NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_LEAVE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_BUSINESS_TRIP NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_LEAVE_TYPE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_LEADER_EVAL NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_MEMBER_EVAL NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_COLLEAGE_EVAL NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_KPI NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_COMMUTE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_TENDINOUS NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_TENDINOUS_REVIEW NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_FREE_BOARD NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_FREE_BOARD_REVIEW NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_NOTICE_BOARD NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_PROJECT NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_PROJECT_MANAGER NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_CONFERENCE_RECORD NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_PROJECT_WORK NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_PERSONAL_WORK NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_MESSAGE NOCACHE NOCYCLE;


-- 테이블 삭제
DROP TABLE DEPARTMENT CASCADE CONSTRAINTS;
DROP TABLE DIVISION CASCADE CONSTRAINTS;
DROP TABLE AUTHORITY CASCADE CONSTRAINTS;
DROP TABLE POSITION CASCADE CONSTRAINTS;
DROP TABLE ATTEND CASCADE CONSTRAINTS;
DROP TABLE SALARY CASCADE CONSTRAINTS;
DROP TABLE ANNUAL_LEAVE CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE HR_ACCOUNT CASCADE CONSTRAINTS;
DROP TABLE SIGN CASCADE CONSTRAINTS;
DROP TABLE SIGN_FILE CASCADE CONSTRAINTS;
DROP TABLE SIGN_PATH CASCADE CONSTRAINTS;
DROP TABLE SIGN_REF CASCADE CONSTRAINTS;
DROP TABLE SIGN_COM CASCADE CONSTRAINTS;
DROP TABLE LEAVE CASCADE CONSTRAINTS;
DROP TABLE BUSINESS_TRIP CASCADE CONSTRAINTS;
DROP TABLE LEAVE_TYPE CASCADE CONSTRAINTS;
DROP TABLE LEADER_EVAL CASCADE CONSTRAINTS;
DROP TABLE MEMBER_EVAL CASCADE CONSTRAINTS;
DROP TABLE COLLEAGE_EVAL CASCADE CONSTRAINTS;
DROP TABLE KPI CASCADE CONSTRAINTS;
DROP TABLE COMMUTE CASCADE CONSTRAINTS;
DROP TABLE TENDINOUS CASCADE CONSTRAINTS;
DROP TABLE TENDINOUS_REVIEW CASCADE CONSTRAINTS;
DROP TABLE FREE_BOARD CASCADE CONSTRAINTS;
DROP TABLE FREE_BOARD_REVIEW CASCADE CONSTRAINTS;
DROP TABLE NOTICE_BOARD CASCADE CONSTRAINTS;
DROP TABLE PROJECT CASCADE CONSTRAINTS;
DROP TABLE PROJECT_MANAGER CASCADE CONSTRAINTS;
DROP TABLE CONFERENCE_RECORD CASCADE CONSTRAINTS;
DROP TABLE PROJECT_WORK CASCADE CONSTRAINTS;
DROP TABLE PERSONAL_WORK CASCADE CONSTRAINTS;
DROP TABLE WORK_TYPE CASCADE CONSTRAINTS;
DROP TABLE STATE_A CASCADE CONSTRAINTS;
DROP TABLE STATE_B CASCADE CONSTRAINTS;
DROP TABLE MESSAGE CASCADE CONSTRAINTS;


-- 테이블 생성

-- 부서목록
CREATE TABLE DEPARTMENT (
	CODE              NUMBER        PRIMARY KEY
	, NAME            VARCHAR2(100)
	, STATE           VARCHAR2(100)
	, ENROLL_DATE     TIMESTAMP
	, MODIFY_DATE     TIMESTAMP
	, END_DATE        TIMESTAMP
);

-- 프로젝트 팀
CREATE TABLE DIVISION (
	CODE              NUMBER        PRIMARY KEY
    , DEPT_CODE       NUMBER
	, NAME            VARCHAR2(100)
	, STATE           VARCHAR2(100)
	, ENROLL_DATE     TIMESTAMP
	, MODIFY_DATE     TIMESTAMP
	, END_DATE        TIMESTAMP
);

-- 권한등급
CREATE TABLE AUTHORITY (
	RANK              NUMBER        PRIMARY KEY
	, NAME            VARCHAR2(100)
);

-- 직급
CREATE TABLE POSITION (
	CODE              NUMBER        PRIMARY KEY
	, NAME            VARCHAR2(100)
);

-- 근태
CREATE TABLE ATTEND (
	STATE             NUMBER        PRIMARY KEY
	, NAME            VARCHAR2(100)
);

-- 급여
CREATE TABLE SALARY (
	SALARY_CODE       NUMBER    PRIMARY KEY
	, SALARY          NUMBER
);

-- 연차
CREATE TABLE ANNUAL_LEAVE(
    ID	        NUMBER  NOT NULL
	, EMP_NO    NUMBER  NOT NULL
	, COUNT     NUMBER  NOT NULL 		
);

-- 사원정보
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
    , PROFILE           VARCHAR2(1000)
	, ENROLL_DATE       TIMESTAMP
	, RETIRE_DATE       TIMESTAMP
	, RETIRE_YN         CHAR(1)             DEFAULT 'N'
);

-- 인사관리 계정
CREATE TABLE HR_ACCOUNT(
    NO          NUMBER
    , RANK      NUMBER
    , ID        VARCHAR2(100)
    , PWD       VARCHAR2(100)
    , NICK      VARCHAR2(100)
);

-- 결재
CREATE TABLE SIGN(
    NO              NUMBER          PRIMARY KEY
    , EMP_NO        NUMBER          NOT NULL
    , RESULT        NUMBER          DEFAULT 0   NOT NULL
    , STEP          NUMBER          DEFAULT 1   NOT NULL
    , TITLE         VARCHAR2(1000)  NOT NULL
    , CONTENT       VARCHAR2(4000)  NOT NULL
    , ENROLL_DATE   TIMESTAMP       DEFAULT SYSDATE
);

-- 첨부파일
CREATE TABLE SIGN_FILE(
    NO              NUMBER          PRIMARY KEY
    , SIGN_NO       NUMBER          NOT NULL
    , CHANGE_NAME   VARCHAR2(1000)  NOT NULL UNIQUE
    , ORIGIN_NAME   VARCHAR2(1000)  NOT NULL
    , "SIZE"        NUMBER          NOT NULL
    , MODIFY_DATE   TIMESTAMP
);

-- 결재선
CREATE TABLE SIGN_PATH(
    NO              NUMBER          PRIMARY KEY
    , SIGN_NO       NUMBER          NOT NULL
    , APPROVER_NO   NUMBER          NOT NULL
    , SIGN_SEQ      NUMBER          NOT NULL
);

-- 참조
CREATE TABLE SIGN_REF(
    NO              NUMBER          PRIMARY KEY
    , SIGN_NO       NUMBER          NOT NULL
    , REF_NO        NUMBER          NOT NULL
);

-- 첨언
CREATE TABLE SIGN_COM(
    NO              NUMBER          PRIMARY KEY
    , SIGN_NO       NUMBER          NOT NULL
    , "COMMENT"     VARCHAR2(4000)
);

-- 휴가
CREATE TABLE LEAVE(
    NO              NUMBER          PRIMARY KEY
    , TYPE_NO       NUMBER          NOT NULL
    , EMP_NO        NUMBER          NOT NULL
    , APPROVER_NO   NUMBER          NOT NULL
    , START_DATE    TIMESTAMP       NOT NULL
    , END_DATE      TIMESTAMP       NOT NULL
    , REASON        VARCHAR2(4000)  NOT NULL
    , STATE         NUMBER          DEFAULT 0   NOT NULL
    , APPROVE_DATE  TIMESTAMP
    , ENROLL_DATE   TIMESTAMP       DEFAULT SYSDATE NOT NULL
);

-- 출장
CREATE TABLE BUSINESS_TRIP(
    NO              NUMBER          PRIMARY KEY
    , PRO_NO        NUMBER          NOT NULL
    , EMP_NO        NUMBER          NOT NULL
    , APPROVER_NO   NUMBER          NOT NULL
    , START_DATE    TIMESTAMP       NOT NULL
    , END_DATE      TIMESTAMP       NOT NULL
    , REASON        VARCHAR2(4000)  NOT NULL
    , DESTINATION   VARCHAR2(1000)  NOT NULL
    , STATE         NUMBER          DEFAULT 0   NOT NULL
    , APPROVE_DATE  TIMESTAMP
    , ENROLL_DATE   TIMESTAMP       DEFAULT SYSDATE NOT NULL
);

-- 휴가 타입
CREATE TABLE LEAVE_TYPE(
    NO              NUMBER          PRIMARY KEY
    , NAME          VARCHAR2(20)    NOT NULL
);

-- 팀장 평가
CREATE TABLE LEADER_EVAL(
    NO                  NUMBER  PRIMARY KEY
    , EVALUATOR_NO      NUMBER
    , EVALUATEE_NO      NUMBER
    , COMMUNICATION     NUMBER  NOT NULL
    , RESPONSIBILITY    NUMBER  NOT NULL
    , JUDGEMENT         NUMBER  NOT NULL
    , PROFESSIONALISM   NUMBER  NOT NULL
    , START_DATE        TIMESTAMP
    , END_DATE          TIMESTAMP
    , WRITE_DATE        TIMESTAMP    DEFAULT SYSDATE
    , COMPLIMENT        VARCHAR2(1000)
    , DISAPPOINTMENT    VARCHAR2(1000)
    , SUGGESTION        VARCHAR2(1000)
);

-- 팀원 평가
CREATE TABLE MEMBER_EVAL(
    NO                  NUMBER  PRIMARY KEY
    , EVALUATOR_NO      NUMBER
    , EVALUATEE_NO      NUMBER
    , POTENTIAL         NUMBER  NOT NULL
    , COMMUNICATION     NUMBER  NOT NULL
    , PROBLEM_SOLVE     NUMBER  NOT NULL
    , RESPONSIBILITY    NUMBER  NOT NULL
    , START_DATE        TIMESTAMP    
    , END_DATE          TIMESTAMP
    , WRITE_DATE        TIMESTAMP    DEFAULT SYSDATE
    , COMPLIMENT        VARCHAR2(1000)
    , DISAPPOINTMENT    VARCHAR2(1000)
    , SUGGESTION        VARCHAR2(1000)
);

-- 동료 평가
CREATE TABLE COLLEAGE_EVAL(
    NO                  NUMBER  PRIMARY KEY
    , EVALUATOR_NO      NUMBER
    , EVALUATEE_NO      NUMBER
    , POTENTIAL         NUMBER  NOT NULL
    , COMMUNICATION     NUMBER  NOT NULL
    , PROBLEM_SOLVE     NUMBER  NOT NULL
    , RESPONSIBILITY    NUMBER  NOT NULL
    , START_DATE        TIMESTAMP
    , END_DATE          TIMESTAMP
    , WRITE_DATE        TIMESTAMP    DEFAULT SYSDATE
    , COMPLIMENT        VARCHAR2(1000)
    , DISAPPOINTMENT    VARCHAR2(1000)
    , SUGGESTION        VARCHAR2(1000)
);

-- 성과지표
CREATE TABLE KPI(
    NO                  NUMBER  PRIMARY KEY
    , EMP_NO            NUMBER
    , PROJECT_NO        NUMBER
    , GOAL              VARCHAR2(1000)
    , PERSONAL_SCHEDULE VARCHAR2(1000)
    , ENROLL_DATE       TIMESTAMP    DEFAULT SYSDATE
    , MODIFY_DATE       TIMESTAMP   
    , FOCUS             NUMBER
);

-- 출퇴근
CREATE TABLE COMMUTE(
    NO          NUMBER  PRIMARY KEY
    , EMP_NO    NUMBER
    , WORK_TIME TIMESTAMP
    , QUIT_TIME TIMESTAMP
);

-- 건의게시판
CREATE TABLE TENDINOUS(
    NO              NUMBER          PRIMARY KEY
    , WRITER_NO     NUMBER
    , TITLE         VARCHAR2(1000)  NOT NULL
    , CONTENT       VARCHAR2(4000)  NOT NULL
    , HIT           NUMBER          DEFAULT '0'
    , ENROLL_DATE   TIMESTAMP       DEFAULT SYSDATE
    , MODIFY_DATE   TIMESTAMP
    , DEL_YN        CHAR(1)         DEFAULT 'N' CHECK (DEL_YN IN ('Y','N'))
);

-- 건의게시판 댓글
CREATE TABLE TENDINOUS_REVIEW(
    NO              NUMBER      PRIMARY KEY
    , NO2           NUMBER
    , WRITER_NO     NUMBER
    , CONTENT       VARCHAR2(4000)
    , WRITE_DATE    TIMESTAMP   DEFAULT SYSDATE
    , MODIFY_DATE   TIMESTAMP
    , DEL_YN        CHAR(1)     DEFAULT 'N' CHECK (DEL_YN IN ('Y','N'))
);

-- 자유게시판
CREATE TABLE FREE_BOARD(
    NO              NUMBER          PRIMARY KEY
    , WRITER_NO     NUMBER
    , TITLE         VARCHAR2(1000)  NOT NULL
    , CONTENT       VARCHAR2(4000)  NOT NULL
    , HIT           NUMBER          DEFAULT '0'
    , ENROLL_DATE   TIMESTAMP       DEFAULT SYSDATE
    , MODIFY_DATE   TIMESTAMP
    , DEL_YN        CHAR(1)         DEFAULT 'N' CHECK (DEL_YN IN ('Y','N'))
);
-- 자유게시판 댓글
CREATE TABLE FREE_BOARD_REVIEW(
    NO              NUMBER          PRIMARY KEY
    , NO2           NUMBER
    , WRITER_NO     NUMBER
    , CONTENT       VARCHAR2(4000)
    , WRITE_DATE    TIMESTAMP       DEFAULT SYSDATE
    , MODIFY_DATE   TIMESTAMP
    , DEL_YN        CHAR(1)         DEFAULT 'N' CHECK (DEL_YN IN ('Y','N'))
);

-- 공지게시판
CREATE TABLE NOTICE_BOARD(
    NO              NUMBER          PRIMARY KEY
    , WRITER_NO     NUMBER
    , TITLE         VARCHAR2(1000)
    , CONTENT       VARCHAR2(4000)
    , HIT           NUMBER          DEFAULT '0'
    , ENROLL_DATE   TIMESTAMP
    , DEL_YN        CHAR(1)         DEFAULT 'N' CHECK (DEL_YN IN ('Y','N'))
);

-- 프로젝트 정보
CREATE TABLE PROJECT(
    NO          NUMBER          PRIMARY KEY,
    CODE        NUMBER          ,
    EMP_NO      NUMBER          ,
    STATE_A_NO  NUMBER          ,
    TITLE       VARCHAR2(4000)  ,
    CONTENT     VARCHAR2(4000)  NOT NULL,
    START_DATE  TIMESTAMP       DEFAULT SYSDATE,
    END_DATE    TIMESTAMP   ,
    MODIFY_DATE TIMESTAMP	DEFAULT NULL
);

-- 프로젝트 담당자
CREATE TABLE PROJECT_MANAGER(
    NO      NUMBER      PRIMARY KEY,
    PRO_NO  NUMBER      ,
    EMP_NO  NUMBER   
);

-- 회의록
CREATE TABLE CONFERENCE_RECORD(
    NO          NUMBER          PRIMARY KEY,
    PRJ_NO      NUMBER          ,
    ENL_DATE    TIMESTAMP       DEFAULT SYSDATE,
    DEL_YN      CHAR(1)         DEFAULT 'N' CHECK (DEL_YN IN('Y','N')),
    TITLE       VARCHAR2(2000)  NOT NULL,
    CONTENT     VARCHAR2(4000)  NOT NULL
);

-- 프로젝트 일정
CREATE TABLE PROJECT_WORK(
    NO              NUMBER          PRIMARY KEY,
    NO2             NUMBER          NOT NULL,
    STATE_B_NO      NUMBER          ,
    TYPE_NO         NUMBER          ,
    START_DATE      TIMESTAMP       DEFAULT SYSDATE,
    END_DATE        TIMESTAMP,
    MODIFY_DATE     TIMESTAMP,
    TITLE           VARCHAR2(2000)  NOT NULL,
    CONTENT         VARCHAR2(4000)  NOT NULL
);

-- 일정 타입
CREATE TABLE WORK_TYPE(
    NO          NUMBER          PRIMARY KEY,
    NAME        VARCHAR2(2000)    NOT NULL
);

-- 기타 일정
CREATE TABLE PERSONAL_WORK(
    NO              NUMBER      PRIMARY KEY,
    NO2             NUMBER      NOT NULL,
    STATE_B_NO      NUMBER      ,
    TYPE_NO         NUMBER      ,
    START_DATE      TIMESTAMP   DEFAULT SYSDATE,
    END_DATE        TIMESTAMP,
    MODIFY_DATE     TIMESTAMP,
    TITLE       VARCHAR2(2000)  NOT NULL,
    CONTENT     VARCHAR2(4000)  NOT NULL
);

-- 상태A
CREATE TABLE STATE_A(
    NO          NUMBER          PRIMARY KEY,
    CONTENT     VARCHAR2(100)   NOT NULL   
);

-- 상태B
CREATE TABLE STATE_B(
    NO          NUMBER          PRIMARY KEY,
    CONTENT     VARCHAR2(100)   NOT NULL
);

-- 메시지
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


-- 외래키 추가

-- 프로젝트 팀
ALTER TABLE DIVISION 
ADD CONSTRAINT FK_DEPARTMENT_TO_DIVISION 
FOREIGN KEY (DEPT_CODE)
REFERENCES DEPARTMENT (CODE);

-- 사원정보
ALTER TABLE EMPLOYEE 
ADD CONSTRAINT FK_DEPARTMENT_TO_EMPLOYEE 
FOREIGN KEY (DEPT_CODE)
REFERENCES DEPARTMENT (CODE);

ALTER TABLE EMPLOYEE 
ADD CONSTRAINT FK_POSITION_TO_EMPLOYEE 
FOREIGN KEY (POSITION_CODE)
REFERENCES POSITION (CODE);

ALTER TABLE EMPLOYEE 
ADD CONSTRAINT FK_ATTEND_TO_EMPLOYEE 
FOREIGN KEY (STATE)
REFERENCES ATTEND (STATE);

ALTER TABLE EMPLOYEE 
ADD CONSTRAINT FK_EMPLOYEE_SALARY 
FOREIGN KEY (SALARY_CODE)
REFERENCES SALARY (SALARY_CODE);

ALTER TABLE EMPLOYEE 
ADD CONSTRAINT FK_AUTHORITY_TO_EMPLOYEE 
FOREIGN KEY (RANK)
REFERENCES AUTHORITY (RANK);

-- 인사관리계정
ALTER TABLE HR_ACCOUNT 
ADD CONSTRAINT FK_AUTHORITY_TO_HR_ACCOUNT 
FOREIGN KEY (RANK)
REFERENCES AUTHORITY (RANK);

-- 연차
ALTER TABLE ANNUAL_LEAVE
ADD CONSTRAINT FK_ANNUAL_LEAVE_TO_EMPLOYEE
FOREIGN KEY(EMP_NO)
REFERENCES EMPLOYEE (NO);

-- 휴가
ALTER TABLE LEAVE
ADD CONSTRAINT FK_LEAVE_LEAVE_TYPE
FOREIGN KEY (TYPE_NO)
REFERENCES LEAVE_TYPE(NO);

-- 출장
ALTER TABLE BUSINESS_TRIP
ADD CONSTRAINT FK_BUSINESS_TRIP_PROJECT
FOREIGN KEY (PRO_NO)
REFERENCES PROJECT(NO);

-- 결재
ALTER TABLE SIGN
ADD CONSTRAINT FK_SIGN_EMPLOYEE
FOREIGN KEY (EMP_NO)
REFERENCES EMPLOYEE(NO);

-- 첨부파일
ALTER TABLE SIGN_FILE
ADD CONSTRAINT FK_SIGN_FILE_SIGN
FOREIGN KEY (SIGN_NO)
REFERENCES SIGN(NO);

-- 결재선
ALTER TABLE SIGN_PATH
ADD CONSTRAINT FK_SIGN_PATH_SIGN
FOREIGN KEY (SIGN_NO)
REFERENCES SIGN(NO);

ALTER TABLE SIGN_PATH
ADD CONSTRAINT FK_SIGN_PATH_EMPLOYEE
FOREIGN KEY (APPROVER_NO)
REFERENCES EMPLOYEE(NO);

-- 참조
ALTER TABLE SIGN_REF
ADD CONSTRAINT FK_SIGN_REF_SIGN
FOREIGN KEY (SIGN_NO)
REFERENCES SIGN(NO);

ALTER TABLE SIGN_REF
ADD CONSTRAINT FK_SIGN_REF_EMPLOYEE
FOREIGN KEY (REF_NO)
REFERENCES EMPLOYEE(NO);

-- 첨언
ALTER TABLE SIGN_COM
ADD CONSTRAINT FK_SIGN_COM_SIGN
FOREIGN KEY (SIGN_NO)
REFERENCES SIGN(NO);

-- 팀장 평가
ALTER TABLE LEADER_EVAL 
ADD CONSTRAINT FK_LEADER_EVAL_TO_EMPLOYEE 
FOREIGN KEY (EVALUATOR_NO) 
REFERENCES EMPLOYEE(NO);

ALTER TABLE LEADER_EVAL 
ADD CONSTRAINT FK_LEADER_EVAL_TO_EMPLOYEE2 
FOREIGN KEY (EVALUATEE_NO) 
REFERENCES EMPLOYEE(NO);
-- 제약조건
ALTER TABLE LEADER_EVAL 
ADD CONSTRAINT LEADER_EVAL_CK_COMMUNICATION 
CHECK (COMMUNICATION >= 0 AND COMMUNICATION <= 100);

ALTER TABLE LEADER_EVAL 
ADD CONSTRAINT LEADER_EVAL_CK_RESPONSIBILITY 
CHECK (RESPONSIBILITY >= 0 AND RESPONSIBILITY <= 100);

ALTER TABLE LEADER_EVAL 
ADD CONSTRAINT LEADER_EVAL_CK_JUDGEMENT 
CHECK (JUDGEMENT >= 0 AND JUDGEMENT <= 100);

ALTER TABLE LEADER_EVAL 
ADD CONSTRAINT LEADER_EVAL_CK_PROFESSIONALISM 
CHECK (PROFESSIONALISM >= 0 AND PROFESSIONALISM <= 100);

-- 팀원 평가
ALTER TABLE MEMBER_EVAL 
ADD CONSTRAINT FK_MEMBER_EVAL_TO_EMPLOYEE 
FOREIGN KEY (EVALUATOR_NO) 
REFERENCES EMPLOYEE(NO);

ALTER TABLE MEMBER_EVAL 
ADD CONSTRAINT FK_MEMBER_EVAL_TO_EMPLOYEE2 
FOREIGN KEY (EVALUATEE_NO)
REFERENCES EMPLOYEE(NO);
-- 제약조건
ALTER TABLE MEMBER_EVAL 
ADD CONSTRAINT MEMBER_EVAL_CK_COMMUNICATION 
CHECK (COMMUNICATION >= 0 AND COMMUNICATION <= 100);

ALTER TABLE MEMBER_EVAL 
ADD CONSTRAINT MEMBER_EVAL_CK_POTENTIAL 
CHECK (POTENTIAL >= 0 AND POTENTIAL <= 100);

ALTER TABLE 
MEMBER_EVAL ADD CONSTRAINT MEMBER_EVAL_CK_PROBLEM_SOLVE 
CHECK (PROBLEM_SOLVE >= 0 AND PROBLEM_SOLVE <= 100);

ALTER TABLE MEMBER_EVAL 
ADD CONSTRAINT MEMBER_EVAL_CK_RESPONSIBILITY 
CHECK (RESPONSIBILITY >= 0 AND RESPONSIBILITY <= 100);

-- 동료 평가
ALTER TABLE COLLEAGE_EVAL 
ADD CONSTRAINT FK_COLLEAGE_EVAL_TO_EMPLOYEE 
FOREIGN KEY (EVALUATOR_NO) 
REFERENCES EMPLOYEE(NO);

ALTER TABLE COLLEAGE_EVAL 
ADD CONSTRAINT FK_COLLEAGE_EVAL_TO_EMPLOYEE2 
FOREIGN KEY (EVALUATEE_NO) 
REFERENCES EMPLOYEE(NO);

-- 제약조건
ALTER TABLE COLLEAGE_EVAL 
ADD CONSTRAINT COLLEAGE_EVAL_CK_POTENTIAL 
CHECK (POTENTIAL >= 0 AND POTENTIAL <= 100);

ALTER TABLE COLLEAGE_EVAL 
ADD CONSTRAINT COLLEAGE_EVAL_CK_COMMUNICATION 
CHECK (COMMUNICATION >= 0 AND COMMUNICATION <= 100);

ALTER TABLE COLLEAGE_EVAL 
ADD CONSTRAINT COLLEAGE_EVAL_CK_PROBLEM_SOLVE
CHECK (PROBLEM_SOLVE >= 0 AND PROBLEM_SOLVE <= 100);

ALTER TABLE COLLEAGE_EVAL 
ADD CONSTRAINT COL_EVAL_CK_RESP
CHECK (RESPONSIBILITY >= 0 AND RESPONSIBILITY <= 100);

-- 성과지표
ALTER TABLE KPI 
ADD CONSTRAINT FK_KPI_TO_EMPLOYEE 
FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEE(NO);

ALTER TABLE KPI 
ADD CONSTRAINT FK_KPI_TO_PROJECT 
FOREIGN KEY (PROJECT_NO) REFERENCES PROJECT(NO);
-- 제약조건
ALTER TABLE KPI 
ADD CONSTRAINT KPI_CK_FOCUS 
CHECK (FOCUS >=0 AND FOCUS <=100);

-- 출퇴근
ALTER TABLE COMMUTE 
ADD CONSTRAINT FK_COMMUTE_TO_EMPLOYEE 
FOREIGN KEY (EMP_NO) 
REFERENCES EMPLOYEE(NO);

-- 건의게시판
ALTER TABLE TENDINOUS
ADD CONSTRAINT FK_TENDINOUS_TO_EMPLOYEE 
FOREIGN KEY (WRITER_NO) 
REFERENCES EMPLOYEE(NO);

-- 자유게시판
ALTER TABLE FREE_BOARD 
ADD CONSTRAINT FK_FREE_BOARD_TO_EMPLOYEE
FOREIGN KEY (WRITER_NO) 
REFERENCES EMPLOYEE(NO);

-- 건의게시판 댓글
ALTER TABLE TENDINOUS_REVIEW 
ADD CONSTRAINT FK_REVIEW_TO_TENDINOUS 
FOREIGN KEY (NO2) 
REFERENCES TENDINOUS(NO);

ALTER TABLE TENDINOUS_REVIEW
ADD CONSTRAINT FK_REVIEW_TO_EMP01
FOREIGN KEY (WRITER_NO) 
REFERENCES EMPLOYEE(NO);

-- 자유게시판 댓글
ALTER TABLE FREE_BOARD_REVIEW 
ADD CONSTRAINT FK_REVIEW_TO_FREE_BOARD 
FOREIGN KEY (NO2) 
REFERENCES FREE_BOARD(NO);

ALTER TABLE FREE_BOARD_REVIEW 
ADD CONSTRAINT FK_REVIEW_TO_EMP02
FOREIGN KEY (WRITER_NO) 
REFERENCES EMPLOYEE(NO);

-- 공지게시판
ALTER TABLE NOTICE_BOARD
ADD CONSTRAINT FK_NOTICE_BOARD_TO_EMPLOYEE
FOREIGN KEY (WRITER_NO) 
REFERENCES EMPLOYEE(NO);

--PROJECT(프로젝트 정보)
ALTER TABLE PROJECT
ADD CONSTRAINT PROJECT_CODE_FK
FOREIGN KEY(CODE) REFERENCES DEPARTMENT(CODE);

ALTER TABLE PROJECT 
ADD CONSTRAINT PROJECT_EMP_NO_FK
FOREIGN KEY(EMP_NO) REFERENCES EMPLOYEE(NO);

ALTER TABLE PROJECT
ADD CONSTRAINT PROJECT_STATE_A_NO_FK
FOREIGN KEY(STATE_A_NO) REFERENCES STATE_A(NO);

--PROJECT-MANAGER(프로젝트담당자)
ALTER TABLE PROJECT_MANAGER 
ADD CONSTRAINT PROJECT_MANAGER_PRO_NO_FK
FOREIGN KEY(PRO_NO) REFERENCES PROJECT(NO);

ALTER TABLE PROJECT_MANAGER 
ADD CONSTRAINT PROJECT_MANAGER_EMP_NO_FK
FOREIGN KEY(EMP_NO) REFERENCES EMPLOYEE(NO);

--CONFERENCE_RECORD(회의기록)
ALTER TABLE CONFERENCE_RECORD
ADD CONSTRAINT CONFERENCE_RECORD_PRJ_NO_FK
FOREIGN KEY(PRJ_NO) REFERENCES PROJECT(NO);

--PROJECT_WORK(프로젝트일정)
ALTER TABLE PROJECT_WORK
ADD CONSTRAINT PROJECT_WORK_NO2_FK
FOREIGN KEY(NO2) REFERENCES PROJECT(NO);

ALTER TABLE PROJECT_WORK
ADD CONSTRAINT PROJECT_WORK_STATE_B_NO_FK
FOREIGN KEY(STATE_B_NO) REFERENCES STATE_B(NO);

ALTER TABLE PROJECT_WORK
ADD CONSTRAINT PROJECT_WORK_TYPE_NO_FK
FOREIGN KEY(TYPE_NO) REFERENCES WORK_TYPE(NO);

--PERSONAL_WORK(기타일정)
ALTER TABLE PERSONAL_WORK
ADD CONSTRAINT PERSONAL_WORK_NO2_FK
FOREIGN KEY(NO2) REFERENCES EMPLOYEE(NO);

ALTER TABLE PERSONAL_WORK
ADD CONSTRAINT PERSONAL_WORK_STATE_B_NO_FK
FOREIGN KEY(STATE_B_NO) REFERENCES STATE_B(NO);

ALTER TABLE PERSONAL_WORK
ADD CONSTRAINT PERSONAL_WORK_TYPE_NO_FK
FOREIGN KEY(TYPE_NO) REFERENCES WORK_TYPE(NO);

--메시지
ALTER TABLE MESSAGE
ADD CONSTRAINT FK_MESSAGE_SENDER
FOREIGN KEY (SENDER)
REFERENCES EMPLOYEE(NO);

ALTER TABLE MESSAGE
ADD CONSTRAINT FK_MESSAGE_RECEIVER
FOREIGN KEY (RECEIVER)
REFERENCES EMPLOYEE(NO);

COMMIT;
