package iuh.fit.se.dao;

import iuh.fit.se.entity.Employee;
import java.util.List;

public interface EmployeeDAO {
    void save(Employee e);           // insert
    void update(Employee e);         // update by id
    Employee getById(int id);        // select one
    List<Employee> getAll();         // select all
    void deleteById(int id);         // delete
}
