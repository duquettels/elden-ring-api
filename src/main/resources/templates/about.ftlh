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
            <a class="nav-link" href="/mvc/characters">Home</a>
            <a class="nav-link active" href="/mvc/characters/about">About</a>
            <a class="nav-link" href="/mvc/characters/new">Add Character</a>
        </div>
    </div>
</nav>

    <main class="container mb-5">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="about-card">
                    <img src="images/erdtree_landscape.png" alt="The Erdtree Landscape" class="about-img">
                    
                    <h1 class="display-4 text-center mb-4">About This Gallery</h1>
                    
                    <section class="content fs-5">
                        <p>
                            This static web application was designed and developed as a project for <span class="highlight">CSC340</span>. The primary goal was to practice building responsive, multi-page prototypes using HTML, CSS, and the Bootstrap framework.
                        </p>
                        
                        <hr>

                        <h3>Why Elden Ring?</h3>
                        <p>
                            I chose <span class="highlight">Elden Ring</span> as the theme for this gallery due to its awesome character design and the complex narrative crafted by FromSoftware and George R.R. Martin. Each character featured in this gallery plays a vital role in the history of the Lands Between.
                        </p>


                        <hr>

                        <h3>Technical Features</h3>
                        <ul>
                            <li>Responsive Grid Layout using Bootstrap.</li>
                            <li>Live Search functionality to filter character legends.</li>
                            <li>Uniform image scaling with CSS <code>object-fit</code> properties.</li>
                            <li>Consistent site-wide navigation and branding.</li>
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