package com.example.spring20230920.domain;

import lombok.Data;

@Data
public class MyDto19 {
private Integer employeeId;
private String lastName;
private String firstName;
// 대소문자 구분 안함 but.. lowerCamelCase 따름
}
