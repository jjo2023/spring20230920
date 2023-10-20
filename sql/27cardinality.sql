USE mydb1;
-- 1:n

-- 교재 347p
-- 1:1
CREATE TABLE my_table37_employee(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    birth DATE
);
CREATE TABLE my_table38_employee_onfo(
    id INT REFERENCES my_table37_employee(id),
    salary INT,
    address VARCHAR(20)
);

-- 교재(350p)
-- n:m (다 대 다)
-- 1:n, 1:m인 중간 테이블이 생성되어야 한다
CREATE TABLE my_table39_person(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20)
);

CREATE TABLE my_table40_skill(
    id INT PRIMARY KEY AUTO_INCREMENT,
    skill_name VARCHAR(20)

);

CREATE TABLE my_table41_person_skill(
  person_id INT REFERENCES my_table39_person(id),
  skill_id INT  REFERENCES my_table40_skill(id),
  PRIMARY KEY (person_id,skill_id)
);

SELECT *FROM my_table41_person_skill;















