package cirko.api.model;

import lombok.Data;

import java.util.Date;

@Data
public class Attachment {

    private Long id;
    private Long dataIDs;
    private Date uploadDateTime;
    private String type;
    private byte[] content;

}
