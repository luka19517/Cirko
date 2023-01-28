package cirko.api.model;

import lombok.Data;

import java.util.Date;

@Data
public class TaskLog {

    private Long id;
    private Task task;
    private String title;
    private String description;
    private Date createdDateTime;
    private User createdBy;
    private Integer timeSpent;

}
