<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Legend Details - Queen Marika</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/style.css">
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand font-weight-bold" href="/mvc/characters">ELDEN RING GALLERY</a>
            <div class="navbar-nav ms-auto">
                <a class="nav-link" href="/mvc/characters">Home</a>
                <a class="nav-link" href="/mvc/characters/about">About</a>
                <a class="nav-link" href="/mvc/characters/new">Add Character</a>
            </div>
        </div>
    </nav>

    <main class="container mb-5">
        <div class="detail-container">
            <div class="row align-items-center">
                <div class="col-lg-6 mb-4 mb-lg-0">
                    <img src="/images/erdtree_landscape.png" alt="Character Portrait" class="hero-img">
                </div>
                
                <div class="col-lg-6">
                    <h1 class="display-3 text-warning">${character.name}</h1>
                    
                    <h4 class="accent-text mb-4">${character.type} • ${character.affiliation}</h4>
                    
                    <div class="mb-4">
                        <h3>Backstory & Lore</h3>
                        <p class="fs-5">${character.description}</p>
                    </div>

                    <div class="mt-4">
                        <a href="/mvc/characters" class="btn btn-gold px-4 me-2">Back to Roster</a>
                        <a href="/mvc/characters/update/${character.characterId?c}" class="btn btn-outline-warning px-4">Edit Character</a>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer class="container text-center py-4">
        <p class="text-muted">Levi Duquette | UNCG CSC340</p>
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>