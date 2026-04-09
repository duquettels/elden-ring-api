<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Lands Between - Character Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/style.css">
    
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand font-weight-bold" href="/mvc/characters">ELDEN RING GALLERY</a>
            <div class="navbar-nav ms-auto">
                <a class="nav-link active" href="/mvc/characters">Home</a>
                <a class="nav-link" href="/mvc/characters/about">About</a>
                <a class="nav-link" href="/mvc/characters/new">Add Character</a>
        </div>
        </div>
    </nav>

    <header class="container text-center mt-5">
        <h1 class="display-4">Legends of the Lands Between</h1>
        <p class="lead">Gallery of Important Characters in Elden Ring</p>
        
        <div class="search-container">
            <input type="text" id="charSearch" class="form-control" placeholder="Search by name or role (e.g. Demigod)...">
        </div>
    </header>

    <main class="container mb-5">
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4" id="galleryGrid">
            
            <#list characterList as character>
                <div class="col char-item">
                    <div class="card h-100 character-card">
                        <img src="../static/images/" class="custom-img" alt="">
                        <div class="card-body text-center">
                            <h4 class="card-title text-warning">${character.name}</h4>
                            <p class="card-text text-light"><strong>Type: ${character.type}</strong> | <strong>Affiliation: ${character.affiliation}</strong></p>
                            <a href="/mvc/characters/${character.characterId?c}" class="btn btn-gold btn-sm">View Legend</a>
                        </div>
                    </div>
                </div>
            </#list>

            

        </div>
    </main>

    <footer class="container text-center py-4 border-top border-secondary">
        <p class="text-muted">Levi Duquette | CSC340</p>
    </footer>

    <script>
        document.getElementById('charSearch').addEventListener('keyup', function() {
            let filter = this.value.toLowerCase();
            let items = document.querySelectorAll('.char-item');

            items.forEach(function(item) {
                let name = item.getAttribute('data-name').toLowerCase();
                if (name.includes(filter)) {
                    item.style.display = "block";
                } else {
                    item.style.display = "none";
                }
            });
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>