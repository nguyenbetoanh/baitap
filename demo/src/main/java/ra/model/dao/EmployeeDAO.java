package ra.model.dao;

import ra.model.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    List<Employee> findAllEmployee();
    Employee getEmployeeById(int id);
    void saveEmployee(Employee employee);
    void updateEmployee(Employee employee);
    void deleteEmployee(int id );
}
