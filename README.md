# Elden Ring Character API

This is a full-stack MVC web application and RESTful CRUD API built for **CSC 340**. It manages a gallery of Elden Ring characters using Spring Boot, Spring Data JPA, Server-Side Rendering (FreeMarker), and a Neon PostgreSQL database.

The project has evolved from a standalone JSON API into a dynamic, data-driven web application featuring responsive design via Bootstrap 5 and custom error handling.

## Installation & Setup

1. Clone this repository and ensure you are on the `feature-mvc` branch.
2. In `src/main/resources/application.properties`, add your Neon PostgreSQL connection string:
   `spring.datasource.url=jdbc:postgresql://.......`
3. Run the application from the root directory:
   `.\mvnw spring-boot:run`
4. Open your web browser and navigate to the frontend gallery:
   `http://localhost:8080/mvc/characters`

## Web Frontend Routes (MVC)

These endpoints serve the HTML/FreeMarker web pages:

- **GET** `/mvc/characters` - View the main character gallery (Home)
- **GET** `/mvc/characters/{id}` - View lore and details for a specific character
- **GET** `/mvc/characters/new` - Open the form to add a new character
- **POST** `/mvc/characters/new` - Submit the new character form
- **GET** `/mvc/characters/update/{id}` - Open the form to edit an existing character
- **POST** `/mvc/characters/update/{id}` - Submit the updated character details
- **GET** `/mvc/characters/delete/{id}` - Delete a character and return to the gallery
- **GET** `/mvc/characters/about` - View the About page

## REST API Endpoints (JSON)

The original backend API is still fully functional for raw data access:

- **GET** `/api/characters` - Get all characters
- **GET** `/api/characters/{id}` - Get character by ID
- **POST** `/api/characters` - Add a new character
- **PUT** `/api/characters/{id}` - Update a character
- **DELETE** `/api/characters/{id}` - Delete a character
- **GET** `/api/characters/type/{type}` - Filter by type (e.g., God, Demigod)
- **GET** `/api/characters/search?name={substring}` - Search by name

## Demo Video

[Link to Demo Video on OneDrive] <https://uncg-my.sharepoint.com/:v:/g/personal/lsduquette_uncg_edu/IQDJGWnuyQBWT411HOo9AzsSAWQCuHpaLQt_V1yroHNw4Vo?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=SahY3U>

## Developer

Developed by **Levi Duquette**
