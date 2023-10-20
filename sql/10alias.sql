SELECT *FROM employees;
SELECT EmployeeID,LastName FROM employees;

-- AS : 컬럼명(테이블명) 변경
SELECT EmployeeID AS id,
       LastName AS name
FROM employees;


-- AS 생략 가능, backtick ``으로 특수문자나 키워드 띄워쓰기 가능
SELECT EmployeeID,
       CONCAT(FirstName,' ',LastName) `full Name`
FROM employees;

-- 예) 공급자의 이름(supplierName), 주소(address, city, country), 전화번호 조회
SELECT SupplierName,
       CONCAT(Address,City,Country) address,
       Phone `phone number`
FROM suppliers;

SELECT *FROM products;
SELECT *FROM categories;
SELECT p.ProductName,
       c.CategoryName
       FROM products AS p JOIN categories AS c -- AS 생략 가능
           ON p.CategoryID=c.CategoryID;













