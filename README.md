# Elden Ring Character API

This is a RESTful CRUD API built for CSC 340. It manages a gallery of Elden Ring characters using Spring Boot, Spring Data JPA, and a Neon PostgreSQL database.

## Installation & Setup
1. Clone this repository.
2. In `src/main/resources/application.properties`, add your Neon PostgreSQL connection string:
   `spring.datasource.url=jdbc:postgresql://.......`
3. Run the application from the root directory:
   `.\mvnw spring-boot:run`

## API Endpoints
- **GET** `/api/characters` - Get all characters
- **GET** `/api/characters/{id}` - Get character by ID
- **POST** `/api/characters` - Add a new character
- **PUT** `/api/characters/{id}` - Update a character
- **DELETE** `/api/characters/{id}` - Delete a character
- **GET** `/api/characters/type/{type}` - Filter by type (e.g., God, Demigod)
- **GET** `/api/characters/search?name={substring}` - Search by name

## Demo Video
[Link to Demo Video on OneDrive] https://uncg-my.sharepoint.com/:v:/g/personal/lsduquette_uncg_edu/IQB9P-AZR6g9Qp5E0jJiPFjrATz8jJsMGUuO7a-ihOWp8zk?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=TnkD7l