package cirko.api.model;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Backlog {

    private Long id;
    private Date createdDateTime;
    private User createdBy;
    private List<User> assignedUsers;
    private String name;
    private Date startDateTime;
    private Date endDateTime;
    private Integer percentCompleted;
    private BacklogPriority backlogPriority;
    private boolean active;
}
