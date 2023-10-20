SELECT *FROM customers;
SELECT *FROM customers WHERE Country = 'germany';
SELECT CustomerName,Country FROM customers WHERE NOT Country = 'germany';

-- 예) 1번 카테고리에 속하지 않는 상품들 조회
SELECT *FROM products WHERE NOT CategoryID = 1;

-- 예) japan에 있지 않는 공급자들 조회
SELECT *FROM suppliers WHERE NOT Country = 'japan';

