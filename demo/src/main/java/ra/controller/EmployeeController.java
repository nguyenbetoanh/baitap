package ra.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ra.model.entity.Employee;
import ra.model.serviceImp.EmployeeServiceImp;

import java.util.List;

@Controller
@RequestMapping("employee")
public class EmployeeController {
    @Autowired
    EmployeeServiceImp employeeServiceImp;

    @RequestMapping(value = {"/","getAll",""})
    public String getAllEmployee(Model model) {
        List<Employee> listEmployee = employeeServiceImp.findAllEmployee();
        model.addAttribute("listEmployee", listEmployee);
        return "employee/list";
    }

    @PostMapping("/create")
    public String createEmployee(@ModelAttribute("employee") Employee employee) {
        employeeServiceImp.saveEmployee(employee);
        return "redirect:/employee";

    }
    @RequestMapping("delete")
    public String delete(int id){
        employeeServiceImp.deleteEmployee(id);
        return "redirect:/employee";
    }
    @GetMapping("/update")
    public String update(Model model,int id){
        Employee employee = employeeServiceImp.getEmployeeById(id);
        model.addAttribute("employee",employee);
        return "employee/updateEmployees";
    }
    @PostMapping("/update")
    public String updateEmployee(Employee employee){
        employeeServiceImp.updateEmployee(employee);
        return "redirect:/employee";
    }

}

