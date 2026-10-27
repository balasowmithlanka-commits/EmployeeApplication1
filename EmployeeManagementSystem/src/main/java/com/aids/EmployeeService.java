package com.aids;

import java.util.List;

public interface EmployeeService {

    void registerEmployee(Employee employee);

    List<Employee> getAllEmployees();
}

