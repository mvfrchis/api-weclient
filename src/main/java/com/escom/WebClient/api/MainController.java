package com.escom.WebClient.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.Collections;
import java.util.Map;

@RestController
public class MainController {

    @GetMapping("/health")
    public Map<String, String> healthCheck() {
        return Collections.singletonMap("mensaje", "API WebClient operando correctamente en Render.");
    }
}