<%--
 Created by IntelliJ IDEA.
 User: Yasser
 Date: 1/17/2022
 Time: 2:51 PM
 To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.io.File" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>listpostulation botsrap</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body style=" background-image: url('https://gamingbolt.com/wp-content/uploads/2020/09/xbox-series-s-image-5.jpg');"    >


<nav class="navbar navbar-light navbar-expand-lg navigation-clean-search   bg-light">
    <a class="navbar-brand" href="#"><img
            src = "https://images.frandroid.com/wp-content/uploads/2021/07/android-game-dev-kit-scaled.jpg"
            style="width:150px"/>&nbsp; &nbsp;&nbsp;</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse" id="navcol-1">
        <ul class="navbar-nav">
            <li class="nav-item"></li>
            <li class="nav-item"></li>
            <li class="nav-item"><a class="nav-link" href="#"></a></li>
        </ul>
        <form style="display: flex; margin-left: 200px;"  action="recherche.jsp"  method="post" class="me-auto search-form" target="_self">





        </form>


        <a style="margin-left: 10px;" href="deconnexion.jsp"  class="btn btn-danger">Deconnexion</a>
    </div>
    </div>
</nav>


<div class="container px-3 mt-4" style="display: flex">
    <div class="row gx-4 row-cols-2">







        <%


            String driver = "com.mysql.jdbc.Driver";

            String con = "jdbc:mysql://localhost:3306/gamedevstudio";
            String nomr= (String) session.getAttribute("userid");
            String username = (String) session.getAttribute("userid");
            String req = "select * from `postulations` where nom_recruteur=\""+username+"\"";



            try {
                // étape 1: charger la classe de driver
                Class.forName(driver);

                // étape 2: créer l'objet de connexion
                Connection conn = DriverManager.getConnection(con, "root", "");

                // étape 3: créer l'objet statement

                PreparedStatement stmt = conn.prepareStatement(req);
               // stmt.setString(1,nomr);

                ResultSet res = stmt.executeQuery();
                // étape 4: exécuter la requête
                if (res.next()) {
                    do {
                        String  nom_offre = res.getString(2);
                        String  postuler_par = res.getString(3);
                        String nom_recruteur = res.getString(5);

                        out.print(
                                "<center> <div class='m-4 '> <div class='card' style='width: 500px; border-color: black !important'> <div class='row g-0'> <div class='col-sm-5' style='border-radius: 50% !important; width: 35%'> <img style =\"  width:200px ; height:200px !important \" src="+"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThA-ehg1jJtvLIedBA9uX1dT3RO8KbpPj35w&usqp=CAU"+"  class='card-img-top h-100' alt='...'> </div> <div class='col-sm-7'> <div class='card-body'>");

                        out.print(" <strong> Titre d'offre :</strong> <h4 class='card-title'>" + nom_offre + "</h4>"
                                + "<p class='card-text'><b style='color:blue'>Postuler par :</b> " + postuler_par
                                + "<br> <b style='color:red'>Nom recruteur: </b>" + nom_recruteur + "</p>" +"<div style=\"display:flex; margin-left:50px;\"><form action='Acceptation' method='post'>"+"<input value='"+postuler_par+"' type=\"hidden\"  name='userid'/>"+
                                "<input value='"+nom_recruteur+"' type=\"hidden\"   name='recruteur'/>"+
                                "<input value='"+nom_offre+"' type=\"hidden\"  name='Titre'/>"+"<button  class=\"btn btn-success\" style=\"margin-right:3px\"   type='submit'> Accepter </button>   <input style='margin-top:6%; width:165px; margin-left:15px;' class=\"form-control\" type=\"text\" name=\"Message\" placeholder=\"Message d'acceptation \" /></form>"+"<form action='Refus' method='post'> <input value='"+postuler_par+"' type=\"hidden\"  name='userid'/>" +
                                "                                <input value='"+nom_recruteur+"' type=\"hidden\"   name='recruteur'/>" +
                                "                                <input value='"+nom_offre+"' type=\"hidden\"  name='Titre'/><button class=\"btn btn-danger\"    type='submit'> refuser </button></form></div>"
                                + "</td></tr></div> </div> </div> </center>");


                    } while (res.next());

                } else {
                }
                // étape 5: fermez l'objet de connexion
                conn.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        %>
    </div>
</div>
</div>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>