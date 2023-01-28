package cirko.api.service;

import cirko.api.model.User;

import java.util.List;

public interface UserService {

    List<User> getAll();

    User insert(User user);

    User update(User user);

    boolean deleteUser(User user);
}
