package cirko.api.service;

import cirko.api.model.BacklogPriority;

import java.util.List;

public interface BacklogPriorityService {

    List<BacklogPriority> getAll();

    BacklogPriority insert(BacklogPriority backlogPriority);

    BacklogPriority update(BacklogPriority backlogPriority);

    boolean delete(BacklogPriority backlogPriority);

}
