package ra.model.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ra.model.daoImp.EmployeeDAOImp;
import ra.model.entity.Employee;
import ra.model.service.EmployeeService;

import java.util.List;
@Service
public class EmployeeServiceImp implements EmployeeService {
    @Autowired
    EmployeeDAOImp employeeDAOImp;
    @Override
    public List<Employee> findAllEmployee() {
        return employeeDAOImp.findAllEmployee();
    }

    @Override
    public Employee getEmployeeById(int id) {
        return employeeDAOImp.getEmployeeById(id);
    }

    @Override
    public void saveEmployee(Employee employee) {
        employeeDAOImp.saveEmployee(employee);

    }

    @Override
    public void updateEmployee(Employee employee) {
        employeeDAOImp.updateEmployee(employee);
    }

    @Override
    public void deleteEmployee(int id) {
        employeeDAOImp.deleteEmployee(id);

    }
}
