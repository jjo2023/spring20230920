SELECT *
FROM employees
ORDER BY BirthDate;
SELECT *
FROM employees
ORDER BY 4;
SELECT EmployeeID,LastName,BirthDate
FROM employees
ORDER BY BirthDate;
SELECT EmployeeID,LastName,BirthDate
FROM employees
ORDER BY 3;
SELECT *FROM products;
SELECT *FROM products ORDER BY CategoryID,Price;
SELECT *FROM products ORDER BY CategoryID DESC; -- 내림차순
SELECT *FROM products ORDER BY CategoryID DESC ,Price DESC ;

-- 예) 고객 국가명 오름차순으로 조회
SELECT *FROM customers ORDER BY Country;
-- 예) 가장 비싼 상품이 먼저 조회되도록
SELECT *FROM products ORDER BY Price DESC ;
-- 예) 가장 어린 직원이 먼저 조회되도록
SELECT *FROM employees ORDER BY BirthDate DESC ;
