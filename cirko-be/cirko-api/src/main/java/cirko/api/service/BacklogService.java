package cirko.api.service;

import cirko.api.model.Backlog;
import cirko.api.model.User;

import java.util.List;

public interface BacklogService {

    List<Backlog> getForUser(User user);

    Backlog insert(Backlog backLog);

    Backlog update(Backlog backlog);

    boolean delete(Backlog backlog);

}
