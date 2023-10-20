USE w3schools;

-- ALTER TABLE : 테이블 수정
-- 컬럼 추가, 변경, 삭제
-- NOT NULL, UNIQUE, PRIMARY KEY, DEFAULT, FOREIGN KEY

-- 컬럼 추가
ALTER TABLE products
ADD COLUMN col INT;
ALTER TABLE products
ADD COLUMN col2 VARCHAR(10);
DESC products;

ALTER TABLE products
ADD COLUMN col3 VARCHAR(10) AFTER ProductName;
ALTER TABLE products
ADD COLUMN col4 VARCHAR(10) FIRST ;
DESC products;

ALTER TABLE products
ADD COLUMN col5 INT
    NOT NULL DEFAULT 1 REFERENCES employees(EmployeeID);

-- 예) 직원 테이블에 salray 컬럼 마지막에 추가
-- data type은  dec(10,2), null 허용 안하고 기본값은 0.00
ALTER TABLE employees
ADD COLUMN salary DEC(10,2) NOT NULL DEFAULT 0.00;

-- 컬럼 삭제
ALTER TABLE products
DROP COLUMN col;

-- 예) products 테이블에서 col2 컬럼 삭제
ALTER TABLE products
    DROP COLUMN col2;

-- 컬럼 변경 (type)
ALTER TABLE products
MODIFY COLUMN col3 INT;

DESC products;

INSERT INTO products(col4)
VALUE ('pizza');

ALTER TABLE products
MODIFY COLUMN col4 VARCHAR(20); -- col4에 VARCHAR값 있어서 타입 변경 안됨!
ALTER TABLE products
MODIFY COLUMN col4 VARCHAR(20); -- 길이를 늘리는건 가능함
ALTER TABLE products
MODIFY COLUMN col4 VARCHAR(3); -- 반면에 길이를 줄이는건 불가






