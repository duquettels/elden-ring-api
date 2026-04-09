package com.example.character_api;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

@Service

public class CharacterService {
    
    private final CharacterRepository characterRepository;

    //constructor injection for the repository
    public CharacterService(CharacterRepository characterRepository) {
        this.characterRepository = characterRepository;
    }

    //get all characters
    public List<Character> getAllCharacters() {
        return characterRepository.findAll();
    }

    //get character by id
    public Character getCharacterById(long id) {
        return characterRepository.findById(id).orElse(null); //returns null if not found
    }

    //add new character
    public Character addCharacter(Character character) {
        return characterRepository.save(character);
    }
    
    //update existing character
    public Character updateCharacter(long id, Character updatedCharacter) {
        Optional<Character> existingCharacter = characterRepository.findById(id);

        if (existingCharacter.isPresent()) {
            Character characterToUpdate = existingCharacter.get();
            //update the fields with new data
            characterToUpdate.setName(updatedCharacter.getName());
            characterToUpdate.setDescription(updatedCharacter.getDescription());
            characterToUpdate.setType(updatedCharacter.getType());
            characterToUpdate.setAffiliation(updatedCharacter.getAffiliation());

            //save and return the updated character
            return characterRepository.save(characterToUpdate);
        } else {
            return null; // or throw an exception if you prefer
        }
    }

    //delete existing character
    public void deleteCharacter(Long id) {
        characterRepository.deleteById(id);
    }

    //get all characters of a given type
    public List<Character> getCharactersByType(String type) {
        // 1. Get ALL characters from the database
        List<Character> allCharacters = characterRepository.findAll();
        List<Character> filteredList = new ArrayList<>();

        // 2. Loop through them and check for exact word matches
        for (Character c : allCharacters) {
            if (c.getType() != null) {
                // Split the string by the comma and space (e.g. "Empyrean, God" becomes ["Empyrean", "God"])
                String[] distinctClasses = c.getType().split(", "); 
                
                for (String singleClass : distinctClasses) {
                    // Check if the exact standalone word matches what they searched for
                    if (singleClass.equalsIgnoreCase(type)) {
                        filteredList.add(c);
                        break; // We found a match no other checks
                    }
                }
            }
        }
        
        return filteredList;
    }

    // get characters whose name contains a string
    public List<Character> getCharactersByName(String name) {
        return characterRepository.findByNameContainingIgnoreCase(name);
    }
}
