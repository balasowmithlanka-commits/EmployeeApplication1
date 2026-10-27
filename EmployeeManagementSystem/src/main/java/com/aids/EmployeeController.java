package com.aids;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

    private final EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {

        model.addAttribute("employee", new Employee());

        return "register";
    }

    @PostMapping("/register")
    public String registerEmployee(
            @Validated @ModelAttribute("employee") Employee employee,
            BindingResult result,
            RedirectAttributes redirectAttributes) {

        if (employee.getName() == null || employee.getName().trim().isEmpty()) {
            result.rejectValue("name", "error.employee", "Employee name is required.");
        }

        if (employee.getEmail() == null
                || !employee.getEmail().matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$")) {
            result.rejectValue("email", "error.employee", "Enter a valid email address.");
        }

        if (employee.getDepartment() == null
                || employee.getDepartment().trim().isEmpty()) {
            result.rejectValue("department", "error.employee", "Department is required.");
        }

        if (employee.getSalary() <= 0) {
            result.rejectValue("salary", "error.employee", "Salary must be greater than zero.");
        }

        if (result.hasErrors()) {
            return "register";
        }

        employeeService.registerEmployee(employee);

        redirectAttributes.addFlashAttribute(
                "successMessage", "Employee registered successfully!");

        return "redirect:/employees/list";
    }

    @GetMapping("/list")
    public String listEmployees(Model model) {

        List<Employee> employees = employeeService.getAllEmployees();

        model.addAttribute("employees", employees);

        return "list";
    }
}

