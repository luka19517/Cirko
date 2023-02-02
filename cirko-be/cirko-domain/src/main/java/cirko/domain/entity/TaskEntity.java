package cirko.domain.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "task")
@Getter
@Setter
public class TaskEntity {

    @Id
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "createddatetime")
    private Date createdDateTime;

    @ManyToOne
    @JoinColumn(name = "createdby")
    private UserEntity createdBy;

    @ManyToOne
    @JoinColumn(name = "backlog")
    private BacklogEntity backlog;

    @Column(name = "percentcompleted")
    private Integer percentCompleted;

    @ManyToOne
    @JoinColumn(name = "parent")
    private TaskEntity parent;

    @Column(name = "startdatetime")
    private Date startDateTime;

    @Column(name = "enddatetime")
    private Date endDateTime;

    @Column(name = "active")
    private boolean active;


}
