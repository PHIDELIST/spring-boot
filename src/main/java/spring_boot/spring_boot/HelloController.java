package spring_boot.spring_boot;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @Value("${app.userName}")
    private String userName;

    @GetMapping("/")
    public String index() {
        return "Greetings from " + userName + "!";
    }
}
