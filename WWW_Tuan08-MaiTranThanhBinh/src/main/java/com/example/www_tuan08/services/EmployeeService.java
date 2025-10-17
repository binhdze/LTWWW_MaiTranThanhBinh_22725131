package com.example.www_tuan08.services;

import com.example.www_tuan08.entities.Employee;

import java.util.List;

public interface EmployeeService {
    Employee save(Employee employee);

    List<Employee> findAll();
}
