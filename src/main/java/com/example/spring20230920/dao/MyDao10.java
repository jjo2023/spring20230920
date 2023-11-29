package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto33Employee;
import com.example.spring20230920.domain.MyDto34Customer;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MyDao10 {


    @Select("""
SELECT CustomerName FROM customers
WHERE CustomerID=50;
"""
    )
    String getCustomerName();

@Select("""
        SELECT customerId id,customerName name, ContactName, address, city, PostalCode, Country 
        FROM customers
        WHERE customerId=50
        """)
    MyDto34Customer getCustomer();

    @Select("""
        SELECT customerId,customerName, ContactName, address, city, PostalCode, Country 
        FROM customers
        WHERE customerId=#{id}
        """)
    MyDto34Customer getCustomerById(Integer id);

    @Select("""
SELECT employeeId id, lastName, firstName, birthDate, photo, notes
FROM employees
WHERE employeeId=#{id}
""")
    MyDto33Employee getEmployeeName(Integer id);

    @Select("""
SELECT CustomerID
FROM customers
ORDER BY CustomerID
""")
    List<Integer> getCustomerIdList();

    @Select("""
SELECT EmployeeID
FROM employees

""")
    List<Integer> getEmployeeIdList();

}
