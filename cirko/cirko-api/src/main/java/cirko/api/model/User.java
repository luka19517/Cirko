package cirko.api.model;

import lombok.Data;

import java.util.Date;

@Data
public class User {

    private Long id;
    private String username;
    private String name;
    private String password;
    private Date registrationDateTime;
    
}
