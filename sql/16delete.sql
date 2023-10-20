-- DELETE FROM tableName WHERE 조건
-- !! WHERE 절 꼭 작성 !! --

SELECT *FROM employees WHERE LastName = '손';
DELETE FROM employees WHERE LastName = '손';

SELECT * FROM employees WHERE FirstName = '민재';
DELETE FROM employees WHERE FirstName = '민재';

DELETE FROM employees;


-- 예) 직원 테이블에 오늘 입력한 레코드들 지우기
SELECT *FROM employees;
DELETE FROM employees WHERE EmployeeID >9;
-- 예) 상품테이블에 오늘 입력한 레코드들 지우기
SELECT *FROM products WHERE ProductID > 77;
DELETE FROM products WHERE ProductID > 77;

SELECT *FROM products;