<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Inscription</title>
    <link rel="icon" href="logo.png">


    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
          integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="registration.css">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
            integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
            integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous">
    </script>

</head>

<body>
<div class="login-form" style="padding-top:7%;">
    <form action="<%=request.getContextPath()%>/Registration"  ENCTYPE="multipart/form-data" method="post">
        <div>
            <center><img src="logo.png" width="25%"></center>
        </div>
        <h4 class="display-4" style="padding-top:30px;padding-bottom: 15px;font-size:30px;">Bienvenu au G A M E D E V S T U D I O</h4>
        <div class="form-group row">
            <label for="nom" class="col-5 col-form-label">Nom</label>
            <div class="col-7">
                <input id="nom" name="nom" type="text" required="required" class="form-control"
                       placeholder="Votre Nom">
            </div>
        </div>
        <div class="form-group row">
            <label for="prenom" class="col-5 col-form-label">prenom</label>
            <div class="col-7">
                <input id="prenom" name="prenom" type="text" class="form-control" required="required"
                       placeholder="votre prenom">
            </div>
        </div>
        <div class="form-group row">
            <label for="username" class="col-5 col-form-label">Username</label>
            <div class="col-7">
                <input id="username" name="username" type="text" class="form-control" required="required"
                       placeholder="Votre username">
            </div>
        </div>
        <div class="form-group row">
            <label for="email" class="col-5 col-form-label">Email</label>
            <div class="col-7">
                <input id="email" name="email" type="text" required="required" class="form-control"
                       placeholder="Votre Email">
            </div>
        </div>
        <div class="form-group row">
            <label for="email_confirmer" class="col-5 col-form-label">Confirmer l'Email</label>
            <div class="col-7">
                <input id="email_confirmer" name="email_confirmer" type="text" class="form-control"
                       required="required" placeholder="Retapez Votre Email">
            </div>
        </div>
        <div class="form-group row">
            <label for="mdp" class="col-5 col-form-label">Mot de passe</label>
            <div class="col-7">
                <input id="mdp" name="mdp" type="password" class="form-control"
                       required="required" placeholder="Votre Mot de Passe" minlength="7">
            </div>
        </div>
        <div class="form-group row">
            <label for="mot_de_passe_confirmer" class="col-5 col-form-label">Confirmer le Mot de passe</label>
            <div class="col-7">
                <input id="mot_de_passe_confirmer" name="mot_de_passe_confirmer" type="password"
                       class="form-control" required="required" placeholder="Retapez Votre Mot de Passe" minlength="7">
            </div>
        </div>
        <div class="form-group row">
            <label for="rectouconcept" class="col-5 col-form-label">Vous etes</label>
            <div class="col-7">
                <select id="rectouconcept" name="rectouconcept" class="custom-select" required="required">
                    <option value="recruteur">Un recruteur</option>
                    <option value="Un concepteur de jeux">Un concepteur de jeux</option>
                </select>
            </div>

                <label for="fctconcepteur" class="col-5 col-form-label" style="padding-top:15px ">Vous etes</label>
                <div class="col-7" style="padding-top:15px ">

                    <select  id="fctconcepteur" name="fctconcepteur" class="custom-select" required="required">
                        <option value="tester">recruteur</option>
                        <option value="Developpeur">Developpeur</option>
                        <option value="Designer">Designer</option>
                        <option value="tester">Tester</option>

                    </select>


            </div>
            </div>
        <div class="form-group row">
            <label for="desc" class="col-5 col-form-label">Description</label>
            <div class="col-7">
                <input id="desc" name="descr" type="text" class="form-control" required="required"
                       placeholder="description de vos compétences">
            </div>


        <label for="avatar">Choisir une image de profile si vous etes un concepteur:</label>
            <br>

        <input type="file"
               id="avatar" name="avatar"
               accept="image/png, image/jpeg">






                <div class="offset-5 col-7">
                    <center>
                    <button name="submit" type="submit" class="btn btn-success">S'inscire</button>
                    </center>
                </div>

