package com.example.character_api;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller // this is @Controller, not @RestController, because we are returning view names, not JSON future me
@RequestMapping("/mvc/characters") 
public class CharacterWebController {

    private final CharacterService characterService;

    public CharacterWebController(CharacterService characterService) {
        this.characterService = characterService;
    }

    // 0. HOMEPAGE REDIRECT
    @GetMapping("/")
    public String redirectToCharacterList() {
        return "redirect:/mvc/characters";
}

    // 1. GET ALL (character-list.ftlh)
    @GetMapping
    public String viewAllCharacters(Model model) {
        model.addAttribute("characterList", characterService.getAllCharacters());
        return "character-list"; 
    }

    // 2. GET ONE (character-details.ftlh)
    @GetMapping("/{id}")
    public String viewCharacterDetails(@PathVariable Long id, Model model) {
        model.addAttribute("character", characterService.getCharacterById(id));
        return "character-details";
    }

    // 3. SHOW CREATE FORM (character-create.ftlh)
    @GetMapping("/new")
    public String showCreateForm(Model model) {
        return "character-create";
    }

    // 4. PROCESS CREATE FORM (list or homepage)
    @PostMapping("/new")
    public String processCreateForm(Character character) {
        characterService.addCharacter(character);
        return "redirect:/mvc/characters";
    }

    // 5. SHOW UPDATE FORM (character-update.ftlh)
    @GetMapping("/update/{id}")
    public String showUpdateForm(@PathVariable Long id, Model model) {
        model.addAttribute("character", characterService.getCharacterById(id));
        return "character-update";
    }

    // 6. PROCESS UPDATE FORM (.details)
    @PostMapping("/update/{id}")
    public String processUpdateForm(@PathVariable Long id, Character character) {
        characterService.updateCharacter(id, character);
        return "redirect:/mvc/characters/" + id;
    }

    // 7. DELETE
    @GetMapping("/delete/{id}")
    public String deleteCharacter(@PathVariable Long id) {
        characterService.deleteCharacter(id);
        return "redirect:/mvc/characters";
    }

    // 8. ABOUT PAGE
    @GetMapping("/about")
    public String showAboutPage() {
        return "about"; 
    }

    // EXTRA CREDIT: Search by Name
    @GetMapping("/search")
    public String searchCharactersByName(@RequestParam String name, Model model) {
        model.addAttribute("characterList", characterService.getCharactersByName(name));

        // Tells the web page a filter is on, and what they searched for
        model.addAttribute("activeFilter", "Name containing: '" + name + "'");

        return "character-list"; // Reuses the gallery page, but with filtered data!
    }

    // EXTRA CREDIT: Filter by Type
    @GetMapping("/type")
    public String filterCharactersByType(@RequestParam String type, Model model) {
        model.addAttribute("characterList", characterService.getCharactersByType(type));

        // Tells the web page a filter is on, and what class they picked
        model.addAttribute("activeFilter", "Class: " + type);

        return "character-list"; 
    }
}
    
