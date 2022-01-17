<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>recruteur</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/Features-Boxed.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <section class="article-list"></section>
    <section class="features-boxed">
        <div class="container">
            <div class="intro"></div>
            <h2 class="text-center">Bonjour <%= session.getAttribute("userid")%></h2>
            <div class="row justify-content-center features">
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><i class="fa fa-list-alt icon"></i>

                        <h3 class="name"><a  style="color: white" href="Creeroffre.jsp"> Creer un poste</a> </h3> <button class="btn btn-primary" type="button"><a style="color: white" href="Creeroffre.jsp">creer</a></button>
                    </div>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><svg style="color: #0d6efd" xmlns="http://www.w3.org/2000/svg" width="60" height="120" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                    </svg>
                        <h3 class="name">consulter les candidats</h3><button class="btn btn-primary" type="button">Consulter</button>
                    </div>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"><svg style="color: #0d6efd" xmlns="http://www.w3.org/2000/svg" width="60" height="120" fill="currentColor" class="bi bi-screwdriver" viewBox="0 0 16 16">
                        <path d="m0 1 1-1 3.081 2.2a1 1 0 0 1 .419.815v.07a1 1 0 0 0 .293.708L10.5 9.5l.914-.305a1 1 0 0 1 1.023.242l3.356 3.356a1 1 0 0 1 0 1.414l-1.586 1.586a1 1 0 0 1-1.414 0l-3.356-3.356a1 1 0 0 1-.242-1.023L9.5 10.5 3.793 4.793a1 1 0 0 0-.707-.293h-.071a1 1 0 0 1-.814-.419L0 1zm11.354 9.646a.5.5 0 0 0-.708.708l3 3a.5.5 0 0 0 .708-.708l-3-3z"/>
                    </svg>
                        <h3 class="name">Gerer votre compte</h3><button class="btn btn-primary" type="button"><a style="color: white" href="gerercompte.jsp">Gerer</button>
                    </div>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-4 item">
                    <div class="box"> <svg style="color: #0d6efd" xmlns="http://www.w3.org/2000/svg" width="60" height="120" fill="currentColor" class="bi bi-power" viewBox="0 0 16 16">
                        <path d="M7.5 1v7h1V1h-1z"/>
                        <path d="M3 8.812a4.999 4.999 0 0 1 2.578-4.375l-.485-.874A6 6 0 1 0 11 3.616l-.501.865A5 5 0 1 1 3 8.812z"/>
                    </svg>
                        <h3 class="name"><a style="color: white" href="index.jsp">Deconexion</h3><button class="btn btn-primary" type="button">Deconexion</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>