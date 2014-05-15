<%-- 
    Document   : download
    Created on : 27-mrt-2014, 14:04:43
    Author     : Jeroen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MyVibe Music Store</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap-responsive.css" rel="stylesheet" media="screen">
        <link href="css/home.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <c:if test="${empty(sessionScope.currentSessionUser)}">
            <c:redirect url="/index.jsp"/>
        </c:if>
        <div class="container">
            <div class="row">
                <div class="span8">
                    <h1>MyVibe</h1>
                </div>
                <div class="span4">
                    <h4>Welkom ${currentSessionUser.firstName}</h4>
                    <a href="LogOut" target="_parent"><button class="btn btn-danger">Log uit</button></a><a href="profile.jsp" target="_parent"><button class="btn">Profiel</button></a>
                </div>
            </div>

            <div class="row" id="menu">
                <nav role="navigation" class="navbar navbar-default">
                    <ul class="nav navbar-nav">
                        <li><a href="HomeServlet">Home</a></li>
                        <li><a href="OverzichtTracksperuserServlet">Mijn afspeellijst</a></li>
                        <li class="active"><a href="#">Koop een nummer</a></li>
                        <c:if test="${!empty(sessionScope.currentSessionArtist)}">
                            <li><a href="upload.jsp">Upload een nummer</a></li>
                        </c:if>
                    </ul>
                </nav>
            </div>
            <form action="OverzichtTracks" method="post">
                <select name="sorting" id="formday" >
                    <option value="1" ${sort.sort == 1 ? "selected" : ""} >Trackname</option>
                    <option value="2" ${sort.sort == 2 ? "selected" : ""} >Artist</option>
                    <option value="3"${sort.sort == 3 ? "selected" : ""}>Release date</option>
                    <option value="4"${sort.sort == 4 ? "selected" : ""}>Price</option>

                </select>
                <select name="sortdirection" id="formday" >
                    <option value="10" ${sort.sortdirection == 10 ? "selected" : ""} >Aflopend</option>
                    <option value="20"${sort.sortdirection == 20 ? "selected" : ""}>Oplopend</option>


                </select>
                <input type="submit" value ="sorteer" name = "btnSort">
            </form>
            <table class="table table-condensed">
                <tr>
                    <th></th>
                    <th></th>
                    <th>Track Name</th>
                    <th>Artist</th>
                    <th>Release date</th>
                    <th>Price</th>
                    <th></th>
                </tr>
                <c:forEach items="${tracks}" var="track" varStatus="status">
                    <form action="downloadServlet" method="post">
                        <tr>
                            <td><c:out value="${status.count}"/></td>
                            <td><input type="hidden" name="trackid" value="${track.trackid}" /></td>
                            <td>${track.trackname}</td>
                            <td>${track.artist_artistid}</td>
                            <td>${track.trackreleasedate}</td>
                            <td>${track.trackprice}</td>
                            <td ${trackexists[track.trackid] != true ? "style='display:none;'" : ""}><input type="submit" value="Koop" ></td>
                            <td ${trackexists[track.trackid] != false ? "style='display:none;'" : ""}><p><i class="icon-ok"></i> Al gekocht</p></td>
                        </tr>
                    </form>
                </c:forEach>
            </table>

        </div>
    </body>
</html>
