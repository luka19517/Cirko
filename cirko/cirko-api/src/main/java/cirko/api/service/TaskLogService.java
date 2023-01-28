package cirko.api.service;

import cirko.api.model.Task;
import cirko.api.model.TaskLog;
import cirko.api.model.User;

import java.util.List;

public interface TaskLogService {

    List<TaskLog> getForTask(Task task);

    List<TaskLog> getForUser(User user);

    TaskLog insert(TaskLog taskLog);

    TaskLog update(TaskLog taskLog);

    void delete(TaskLog taskLog);

}
