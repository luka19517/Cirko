package cirko.rest.server.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = {"http://192.168.1.174:8081/"})
@RestController
@RequestMapping("/service")
public class Controller {

    @GetMapping("/initialConnection")
    public ResponseEntity<String> initialConnection() {
        return new ResponseEntity<>("Hello from backend", HttpStatus.OK);
    }
    
}
