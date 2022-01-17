<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>creerposte</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/styles.css">

</head>

<body style="background-image: url('https://www.tubefilter.com/wp-content/uploads/2021/02/google-stadia-studio-close-1920x1131.jpg')">
<center>


<div style="width:50%"  >
    <form method="post" action="Posteoffre" ENCTYPE="multipart/form-data">


    <section class="contact-clean">
        <form method="post">
            <h2 class="text-center">Poster une offre</h2>
            <div class="mb-3">
                <input class="form-control" type="text" name="Titre" placeholder="Titre" /></div>
            <div class="mb-3"></div>
            <div class="mb-3">
                <textarea class="form-control" name="Description" placeholder="Description" rows="14"></textarea>
            </div>
            <input name="dateexp" class="form-control" type="date"><strong style="color:red" class="form-text">Date d'expiration de l'offre</strong>

            <div class="mb-3"></div><input  type="file"  name="imaja" class="form-control">



        </form>
        <button  style="margin-top: 15px; margin-left:500px " class="btn btn-primary pull-right" type="submit">Poster
        </button>

        <button style="float: right; margin-top: 15px;" class="btn btn-primary" type="button"><a style="color: white" href="recrutdashboard.jsp">annuler</a>  </button>
    </div>
</center>

    </section>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>