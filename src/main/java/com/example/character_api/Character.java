package com.example.character_api; 

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "characters")
public class Character {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long characterId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false, length = 1000) // length = 1000 allows for longer lore descriptions
    private String description;

    // Two extra attributes
    private String type; // demigod, empyrean, or other;
    private String affiliation; // e.g., "Erdtree", "Outer Gods", "Other"

    // Default Constructor (Required by JPA)
    public Character() {
    }

    // Parameterized Constructor
    public Character(String name, String description, String type, String affiliation) {
        this.name = name;
        this.description = description;
        this.type = type;
        this.affiliation = affiliation;
    }

    // Getters and Setters
    public long getCharacterId() {
        return characterId;
    }

    public void setCharacterId(long characterId) {
        this.characterId = characterId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAffiliation() {
        return affiliation;
    }

    public void setAffiliation(String affiliation) {
        this.affiliation = affiliation;
    }
}