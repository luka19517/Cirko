package cirko.rest.server.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class Controller {

    @GetMapping("/initialConnection")
    public ResponseEntity<String> initialConnection() {
        return new ResponseEntity<>("Hello from backend", HttpStatus.OK);
    }

}
