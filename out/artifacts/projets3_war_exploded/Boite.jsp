<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <link rel='stylesheet prefetch' href='Boite.css'>
    <div class="mail-box">
        <aside class="sm-side">
            <div class="user-head">
                <a class="inbox-avatar" href="javascript:;">
                    <img  width="64" hieght="60" src="logo.png">
                </a>
                <div class="user-name">
                    <h5><a href="#"><%=session.getAttribute("userid")%></a></h5>

                </div>
                <a class="mail-dropdown pull-right" href="javascript:;">
                    <i class="fa fa-chevron-down"></i>
                </a>
            </div>
            <div class="inbox-body">


                </a>
                <!-- Modal -->
                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade" style="display: none;">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                <h4 class="modal-title">Compose</h4>
                            </div>
                            <div class="modal-body">
                                <form role="form" class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">To</label>
                                        <div class="col-lg-10">
                                            <input type="text" placeholder="" id="inputEmail1" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Cc / Bcc</label>
                                        <div class="col-lg-10">
                                            <input type="text" placeholder="" id="cc" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Subject</label>
                                        <div class="col-lg-10">
                                            <input type="text" placeholder="" id="inputPassword1" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Message</label>
                                        <div class="col-lg-10">
                                            <textarea rows="10" cols="30" class="form-control" id="" name=""></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-lg-offset-2 col-lg-10">
                                                      <span class="btn green fileinput-button">
                                                        <i class="fa fa-plus fa fa-white"></i>
                                                        <span>Attachment</span>
                                                        <input type="file" name="files[]" multiple="">
                                                      </span>
                                            <button class="btn btn-send" type="submit">Send</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->
            </div>
            <ul class="inbox-nav inbox-divider">
                <li class="active">
                    <a href="#"><i class="fa fa-inbox"></i> Message  <span class="label label-danger pull-right">2</span></a>

                </li>
                <li>
                    <a href="gamedeveloper.jsp"><i class="fa fa-envelope-o"></i> retour au dashboard</a>
                </li>


            </ul>



            <div class="inbox-body text-center">
                <div class="btn-group">
                    <a class="btn mini btn-primary" href="javascript:;">
                        <i class="fa fa-plus"></i>
                    </a>
                </div>
                <div class="btn-group">
                    <a class="btn mini btn-success" href="javascript:;">
                        <i class="fa fa-phone"></i>
                    </a>
                </div>
                <div class="btn-group">
                    <a class="btn mini btn-info" href="javascript:;">
                        <i class="fa fa-cog"></i>
                    </a>
                </div>
            </div>

        </aside>
        <aside class="lg-side">
            <div class="inbox-head">
                <h3>Boite de reception</h3>
                <form action="#" class="pull-right position">
                    <div class="input-append">
                        <a style="margin-left: 10px;" href="deconnexion.jsp"  class="btn btn-danger">Deconnexion</a>
                    </div>
                </form>
            </div>
            <div class="inbox-body">
                <div class="mail-option">
                    <div class="chk-all">


                            <ul class="dropdown-menu">
                                <li><a href="#"> None</a></li>
                                <li><a href="#"> Read</a></li>
                                <li><a href="#"> Unread</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="btn-group">
                        <a data-original-title="Refresh" data-placement="top" data-toggle="dropdown" href="#" class="btn mini tooltips">
                            <i class=" fa fa-refresh"></i>
                        </a>
                    </div>
                    <div class="btn-group hidden-phone">
                        <a data-toggle="dropdown" href="#" class="btn mini blue" aria-expanded="false">

                            <i class="fa fa-angle-down "></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                            <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                        </ul>
                    </div>
                    <div class="btn-group">
                        <a data-toggle="dropdown" href="#" class="btn mini blue">

                            <i class="fa fa-angle-down "></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                            <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                        </ul>
                    </div>

                    <ul class="unstyled inbox-pagination">

                        <li>

                        </li>
                        <li>

                        </li>
                    </ul>
                </div>
                <table class="table table-inbox table-hover">

                    <%
                        String user= (String) session.getAttribute("userid");
                        String driver = "com.mysql.jdbc.Driver";
                        String con = "jdbc:mysql://localhost:3306/gamedevstudio";
                        String req = "select * from `postulations` where `postulations`.`postuler_par` = \""+ user +"\";";



                        try {
                            // étape 1: charger la classe de driver
                            Class.forName(driver);
                            // étape 2: créer l'objet de connexion
                            Connection conn = DriverManager.getConnection(con, "root", "");
                            // étape 3: créer l'objet statement
                            PreparedStatement stmt = conn.prepareStatement(req);
                            ResultSet res = stmt.executeQuery();
                            // étape 4: exécuter la requête
                            if (res.next()) {
                                do {
                                    System.out.println("La connexion a était bien établit!!");
                                    String nomoffre = res.getString(2);
                                    String recruteur = res.getString(5);

                                    int statut=res.getInt(6);
                                    String message=res.getString(7);



                                out.print("  <tbody>\n" +
                                        "                    <tr class=\"unread\">\n" +
                                        "                        <td class=\"inbox-small-cells\">\n" +
                                        "                            <input type=\"checkbox\" class=\"mail-checkbox\">\n" +
                                        "                        </td>\n" +
                                        "                        <td class=\"inbox-small-cells\"><i class=\"fa fa-star\"></i></td>\n" +
                                        "                        <td class=\"view-message  dont-show\">Nom recruteur:"+recruteur+"</td>\n" +
                                        "                        <td class=\"view-message \">Vous a envoye:"+message+"</td>\n" +
                                        "                        <td class=\"view-message  inbox-small-cells\"><i class=\"fa fa-paperclip\"></i></td>\n" +
                                        "                        <td class=\"view-message  text-right\">Titre d'offre :"+nomoffre+" </td>\n" +
                                        "                    </tr>\n" +
                                        "\n" +
                                        "\n" +
                                        "                    </tbody>");


                                } while (res.next());
                            } else {
                            }
                            // étape 5: fermez l'objet de connexion
                            conn.close();
                        } catch (Exception e) {
                            System.out.println(e);
                        }
                    %>




                    </tbody>
                </table>
            </div>
        </aside>
    </div>
</div>
