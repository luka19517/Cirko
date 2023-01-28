package cirko.api.model;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Task {

    private Long id;
    private String name;
    private Date createdDateTime;
    private User createdBy;
    private List<User> assignedUsers;
    private Backlog backlog;
    private Integer percentCompleted;
    private Task parent;
    private Date startDateTime;
    private Date endDateTime;
    private boolean active;

}
