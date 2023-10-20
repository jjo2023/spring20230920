-- 수형 (정수, 실수)
-- 문자열
-- 날짜 (날짜시간)

-- 정수 : int
CREATE TABLE my_table3
(
    col1 int
);
INSERT INTO my_table3(col1)
    VALUE (2372832);
INSERT INTO my_table3(col1)
    VALUE ('12300');
INSERT INTO my_table3(col1)
    VALUE ('two'); -- 문자라 안됨

SELECT *FROM my_table3;

-- 실수 : DEC
CREATE TABLE my_table4
(
    col1 DEC -- DEC(10,0)
);
INSERT INTO my_table4 (col1)
    VALUE (3.14);

SELECT *FROM my_table4;

CREATE TABLE my_table5
(
    col1 DEC(5, 3) -- 총길이 5, 소숫점 이하 3
);
INSERT INTO my_table5 (col1)
    VALUE (10.123);
INSERT INTO my_table5 (col1)
    VALUE (123.345); -- 총길이가 6이라 실행안됨

SELECT *FROM my_table5;

-- 예) my_table66 만들기 (6은 이미 만듬ㅠ)
-- age 컬럼 정수 타입
-- score 컬럼 총길이 7 소숫점 이하 길이 2인 숫자형
CREATE TABLE my_table66
(
    age   int,
    score dec(7, 2)
);
INSERT INTO my_table66
VALUE (22,123.234);

SELECT *FROM my_table66;

-- 문자열 : VARCHAR
CREATE TABLE my_table7
(
    col1 VARCHAR(1),
    col2 VARCHAR(2),
    col3 VARCHAR(16000)
);
CREATE TABLE my_table8
(
    col1 VARCHAR(8000),
    col2 VARCHAR(8000)
);
INSERT INTO my_table7(col1)
VALUE ('가');
INSERT INTO my_table7(col2)
    VALUE ('a');
INSERT INTO my_table7(col2)
    VALUE ('aa');
INSERT INTO my_table7(col2)
    VALUE ('😽😽');

SELECT *FROM my_table7;

-- 예) my_table9 만들기
-- name 문자열 최대길이 100자
-- 주소 문자열 최대길이 200자
-- 전화번호 문자열 최대길이 100자

CREATE TABLE my_table9(
    name VARCHAR(100),
    address VARCHAR(200),
    phone VARCHAR(100)
);
INSERT INTO my_table9
VALUE ('쪼쪼😽😽','신촌','010');
SELECT *FROM my_table9;

-- 날짜
CREATE TABLE my_table10(
    col1 DATE
);
INSERT INTO my_table10
VALUE ('20000101');

SELECT *FROM my_table10;

-- 날짜 시간 : DATETIME
CREATE TABLE my_table11(
    col1 DATETIME
);
INSERT INTO my_table11
VALUE ('2002-01-01 14:12:34');

INSERT INTO my_table11
VALUE (now());

SELECT *FROM my_table11;

SELECT now();



















