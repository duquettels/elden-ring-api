<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - The Lands Between Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/style.css">
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
    <div class="container">
        <a class="navbar-brand font-weight-bold" href="/mvc/characters">ELDEN RING GALLERY</a>
        <div class="navbar-nav ms-auto">
            <a class="nav-link" href="/">Home</a>
            <a class="nav-link active" href="/mvc/characters/about">About</a>
            <a class="nav-link" href="/mvc/characters/new">Add Character</a>
        </div>
    </div>
</nav>

    <main class="container mb-5">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="about-card">
                    <img src="/images/erdtree_landscape.png" alt="The Erdtree Landscape" class="about-img">
                    
                    <h1 class="display-4 text-center mb-4">About This Application</h1>
                    
                    <section class="content fs-5">
                        <p>
                            This is a dynamic, full-stack MVC web application developed for <span class="highlight">CSC340</span>. 
                            It has evolved from a static HTML prototype into a fully functional data-driven system connected to a live database.
                        </p>
                        
                        <hr>

                        <h3>Why Elden Ring?</h3>
                        <p>
                            I chose <span class="highlight">Elden Ring</span> as the theme for this gallery due to its awesome character design and the complex narrative crafted by FromSoftware and George R.R. Martin. Each character featured in this gallery plays a vital role in the history of the Lands Between.
                        </p>


                        <hr>

                        <h3>Technical Features</h3>
                        <ul>
                            <li><strong>Backend:</strong> Built with Spring Boot and Java, featuring a RESTful CRUD API.</li>
                            <li><strong>Database:</strong> Persistent data storage using Neon PostgreSQL.</li>
                            <li><strong>Frontend:</strong> Server-Side Rendering utilizing FreeMarker templates (.ftlh).</li>
                            <li><strong>Styling:</strong> Responsive design powered by the Bootstrap framework and custom CSS.</li>
                        </ul>
                    </section>
                </div>
            </div>
        </div>
    </main>

    <footer class="container text-center py-4">
        <p class="text-muted">Developed by Levi Duquette | CSC340</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>