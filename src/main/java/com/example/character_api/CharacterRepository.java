package com.example.character_api;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CharacterRepository extends JpaRepository<Character, Long> {
    
    // Custom query method to find characters by name (case-insensitive)
    List<Character> findByNameContainingIgnoreCase(String name);

    // Custom query method to find characters by type (e.g., demigod, empyrean)
    List<Character> findByTypeIgnoreCase(String type);
}
