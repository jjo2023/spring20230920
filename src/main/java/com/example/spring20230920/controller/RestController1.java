package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao10;
import com.example.spring20230920.domain.MyDto33Employee;
import com.example.spring20230920.domain.MyDto34Customer;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

// @Controller
// @ResponseBody 모든 메소드에 적용됨

@RestController // @Controller + @ResponseBody
@RequiredArgsConstructor
@RequestMapping("api/main1")


public class RestController1 {

    private final MyDao10 dao;

    // http://localhost:8080/api/main1/sub1
    @GetMapping("sub1")
    @ResponseBody
    public String method1() {
        return "😺😺😺😺😺";
    }

    // http://localhost:8080/api/main1/sub2
    // get 요청시 50번 고객의 customerName 응답

    @GetMapping("sub2")
    @ResponseBody
    public String method2() {
        return dao.getCustomerName();
    }

    @GetMapping("sub3")
    @ResponseBody
    public MyDto34Customer method3() {
        return dao.getCustomer();
    }

    @GetMapping("sub4")
    @ResponseBody
    public ResponseEntity<MyDto34Customer> method4(Integer id) {
        MyDto34Customer customer = dao.getCustomerById(id);
        if (customer == null) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(customer);
    }

    // /api/main1/sub5?id=5
    @GetMapping("sub5")
    @ResponseBody
    public ResponseEntity<MyDto33Employee> method5(Integer id) {
        MyDto33Employee employee = dao.getEmployeeName(id);
        if (employee == null) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(employee);
    }




    @GetMapping("sub6")
    @ResponseBody
    public List<Integer> method6() {
        return dao.getCustomerIdList();
    }

    @GetMapping("sub7")
    @ResponseBody
    public List<Integer> method7(){
        return dao.getEmployeeIdList();
    }

}






























