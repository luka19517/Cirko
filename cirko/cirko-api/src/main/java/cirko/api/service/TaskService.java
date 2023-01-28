package cirko.api.service;

import cirko.api.model.Task;
import cirko.api.model.User;

import java.util.List;

public interface TaskService {

    List<Task> getAll();

    List<Task> getForUser(User user);

    Task insert(Task task);

    Task update(Task task);

    boolean delete(Task task);

}
