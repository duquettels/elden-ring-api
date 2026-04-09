<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Legend - Elden Ring Gallery</title>
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
            <a class="nav-link active" href="/mvc/characters/new">Add Character</a>
        </div>
    </div>
</nav>

    <main class="container">
        <div class="form-container">
            <h1 class="text-center mb-4">Add a New Legend</h1>
            <p class="text-center text-muted mb-4">Enter the details of a new inhabitant of the Lands Between.</p>
            
            <form id="characterForm">
                <div class="mb-3">
                    <label for="charName" class="form-label">Character Name</label>
                    <input type="text" class="form-control" id="charName" placeholder="e.g. Blaidd the Half-Wolf" required>
                </div>

                <div class="mb-3">
                    <label for="charUniverse" class="form-label">Universe</label>
                    <input type="text" class="form-control" id="charUniverse" value="Elden Ring" required>
                </div>

                <div class="mb-3">
                    <label for="charRole" class="form-label">Role</label>
                    <input type="text" class="form-control" id="charRole" placeholder="e.g. Shadow of Ranni" required>
                </div>

                <div class="mb-3">
                    <label for="charImg" class="form-label">Image URL</label>
                    <input type="url" class="form-control" id="charImg" placeholder="https://example.com/image.jpg">
                </div>

                <div class="mb-3">
                    <label for="charDesc" class="form-label">Character Description</label>
                    <textarea class="form-control" id="charDesc" rows="4" placeholder="Briefly describe their history or significance..."></textarea>
                </div>

                <button type="submit" class="btn btn-gold py-2">Submit Prototype</button>
            </form>
            
            <div class="mt-4 text-center">
                <small class="text italic">* This is a static prototype. Form data is not saved to a database.