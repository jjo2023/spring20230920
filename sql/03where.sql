SELECT CustomerName,Address,City,Country FROM customers;
SELECT *FROM customers;
-- WHERE : 레코드 선택(솎아내기)
SELECT *FROM customers WHERE CustomerID=1;
SELECT *FROM customers WHERE CustomerID=2;
SELECT *FROM customers WHERE Country='USA';
SELECT *FROM customers WHERE Country='MEXICO';
SELECT *FROM customers WHERE Country='mexico'; -- 대소문자 구분 안함
SELECT *FROM customers WHERE Country='FRANCE'; -- 문자열은 ''
SELECT *FROM customers WHERE CustomerID=3; -- 숫자는 따옴표 없이
SELECT *FROM customers WHERE CustomerID='3'; -- 근데 써도 되긴 됨..

-- 예) 영국에 사는 고객들 조회
SELECT *FROM customers WHERE Country='UK';
-- 예) 1번 카테고리에 속한 상품들 조회
SELECT *FROM products WHERE CategoryID=1;
-- 예) OSAKA에 있는 공급자들 조회
SELECT *FROM suppliers WHERE City='OSAKA';

-- 미국에 사는 고객의 이름들 조회
SELECT CustomerName FROM customers WHERE Country = 'USA';
-- 영국에 사는 고객의 이름과, 고객번호 조회
SELECT CustomerID,CustomerName FROM customers WHERE Country = 'UK';

-- 예) 2번 카테고리에 있는 상품명과 가격 조회
SELECT ProductName FROM products WHERE CategoryID=2;
-- 예) 일본에 있는 공급자의 이름과 전화번호 조회
SELECT SupplierName,Phone FROM suppliers WHERE Country='JAPAN';
-- 예) 2번 카테고리의 이름 조회
SELECT CategoryName FROM categories WHERE CategoryID=2;

SELECT CustomerID,CustomerName,City,Country
FROM customers;

SELECT ProductID,ProductName,Unit,Price
FROM products;

SELECT ProductID, ProductName,Unit,Price
FROM products;





