package com.example.spring20230920.domain;

import lombok.Data;
import org.apache.ibatis.annotations.Insert;

import java.util.List;
import java.util.Map;

@Data
public class MyDto44 {
    private String name;
    private List<String> email;
    private Map<String,Object> home;
    private Double price;
    private Double weight;
    private Boolean married;


}
