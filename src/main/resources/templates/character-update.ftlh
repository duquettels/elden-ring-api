<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Legend - The Lands Between</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/style.css">
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand font-weight-bold" href="/mvc/characters">ELDEN RING GALLERY</a>
            <div class="navbar-nav ms-auto">
                <a class="nav-link" href="/">Home</a>
                <a class="nav-link" href="/mvc/characters/about">About</a>
                <a class="nav-link" href="/mvc/characters/new">Add Character</a>
            </div>
        </div>
    </nav>

    <main class="container">
        <div class="search-container mt-5 p-4" style="background-color: #1e1e1e; border: 1px solid #b8860b; border-radius: 15px;">
            <h1 class="text-center mb-4 text-warning">Update ${character.name}</h1>
            
            <form action="/mvc/characters/update/${character.characterId?c}" method="POST">
                
                <div class="mb-3">
                    <label class="form-label text-warning">Character Name</label>
                    <input type="text" class="form-control" name="name" value="${character.name}" required>
                </div>

                <div class="mb-3">
                    <label class="form-label text-warning">Type (Class)</label>
                    <input type="text" class="form-control" name="type" value="${character.type}" required>
                </div>

                <div class="mb-3">
                    <label class="form-label text-warning">Affiliation</label>
                    <input type="text" class="form-control" name="affiliation" value="${character.affiliation}" required>
                </div>

                <div class="mb-3">
                    <label class="form-label text-warning">Character Lore & Description</label>
                    <textarea class="form-control" name="description" rows="5" required>${character.description}</textarea>
                </div>

                <button type="submit" class="btn btn-gold py-2 w-100 mt-3">Save Revisions</button>
                <a href="/mvc/characters/${character.characterId?c}" class="btn btn-outline-secondary w-100 mt-2">Cancel</a>
            </form>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>