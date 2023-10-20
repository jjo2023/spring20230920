SELECT *FROM products;
SELECT *FROM products WHERE ProductID=3;

UPDATE products
SET ProductName = '아니시 시럽',
    Unit =  '12 박스',
    Price = 36
WHERE ProductID = 3; -- where 꼭 쓸 것 !!!!!!

-- 예) 2번 고객의 이름 수정하기
UPDATE customers
SET CustomerName = '쪼쪼'
WHERE CustomerID =2;
SELECT *FROM customers;

-- 예) 5번 직원의 notes 변경하기
UPDATE employees
SET Notes = '쪼쪼는 귀엽고 예쁘다 후훗😺'
WHERE EmployeeID =5;
SELECT *FROM employees;

-- 예) 1번 공급자의 전화번호, 주소 변경하기
UPDATE suppliers
SET Phone=11111,Address='쪼쪼네 하우스'
WHERE SupplierID = 1;
SELECT *FROM suppliers;

--
SELECT *FROM products
WHERE CategoryID =1;

UPDATE products
SET Price = Price*2
WHERE CategoryID=1;


SELECT *FROM employees;















