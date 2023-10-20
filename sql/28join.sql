USE w3schools;
SELECT *FROM products;
SELECT *FROM categories;

-- chias 상품의 카테고리명은?
SELECT CategoryID FROM products
WHERE ProductName = 'chais';

SELECT CategoryName FROM categories
WHERE CategoryID =1;

-- JOIN : 두 개의 테이블 결합
SELECT *
FROM categories,products;

SELECT *
FROM categories JOIN products;

SELECT COUNT(*)
FROM categories JOIN products;

SELECT COUNT(*)
FROM categories; -- 8
SELECT COUNT(*)
FROM products; -- 77

--
CREATE TABLE table_a(
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(20),
    category_id INT
);
CREATE TABLE table_b(
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(20)
);
INSERT INTO table_b(category_name)
VALUES ('음료수'),('반찬');
INSERT INTO table_a(product_name, category_id)
VALUES ('콜라',1),
       ('사이다',1),
       ('제육',2),
       ('돈까스',2),
       ('두부',2);

SELECT *
FROM table_a JOIN table_b;

-- 두 테이블을 결합하면
-- 조회된 레코드 수는 A테이블 row * B테이블 row
-- 컬럼 수는 A테이블 열 + B테이블 열
SELECT *FROM table_a;
SELECT *
FROM table_a JOIN table_b
WHERE product_name='콜라' -- 컬럼명이 하나의 테이블에만 있을때 테이블명 생략 가능
AND table_a.category_id=table_b.category_id; -- 같은 컬럼명이 여러테이블에 있다면 테이블명 작성

SELECT *
FROM table_a JOIN table_b
ON table_a.category_id = table_b.category_id -- join 조건
WHERE product_name='콜라';

SELECT ProductID,ProductName,CategoryName
FROM products AS p JOIN categories c
ON p.CategoryID=c.CategoryID
WHERE ProductName='chais';

-- chias 상품의 공급자명, 전화번호
SELECT SupplierName,Phone
FROM suppliers JOIN products
ON suppliers.SupplierID=products.SupplierID
WHERE ProductName='chais';
-- 1996년 7월 4일에 주문한 고객명(customer,orders)
SELECT CustomerName
FROM customers JOIN orders
ON customers.CustomerID=orders.CustomerID
WHERE OrderDate='19960704';
-- 1996년 7월 8일에 주문을 담당한 직원명(employees, orders)
SELECT LastName,FirstName
FROM employees JOIN orders
ON employees.EmployeeID=orders.EmployeeID
WHERE OrderDate = '19960708';

SELECT *FROM orders WHERE OrderDate= '1996-07-08';
SELECT *FROM employees;

SELECT *FROM products;

-- 3개 테이블 조회
SELECT COUNT(*)
FROM products,suppliers,categories; -- 17864

SELECT p.ProductName, s.SupplierName, s.Phone, c.CategoryName
FROM products p
    JOIN suppliers s
        ON p.SupplierID=s.SupplierID
    JOIN categories c
       ON p.CategoryID=c.CategoryID
WHERE p.ProductName = 'chais';

-- 예) 'Chang'상품의 공급자명,카테고리명 조회
SELECT ProductName,SupplierName,CategoryName
FROM products
    JOIN suppliers
        ON products.SupplierID = suppliers.SupplierID
    JOIN categories
        ON products.CategoryID = categories.CategoryID
WHERE ProductName = 'chang';
-- 예) 1996년 7월 9일에 주문한 고객명과 처리한 직원명
SELECT CustomerName, FirstName,LastName
FROM orders JOIN customers
ON orders.CustomerID = customers.CustomerID
JOIN employees
ON orders.EmployeeID = employees.EmployeeID
WHERE OrderDate = '19960709';
-- 예) 1996년 7월 9일에 주문한 상품명(orders, orderDetails, products)
SELECT ProductName
FROM orderdetails JOIN orders
ON orderdetails.OrderID = orders.OrderID
JOIN products
ON orderdetails.ProductID=products.ProductID
WHERE OrderDate = '19960709';

-- 예) 'chang' 상품이 주문된 날짜들
SELECT p.ProductName, o.OrderDate, c.CustomerName,
       CONCAT(LastName,' ',FirstName) FullName
FROM products p JOIN orderdetails od
ON p.ProductID = od.ProductID
JOIN orders o
ON od.OrderID=o.OrderID
JOIN customers c
ON o.CustomerID = c.CustomerID
JOIN employees e
ON o.EmployeeID=e.EmployeeID
WHERE ProductName='chang';






















