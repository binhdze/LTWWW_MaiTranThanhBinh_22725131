package iuh.fit.se.dao;

import iuh.fit.se.entity.Employee;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

    private final JdbcTemplate jdbc;

    public EmployeeDAOImpl(DataSource dataSource) {
        this.jdbc = new JdbcTemplate(dataSource);
    }

    private static final RowMapper<Employee> M = new RowMapper<>() {
        @Override
        public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
            Employee e = new Employee();
            e.setId(rs.getInt("id"));
            // nối first_name + last_name thành name
            e.setName(rs.getString("first_name") + " " + rs.getString("last_name"));
            // gán role tạm = email (nếu bạn chưa có cột role)
            e.setRole(rs.getString("email"));
            return e;
        }
    };

    @Override
    public void save(Employee e) {
        // tách name thành first_name + last_name để lưu
        String[] parts = e.getName().split(" ", 2);
        String first = parts.length > 0 ? parts[0] : "";
        String last = parts.length > 1 ? parts[1] : "";
        jdbc.update(
                "INSERT INTO employee(first_name, last_name, email, salary) VALUES(?,?,?,?)",
                first, last, e.getRole(), 0 // salary tạm = 0 nếu chưa có
        );
    }

    @Override
    public void update(Employee e) {
        String[] parts = e.getName().split(" ", 2);
        String first = parts.length > 0 ? parts[0] : "";
        String last = parts.length > 1 ? parts[1] : "";
        jdbc.update(
                "UPDATE employee SET first_name=?, last_name=?, email=? WHERE id=?",
                first, last, e.getRole(), e.getId()
        );
    }

    @Override
    public Employee getById(int id) {
        var list = jdbc.query("SELECT * FROM employee WHERE id=?", M, id);
        return list.isEmpty() ? null : list.get(0);
    }

    @Override
    public List<Employee> getAll() {
        return jdbc.query("SELECT * FROM employee", M);
    }

    @Override
    public void deleteById(int id) {
        jdbc.update("DELETE FROM employee WHERE id=?", id);
    }
}
