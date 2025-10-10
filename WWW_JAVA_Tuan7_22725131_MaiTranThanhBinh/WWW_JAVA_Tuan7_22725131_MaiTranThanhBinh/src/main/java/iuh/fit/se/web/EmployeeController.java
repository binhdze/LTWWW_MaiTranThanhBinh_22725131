package iuh.fit.se.web;

import iuh.fit.se.dao.EmployeeDAO;
import iuh.fit.se.entity.Employee;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class EmployeeController {

    private final EmployeeDAO dao;

    public EmployeeController(EmployeeDAO dao) {
        this.dao = dao;
    }

    // Ping: /ping -> "alive" (để chắc Spring scan controller)
    @GetMapping("/ping")
    public String ping() {
        return "alive";
    }

    // JDBC endpoints
    @GetMapping("/jdbc/employees")
    public List<Employee> all() { return dao.getAll(); }

    @GetMapping("/jdbc/employees/{id}")
    public Employee one(@PathVariable int id) { return dao.getById(id); }

    @PostMapping("/jdbc/employees")
    public void create(@RequestBody Employee e) { dao.save(e); }

    @PutMapping("/jdbc/employees/{id}")
    public void update(@PathVariable int id, @RequestBody Employee e) {
        e.setId(id);
        dao.update(e);
    }

    @DeleteMapping("/jdbc/employees/{id}")
    public void delete(@PathVariable int id) { dao.deleteById(id); }
}
