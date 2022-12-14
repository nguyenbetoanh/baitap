package ra.model.daoImp;

import org.springframework.stereotype.Repository;
import ra.model.dao.EmployeeDAO;
import ra.model.entity.Employee;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;
import java.lang.reflect.Type;
import java.util.List;

@Transactional
@Repository
public class EmployeeDAOImp implements EmployeeDAO {
    @PersistenceContext
    EntityManager entityManager;


    @Override
    public List<Employee> findAllEmployee() {
        TypedQuery<Employee> query = entityManager.createQuery("select e from Employee e", Employee.class);
        return query.getResultList();
    }

    @Override
    public Employee getEmployeeById(int id) {
        TypedQuery<Employee> query = entityManager.createQuery("select e from Employee e where e.id=:id", Employee.class);
        query.setParameter("id", id);
        return query.getSingleResult();
    }

    @Override
    public void saveEmployee(Employee employee) {
        entityManager.persist(employee);
    }

    @Override
    public void updateEmployee(Employee employee) {
        entityManager.merge(employee);

    }

    @Override
    public void deleteEmployee(int id) {
        Employee employee = getEmployeeById(id);
       entityManager.remove(employee);
    }
}
