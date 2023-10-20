USE mydb1;
-- PRIMARY KEY (주키, 기본키, pk)
CREATE TABLE my_table27(
    id INT PRIMARY KEY,
    name VARCHAR(20)
);
CREATE TABLE my_table28(
 id INT,
 name VARCHAR(10),
 PRIMARY KEY (id)
);
CREATE TABLE my_table29(
 name VARCHAR(10),
 birth DATE,
 PRIMARY KEY (name,birth)
);
CREATE TABLE my_table30(
 id INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(10)
);

INSERT INTO my_table30(name)
VALUE ('son');
INSERT INTO my_table30(name)
    VALUE ('lee');
INSERT INTO my_table30(name)
    VALUE ('kim');

DELETE FROM my_table30
WHERE id =4; -- id = 4 삭제 후 데이터 새로 추가하면 4가 다시 생기는게 아니라 다음 id 생성됨...!
             -- PK값은 중복 생성 안됨!
INSERT INTO my_table30(name)
VALUE ('JJO');

SELECT *FROM my_table30;
