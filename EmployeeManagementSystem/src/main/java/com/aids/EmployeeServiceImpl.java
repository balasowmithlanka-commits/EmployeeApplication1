package com.aids;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    private final List<Employee> employees = new ArrayList<>();

    private int nextId = 1;

    @Override
    public void registerEmployee(Employee employee) {

        employee.setId(nextId++);

        employees.add(employee);
    }

    @Override
    public List<Employee> getAllEmployees() {

        return new ArrayList<>(employees);
    }
}

