-- union 합집합

SELECT Country FROM customers;
SELECT Country FROM suppliers;

SELECT Country FROM customers
UNION
SELECT Country FROM suppliers; -- 중복 xx

SELECT Country FROM customers -- 149
UNION ALL
SELECT Country FROM suppliers; -- 29

SELECT CustomerName,Country,City,CustomerID FROM customers
UNION
SELECT SupplierName,Country,City,Address FROM suppliers; -- 열의 갯수 맞아야 함! 타입은 크게..뭐..괜춘..

-- 예) 직원의 lastName과 firstName을 name이라는 하나의 컬럼으로 조회
SELECT LastName name FROM employees
UNION
SELECT FirstName FROM employees;

-- FULL OUTER JOIN
USE mydb1;
SELECT *
FROM my_table44_a a LEFT JOIN my_table45_b b
ON a.col1=b.col1
UNION
SELECT *
FROM my_table44_a a RIGHT JOIN my_table45_b b
ON a.col1=b.col1;

-- LEFT OUTER JOIN
SELECT *
FROM my_table44_a a LEFT JOIN my_table45_b b
ON a.col1=b.col1;

-- RIGHT OUTER JOIN
SELECT *
FROM my_table44_a a RIGHT JOIN my_table45_b b
ON a.col1=b.col1;









