package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto17Supplier;
import com.example.spring20230920.domain.MyDto18Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.*;

@Controller
@RequestMapping("main24")
public class Controller24 {

    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1() throws SQLException {
        String sql = """
                INSERT INTO products(productname, supplierid, categoryid, unit, price)
                VALUE (?,?,?,?,?)
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1,"돈까스");
        statement.setInt(2,3);
        statement.setInt(3,4);
        statement.setString(4,"한장");
        statement.setDouble(5,500.00d);
        int count = statement.executeUpdate(); // DML (insert, update, delete)
        if (count ==1){
            System.out.println("잘됨");
        }else {
            System.out.println("뭔가 망함");
        }
    }

    // /manin24/sub2로 요청시
    // suppliers 테이블에 하나의 레코드 추가하는 메소드 작성
    @PostMapping("sub2")
    public void method2(MyDto17Supplier supplier) throws SQLException {
        String sql = """
                INSERT INTO suppliers(suppliername, contactname, address, city, postalcode,Country,Phone)
                VALUE (?,?,?,?,?,?,?)
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement) {
            statement.setString(1,supplier.getSupplierName());
            statement.setString(2,supplier.getContactName());
            statement.setString(3,supplier.getAddress());
            statement.setString(4,supplier.getCity());
            statement.setString(5,supplier.getPostalCode());
            statement.setString(6,supplier.getCountry());
            statement.setString(7,supplier.getPhone());

            int count = statement.executeUpdate();
        }
    }
    @GetMapping("sub3")
    public void method3(){

    }
    @GetMapping("sub4")
    public void method4(){

    }

    @PostMapping("sub4")
    public void method5(MyDto18Employee employee) throws SQLException {
        String sql = """
                INSERT INTO employees(lastname, firstname, birthdate, photo, notes)
                VALUE (?,?,?,?,?)
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement) {
            statement.setString(1, employee.getLastName());
            statement.setString(2, employee.getFirstName());
            statement.setTimestamp(3, Timestamp.valueOf(employee.getBirthDate().atStartOfDay()));
            statement.setString(4, employee.getPhoto());
            statement.setString(5, employee.getNotes());

            int count = statement.executeUpdate();

            if (count == 1) {
                System.out.println("잘됨😽😽");
            } else {
                System.out.println("망함😿😿");
            }

        }
    }

}
