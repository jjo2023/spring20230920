-- SELECT :데이터 조회(읽기,검색,가져오기)
SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.employees;
SELECT *FROM w3schools.products;

SELECT *FROM customers;
SELECT *FROM categories;
SELECT *FROM orders;
SELECT *FROM shippers;
SELECT *FROM suppliers;
SELECT *FROM orderdetails;

--
SELECT CustomerName -- coolumn명 나열
FROM customers -- table명 나열
;
SELECT CustomerID,CustomerName
FROM customers;
SELECT CustomerID,CustomerName,Country
FROM customers;


SELECT * -- 전체 컬럼
FROM customers;

-- 예1) 직원(employees)의  lastname,firstname,birthdate 조회
-- 예2) 상품(product)의 이름(productname), 단위(unit), 가격(price) 조회
-- 예3) 공급자(suppliers)의 이름(suppliername), 주소(address), 국가(country) 조회

SELECT LastName,FirstName,BirthDate FROM employees;
SELECT ProductName,Unit,Price FROM products;
SELECT SupplierName,Address,Country FROM suppliers;


-- 고객 테이블의 국가 컬럼 조회
SELECT Country FROM customers;

-- DISTINCT 중복 제거
SELECT DISTINCT Country FROM customers;
SELECT City,Country FROM customers;
SELECT DISTINCT City,Country FROM customers;

-- COUNT : 행(ROW,RECORD)의 수
SELECT COUNT(Country)FROM customers;
SELECT COUNT(DISTINCT Country)FROM customers;

-- 전체 행의  수
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM orders;

-- 예) 공급자들이 있는 나라 수
SELECT COUNT(DISTINCT Country) FROM suppliers; -- 중복 제거!
-- 예) 주문(ORDER) 건수
SELECT COUNT(*)FROM orders;
-- 예) 몇 개의 카테고리가 있는지 조회
SELECT COUNT(*)FROM categories;
-- 예) 고객이 있는 도시의 수
SELECT COUNT(DISTINCT City)FROM customers; -- 중복 제거!














