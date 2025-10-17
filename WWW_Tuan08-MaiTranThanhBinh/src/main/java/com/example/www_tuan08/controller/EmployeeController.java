package com.example.www_tuan08.controller;

import com.example.www_tuan08.entities.Employee;
import com.example.www_tuan08.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/register")
    public String showForm(@RequestBody Employee employee, BindingResult result) {
        return "register-form";
    }
}
