package cirko.domain.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "backlog", schema = "cirko")
@Getter
@Setter
public class BacklogEntity {

    @Id
    private Long id;

    @Column(name = "createddatetime")
    private Date createdDateTime;

    @ManyToOne
    @JoinColumn(name = "createdby")
    private UserEntity createdBy;

    @Column(name = "name")
    private String name;

    @Column(name = "startdatetime")
    private Date startDateTime;

    @Column(name = "enddatetime")
    private Date endDateTime;

    @Column(name = "percentcompleted")
    private Integer percentCompleted;

    @ManyToOne
    @JoinColumn(name = "backlogpriority")
    private BacklogPriorityEntity backlogPriority;

    @Column(name = "active")
    private boolean active;
}
