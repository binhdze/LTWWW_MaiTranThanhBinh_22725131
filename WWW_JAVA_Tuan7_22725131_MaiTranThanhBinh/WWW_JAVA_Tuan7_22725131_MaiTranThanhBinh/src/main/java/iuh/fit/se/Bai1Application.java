package iuh.fit.se;

import iuh.fit.se.dao.EmployeeDAO;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Bai1Application {
    public static void main(String[] args) {
        SpringApplication.run(Bai1Application.class, args);
    }

    @Bean
    public org.springframework.boot.CommandLineRunner demo(EmployeeDAO dao) {
        return args -> {
            System.out.println("== JDBC ALL ==");
            dao.getAll().forEach(System.out::println);
        };
    }
}
