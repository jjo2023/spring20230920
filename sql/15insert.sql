-- INSERT INTO tableName (columnName1, columnName2, ...)
-- VALUES (value1, value2, ...)

INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUE (10, '손','흥민','2000-01-01','사진10','epl 득점왕' );

INSERT INTO  employees (EmployeeID, LastName, FirstName, BirthDate, employees.Photo, Notes)
    VALUE(11,'이','강인','2000-02-02','사진','드리블 잘함');

-- 모든 컬럼에 값 넣을 때 컬럼명 나열 생략 가능
INSERT INTO employees
VALUE (12,'김','민재','2000-03-03','사진13','수비잘함');

-- 특정 컬럼에만 값을 넣을 때 컬럼 명 나열 생략하면 안됨
INSERT INTO employees(employeeid, lastname, firstname)
VALUE (13,'박','지성'); -- 나열된 컬럼명과  순서, 갯수가 같아야 함

INSERT INTO employees(EmployeeID,FirstName,LastName)
VALUE (14,'차','범근');

INSERT INTO employees(EmployeeID,FirstName,LastName)
    VALUE (15,'차','범근');

-- 값의 타입에 따라 넣는 방법이 다름
INSERT INTO employees(EmployeeID)
VALUE ('16');
INSERT INTO employees(LastName)
VALUE ('son');
INSERT INTO employees (LastName)
VALUE ('10000'); -- 따옴표 사용 권장
INSERT INTO employees (BirthDate)
VALUE ('2000-01-01');

SELECT *FROM employees ORDER BY EmployeeID DESC;


SELECT *FROM products;

INSERT INTO products (Price)
VALUE (20.10);

INSERT INTO products (Price)
VALUE ('30.33');



-- 예) 80번 상품 입력
INSERT INTO products
VALUE (82,'두부',1,1,'모',30.33);
-- 예) 새 상품 입력
INSERT INTO products(productname, supplierid, categoryid, unit, price)
    VALUE('김치',2,2,'1포기',50.55);


SELECT *FROM products ORDER BY ProductID DESC ;

SELECT *FROM suppliers ORDER BY 1 DESC ;
SELECT *FROM employees ORDER BY 1 DESC ;


SELECT *FROM customers;

















