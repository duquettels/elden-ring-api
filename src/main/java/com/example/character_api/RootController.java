package com.example.character_api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RootController {
    
    // This handles the absolute root (http://localhost:8080/)
    @GetMapping("/")
    public String redirectToGallery() {
        return "redirect:/mvc/characters";
    }
}
