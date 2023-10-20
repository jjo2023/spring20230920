package com.example.spring20230920.domain;

import lombok.Data;
import lombok.Getter;

@Data
public class MyDto35 {
    private String id;

    @Getter
    private String uRL;



    // 프로퍼티 명 : id
    public String getId() {
        return id;
    }
}
