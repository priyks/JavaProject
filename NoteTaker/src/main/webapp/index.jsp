<%@page import="java.util.Date" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<%@include file="all_js_css.jsp" %>
  </head>
  <body>
    <div class="container">
    <%@include file="navbar.jsp" %>
   <p> <h1>The digital notebook that helps you study
Improve your learning workflow with instantly generated notes</h1></p>
    <img class="card-img-top pl-4 pt-4 mx-auto" src="img/noteimg.jpg" style="max-width:400px;" alt="Card image cap">
    <%
    Date date=new Date();
    %>
    </div>
   <br>
   <div class="container text-right" >
     <span class="badge badge-info"><%=date %></span>
    </div>
  </body>
</html>