-------sej 데베 더미-----------


---상태
INSERT INTO STATE_A (NO, CONTENT)
VALUES (1, '진행 중');
INSERT INTO STATE_A (NO, CONTENT)
VALUES (2, '중지');
INSERT INTO STATE_A (NO, CONTENT)
VALUES (3, '해산');

INSERT INTO STATE_B (NO, CONTENT)
VALUES (1, '진행');
INSERT INTO STATE_B (NO, CONTENT)
VALUES (2, '중단');
INSERT INTO STATE_B (NO, CONTENT)
VALUES (3, '완료');
--일정 타입

INSERT INTO WORK_TYPE (NO, NAME)
VALUES (1, '플젝 일정');
INSERT INTO WORK_TYPE (NO, NAME)
VALUES (2, '팀 일정');
INSERT INTO WORK_TYPE (NO, NAME)
VALUES (3, '개인 일정');
---------------------------------------------------
--플젝 정보


--연구개발부서
--차세대 항암제 신약개발
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 30, 13, 1, '차세대 항암제 효능 평가', '후보물질 안전성 검사', '2024-06-01');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 30, 13, 1, '단백질 분해 기술 도입', '단백질 표적 실험','2024-06-01');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 30, 13, 1, '임상 1상 승인 실험', '후보물질 항암 효과 확인 실험', '2024-06-01');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 30, 13, 1, '면역항암제 안전성 승인 실험', '후보물질 임상 1상 신청', '2024-06-02');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 30, 13, 1, '차세대 항암제 안전성 개선', '항종양 효능 극대화', '2024-06-02');



INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 30, 14, 1, '진통제 후보물질 탐색', '분자 생성 AI로 분자구조 합성', '2024-06-02');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 30, 14, 1, '헐우병 치료 신약 후보물질 탐색', '후보물질 단백질 합성 실험', '2024-06-03');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 30, 14, 1, '바이오 선도모델 구축', '의료로봇 개발', '2024-06-03');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 30, 14, 1, '세포유전자 신약개발 탐색', '품질관리 부분 연구', '2024-06-03');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 30, 14, 1, '진통제 후보물질 탐색', '분자 생성 AI로 분자구조 합성', '2024-06-03');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 30, 14, 1, '신약 특허 신청', '임상실험 결과 보고서 작성', SYSDATE);
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 30, 13, 1, '신약개발 보고서 작성', '실험 자료 정리 및 도구 세척', '2024-06-04');

--인사부
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 20, 11, 1, '하반기 조직개편', '임원급 사원 조직 개편', '2024-06-04');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO,  TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 20, 11, 1, '인사 실무 교육 진행', '노동관련 법정 개정부분 설명', '2024-06-05');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO,  TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 20, 11, 1, '사직서 수리', '사직서 제출 관련 법률관계 정리',   '2024-06-05');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 20, 11, 1, '계약 만료 사원 정리', '퇴직금 정산',  '2024-06-05');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 20, 11, 1, '신입사원 채용', '채용 공모서 작성',  '2024-06-06');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 20, 11, 1, '실무 교육 자료 제작', '템플릿 제작 및 자료 준비',  '2024-06-06');

INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 20, 12, 1, '굿즈 제공 업체 선정', '업체 3곳 선정',  '2024-06-06');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 20, 12, 1, '행사 포스터 제작', '레퍼런스 수집',  '2024-06-06');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 20, 12, 1, '간식 제공 업체 선정', '인터넷 서칭 후 업체 선정',  '2024-06-08');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 20, 12, 1, '행사 홍보', '사내 게시판에 홍보글 작성', '2024-06-08');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 20, 12, 1, '폐플라스틱 재활용 해양생물 뱃지 제작', '폐플라수틱 수거함 제작', '2024-06-08');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 20, 12, 1, '폐건전지 수거함 제작', '제작을 위한 재료 구매', '2024-06-09');

--영업부
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 40, 15, 1, '국내 독점 판매 계약 체결', '수도권 대학병원 3곳과 독점 판매 계약 체결', '2024-06-09');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 40, 15, 1, '미국 제약사와 파트너링 체결', '유통허가 절차 협력 계약', '2024-06-09');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 40, 15, 1, '차세대 항암제 공동연구 계약 체결', '독일 제약사와 공동연구 시작', '2024-06-09');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 40, 15, 1, '지방거점 병원 독점 판매 계약 체결', '지방거점 대학병원 5곳과 독점 판매 계약 체결', '2024-06-09');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 40, 15, 1, '인도네시아 제약사와 허가 절차 및 유통 계약 체결', '현지 시장 조사',  '2024-06-09');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 40, 15, 1, '독일 제약사와 허가 절차 및 유통 계약 체결', '허가 절차 승인을 위한 보고서 작성', '2024-06-10');

INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 40, 16, 1, '자사 온라인몰 구축', '상표 출원 준비', '2024-06-10');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 40, 16, 1, '이커머스 플랫폼 판매 계약 체결', '판매 물량 확보 및 유통라인 정리', '2024-06-10');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 40, 16, 1, '개발 외주 업체 선정', '후보 업체 미팅', '2024-06-11');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 40, 16, 1, '이커머스 플랫폼 판매 계약 체결', '판매 계약 체결 및 유통라인 정리', '2024-06-11');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 40, 16, 1, '세무컨설팅 서비스 진행', '세무사 섭외', '2024-06-11');
INSERT INTO PROJECT (NO, CODE, EMP_NO, STATE_A_NO, TITLE, CONTENT, START_DATE)
VALUES (SEQ_PROJECT.NEXTVAL, 40, 16, 1, '쉼터 운영', '간식 보충 및 정리 정돈', '2024-06-12');

--프로젝트 담당자
INSERT INTO PROJECT_MANAGER (NO, PRO_NO, EMP_NO)
VALUES (SEQ_PROJECT_MANAGER.NEXTVAL, 1, 43 );
INSERT INTO PROJECT_MANAGER (NO, PRO_NO, EMP_NO)
VALUES (SEQ_PROJECT_MANAGER.NEXTVAL, 1, 23 );
INSERT INTO PROJECT_MANAGER (NO, PRO_NO, EMP_NO)
VALUES (SEQ_PROJECT_MANAGER.NEXTVAL, 1, 54);

INSERT INTO PROJECT_MANAGER (NO, PRO_NO, EMP_NO)
VALUES (SEQ_PROJECT_MANAGER.NEXTVAL, 2, 43 );
INSERT INTO PROJECT_MANAGER (NO, PRO_NO, EMP_NO)
VALUES (SEQ_PROJECT_MANAGER.NEXTVAL, 2, 33 );
INSERT INTO PROJECT_MANAGER (NO, PRO_NO, EMP_NO)
VALUES (SEQ_PROJECT_MANAGER.NEXTVAL, 2, 63 );
---

INSERT INTO PROJECT_MANAGER (NO, PRO_NO, EMP_NO)
VALUES (SEQ_PROJECT_MANAGER.NEXTVAL, 3, 33 );
INSERT INTO PROJECT_MANAGER (NO, PRO_NO, EMP_NO)
VALUES (SEQ_PROJECT_MANAGER.NEXTVAL, 3, 53 );
INSERT INTO PROJECT_MANAGER (NO, PRO_NO, EMP_NO)
VALUES (SEQ_PROJECT_MANAGER.NEXTVAL, 3, 63 );

INSERT INTO PROJECT_MANAGER (NO, PRO_NO, EMP_NO)
VALUES (SEQ_PROJECT_MANAGER.NEXTVAL, 4, 53 );
INSERT INTO PROJECT_MANAGER (NO, PRO_NO, EMP_NO)
VALUES (SEQ_PROJECT_MANAGER.NEXTVAL, 4, 23 );


--플젝 일정
INSERT INTO PROJECT_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PROJECT_WORK.NEXTVAL, 1, 1, 1, SYSDATE, '변호사미팅', '법무적 차원의 자문을 구하기로 함.');
INSERT INTO PROJECT_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PROJECT_WORK.NEXTVAL, 2, 2, 1, SYSDATE, '교육준비', '자료수집 및 발표물 제작하기로 함.');
INSERT INTO PROJECT_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PROJECT_WORK.NEXTVAL, 3, 1, 1, SYSDATE, '학회참가', '신약발표 및 투자유치를 위해 참가하기로 함.');
INSERT INTO PROJECT_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PROJECT_WORK.NEXTVAL, 4, 2, 1, SYSDATE, '임상실험', '후보물질 안정성과 유효성 검사를 진행하기로 함.');
INSERT INTO PROJECT_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PROJECT_WORK.NEXTVAL, 5, 1, 1, SYSDATE, '파트너링 미팅', '파트너링 계약체결을 완수하기로 함.');
INSERT INTO PROJECT_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PROJECT_WORK.NEXTVAL, 6, 2, 1, SYSDATE, '홍보물제작', '홍보리플렛 디자인을 구상하기로 함.');


--기타일정
INSERT INTO PERSONAL_WORK (NO, NO2, STATE_B_NO, TYPE_NO, START_DATE, TITLE ,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 4, 3, 3, SYSDATE, '부장급회의', '중앙회의실에서 실적발표가 있음.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 5, 3, 3, SYSDATE, '부장급회의', '중앙회의실에서 실적발표가 있음.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 6, 3, 3, SYSDATE, '부장급회의', '중앙회의실에서 실적발표가 있음.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 7, 3, 3, SYSDATE, '부장급회의', '중앙회의실에서 실적발표가 있음.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 8, 3, 3, SYSDATE, '부장급회의', '중앙회의실에서 실적발표가 있음.');

INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 1, 1, 3, SYSDATE, '해외출장', '미국 화이자 방문.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 2, 2, 3, SYSDATE, '휴가', '14일간 휴가.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 3, 3, 3, SYSDATE, '휴가', '14일간 휴가');


INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 13, 2, 2, SYSDATE, '동료평가', '사내 그룹웨어에서 동료평가 진행하기.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 14, 2, 2, SYSDATE, '동료평가', '사내 그룹웨어에서 동료평가 진행하기.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 23, 2, 2, SYSDATE, '동료평가', '사내 그룹웨어에서 동료평가 진행하기.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 24, 2, 2, SYSDATE, '동료평가', '사내 그룹웨어에서 동료평가 진행하기.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 33, 2, 2, SYSDATE, '동료평가', '사내 그룹웨어에서 동료평가 진행하기.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 34, 2, 2, SYSDATE, '동료평가', '사내 그룹웨어에서 동료평가 진행하기.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 43, 2, 2, SYSDATE, '동료평가', '사내 그룹웨어에서 동료평가 진행하기.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 44, 2, 2, SYSDATE, '동료평가', '사내 그룹웨어에서 동료평가 진행하기.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 53, 2, 2, SYSDATE, '동료평가', '사내 그룹웨어에서 동료평가 진행하기.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 54, 2, 2, SYSDATE, '동료평가', '사내 그룹웨어에서 동료평가 진행하기.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 63, 2, 2, SYSDATE, '동료평가', '사내 그룹웨어에서 동료평가 진행하기.');
INSERT INTO PERSONAL_WORK (NO,NO2,STATE_B_NO,TYPE_NO,START_DATE,TITLE,CONTENT)
VALUES (SEQ_PERSONAL_WORK.NEXTVAL, 64, 2, 2, SYSDATE, '동료평가', '사내 그룹웨어에서 동료평가 진행하기.');




--회의록
INSERT INTO CONFERENCE_RECORD (NO,PRJ_NO,ENL_DATE, TITLE, CONTENT)
VALUES (SEQ_CONFERENCE_RECORD.NEXTVAL,1, '2024-06-02','정리해고 진행과정 회의','저성과자들 리스트를 만들어서 이번 구조조정 때 정리해고 진행하기로 함.');
INSERT INTO CONFERENCE_RECORD (NO,PRJ_NO,ENL_DATE, TITLE, CONTENT)
VALUES (SEQ_CONFERENCE_RECORD.NEXTVAL,2, '2024-06-06','안전교육준비 회의','안전교육을 위해 CPR 교육자료를 만들기로 함. 인근 소방서에 교육요청 예정.');
INSERT INTO CONFERENCE_RECORD (NO,PRJ_NO,ENL_DATE, TITLE, CONTENT)
VALUES (SEQ_CONFERENCE_RECORD.NEXTVAL,3, '2024-06-08','학회준비 회의','논문 요약본 준비. 전시자료 제작은 케이에이치제작소에 의뢰를 하기로 결정.');
INSERT INTO CONFERENCE_RECORD (NO,PRJ_NO,ENL_DATE, TITLE, CONTENT)
VALUES (SEQ_CONFERENCE_RECORD.NEXTVAL,4, '2024-06-09','임상실험준비 회의','알바모집을 통해 비교군과 대조군 모집하기로 함. 보상액은 최저시급의 4배로 결정.');
INSERT INTO CONFERENCE_RECORD (NO,PRJ_NO,ENL_DATE, TITLE, CONTENT)
VALUES (SEQ_CONFERENCE_RECORD.NEXTVAL,5, '2024-06-05','계약전략 회의','이번 신약개발에 필요한 실험결과를 교환하는 계약을 체결해야함.');
INSERT INTO CONFERENCE_RECORD (NO,PRJ_NO,ENL_DATE, TITLE, CONTENT)
VALUES (SEQ_CONFERENCE_RECORD.NEXTVAL,6, '2024-06-12','디자인 회의','신뢰감을 주는 파란색을 메인컬러로 결정함.');

--메시지
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 2, '보냄제목1', '보냄내용1', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 3, '보냄제목2', '보냄내용2', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 4, '보냄제목3', '보냄내용3', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 5, '보냄제목4', '보냄내용4', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 6, '보냄제목5', '보냄내용5', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 7, '보냄제목6', '보냄내용6', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 8, '보냄제목7', '보냄내용7', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 9, '보냄제목8', '보냄내용8', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 10, '보냄제목9', '보냄내용9', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 11, '보냄제목10', '보냄내용10', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 2, 1, '받음제목1', '받음내용1', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 3, 1, '받음제목2', '받음내용2', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 4, 1, '받음제목3', '받음내용3', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 5, 1, '받음제목4', '받음내용4', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 6, 1, '받음제목5', '받음내용5', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 7, 1, '받음제목6', '받음내용6', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 8, 1, '받음제목7', '받음내용7', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 9, 1, '받음제목8', '받음내용8', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 10, 1, '받음제목9', '받음내용9', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 11, 1, '받음제목10', '받음내용10', SYSTIMESTAMP);


--메시지
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 2, '보냄제목1', '보냄내용1', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 3, '보냄제목2', '보냄내용2', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 4, '보냄제목3', '보냄내용3', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 5, '보냄제목4', '보냄내용4', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 6, '보냄제목5', '보냄내용5', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 7, '보냄제목6', '보냄내용6', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 8, '보냄제목7', '보냄내용7', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 9, '보냄제목8', '보냄내용8', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 10, '보냄제목9', '보냄내용9', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 1, 11, '보냄제목10', '보냄내용10', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 2, 1, '받음제목1', '받음내용1', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 3, 1, '받음제목2', '받음내용2', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 4, 1, '받음제목3', '받음내용3', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 5, 1, '받음제목4', '받음내용4', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 6, 1, '받음제목5', '받음내용5', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 7, 1, '받음제목6', '받음내용6', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 8, 1, '받음제목7', '받음내용7', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 9, 1, '받음제목8', '받음내용8', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 10, 1, '받음제목9', '받음내용9', SYSTIMESTAMP);
INSERT INTO MESSAGE (NO, SENDER, RECEIVER, TITLE, CONTENT, SEND_TIME)
VALUES (SEQ_MESSAGE.NEXTVAL, 11, 1, '받음제목10', '받음내용10', SYSTIMESTAMP);
--커밋
COMMIT;


