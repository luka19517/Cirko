package cirko.domain.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "tasklog", schema = "cirko")
@Getter
@Setter
public class TaskLogEntity {

    @Id
    private Long id;

    @ManyToOne
    @JoinColumn(name = "task")
    private TaskEntity task;

    @Column(name = "title")
    private String title;

    @Column(name = "description")
    private String description;

    @Column(name = "createddatetime")
    private Date createdDateTime;

    @ManyToOne
    @JoinColumn(name = "createdby")
    private UserEntity createdBy;

    @Column(name = "timespent")
    private Double timeSpent;


}
