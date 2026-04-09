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
            
            <form action="/mvc/characters/new" method="POST">
                <div class="mb-3">
                    <label class="form-label">Character Name</label>
                    <input type="text" class="form-control" name="name" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Type</label>
                    <input type="text" class="form-control" name="type" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Affiliation</label>
                    <input type="text" class="form-control" name="affiliation" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Character Description</label>
                    <textarea class="form-control" name="description" rows="4" required></textarea>
                </div>
                <button type="submit" class="btn btn-gold py-2">Submit Character</button>
            </form>
            
            <div class="mt-4 text-center">
                <small class="text italic">* This is a static prototype. Form data is not saved to a database.