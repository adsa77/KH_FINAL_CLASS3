INSERT INTO COLLEAGE_EVAL (
                NO
                , EVALUATOR_NO
                , EVALUATEE_NO
                , POTENTIAL
                , COMMUNICATION
                , PROBLEM_SOLVE
                , RESPONSIBILITY
                , START_DATE
                , END_DATE
                , COMPLIMENT
                , DISAPPOINTMENT
                , SUGGESTION
            )
            VALUES (
                SEQ_COLLEAGE_EVAL.NEXTVAL
                , 30
                , 50
                , 30
                , 50
                , 60
                , 20
                , TO_TIMESTAMP('2024-07-08 09:00', 'YYYY-MM-DD HH24:MI')
                , TO_TIMESTAMP('2024-07-14 18:00', 'YYYY-MM-DD HH24:MI')
                , 'Ī���� �� ����'
                , '�ƽ��� �� ����'
                , '�ϰ��� ���� ����'
            );

SELECT 
    C.NO
    , E.NAME AS EVALUATOR_NO
    , M.NAME AS EVALUATEE_NO
    , C.POTENTIAL
    , C.COMMUNICATION
    , C.PROBLEM_SOLVE
    , C.RESPONSIBILITY
    , C.COMPLIMENT
    , C.DISAPPOINTMENT
    , C.SUGGESTION
    , TO_CHAR(C.WRITE_DATE, 'YYYY-MM-DD') AS WRITE_DATE
FROM COLLEAGE_EVAL C
JOIN EMPLOYEE E
ON C.EVALUATOR_NO = E.NO
JOIN EMPLOYEE M
ON C.EVALUATEE_NO = M.NO
ORDER BY C.NO ASC
;

INSERT INTO LEADER_EVAL (
    NO
    , EVALUATOR_NO
    , EVALUATEE_NO
    , COMMUNICATION
    , RESPONSIBILITY
    , JUDGEMENT
    , PROFESSIONALISM
    , START_DATE
    , END_DATE
    , COMPLIMENT
    , DISAPPOINTMENT
    , SUGGESTION
)
VALUES (
    SEQ_LEADER_EVAL.NEXTVAL
    , #{EVALUATOR_NO}
    , #{EVALUATEE_NO}
    , #{COMMUNICATION}
    , #{RESPONSIBILITY}
    , #{JUDGEMENT}
    , #{PROFESSIONALISM}
    , '2024-07-06 09:00'
    , '2024-07-30 18:00'
    , #{COMPLIMENT}
    , #{DISAPPOINTMENT}
    , #{SUGGESTION}
)
;

