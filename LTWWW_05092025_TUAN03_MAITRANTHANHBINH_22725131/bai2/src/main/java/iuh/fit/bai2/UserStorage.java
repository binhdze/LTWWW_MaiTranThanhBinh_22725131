package iuh.fit.bai2;

import iuh.fit.bai2.User;

import java.util.ArrayList;
import java.util.List;

public class UserStorage {
    private static final List<User> users = new ArrayList<>();

    public static void addUser(User user) {
        users.add(user);
    }

    public static List<User> getAllUsers() {
        return users;
    }
}