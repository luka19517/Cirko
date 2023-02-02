package cirko.domain.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "attachment")
@Getter
@Setter
public class AttachmentEntity {

    @Id
    private Long id;

    @Column(name = "dataid")
    private Long dataId;

    @Column(name = "uploadeddatetime")
    private Date uploadedDateTime;

    @ManyToOne
    @JoinColumn(name = "uploadedby")
    private UserEntity uploadedBy;

    @Column(name = "type")
    private String type;

    @Column(name = "content")
    private byte[] content;

}
