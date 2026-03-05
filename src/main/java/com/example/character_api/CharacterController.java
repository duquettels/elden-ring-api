package com.example.character_api;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/characters")

public class CharacterController {

    private final CharacterService characterService;

    //constructor injection for the service
    public CharacterController(CharacterService characterService) {
        this.characterService = characterService;
    }

    //get all characters

    //URL: GET http://localhost:8080/api/characters
    @GetMapping
    public List<Character> getAllCharacters() {
        return characterService.getAllCharacters();
    }

    //get character by id
    //URL: GET http://localhost:8080/api/characters
    @GetMapping("/{id}")
    public Character getCharacterById(@PathVariable long id) {
        return characterService.getCharacterById(id);
    }

    //add new character
    //URL: POST http://localhost:8080/api/characters
    @PostMapping
    public Character addCharacter(@RequestBody Character character) {
        return characterService.addCharacter(character);
    }

    //update existing character
    //URL: PUT http://localhost:8080/api/characters/{id}
    @PutMapping("/{id}")
    public Character updateCharacter(@PathVariable long id, @RequestBody Character updatedCharacter) {
        return characterService.updateCharacter(id, updatedCharacter);
    }

    //delete existing character
    //URL: DELETE http://localhost:8080/api/characters/{id}
    @DeleteMapping("/{id}")
    public void deleteCharacter(@PathVariable Long id) {
        characterService.deleteCharacter(id);
    }  

    //get all characters of a given type
    //URL: GET http://localhost:8080/api/characters/type/{type}
    @GetMapping("/type/{type}")
    public List<Character> getCharactersByType(@PathVariable String type) {
        return characterService.getCharactersByType(type);
    }

    //get characters by name (case-insensitive search)
    //URL: GET http://localhost:8080/api/characters/search?name={name}
    @GetMapping("/search")
    public List<Character> searchCharactersByName(@RequestParam String name) {
        return characterService.getCharactersByName(name);
    }
    
}
