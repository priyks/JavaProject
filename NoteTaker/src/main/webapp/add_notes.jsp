<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Add Notes : Home Page </title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<br>
<h1>Please fill your note details</h1>
<!-- this is add form  -->
<form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title" >Note title</label>
    <br>
    <div class="col-sm-10">
      <input required name="title" type="text" class="form-control" id="title" placeholder="Enter here" >
    </div>
  </div>
  <div>
  
   <div class="form-group">
    <label for="content" >Note content</label>
    <br>
    <div class="col-sm-10">
      <textarea required name="content" id="content" placeholder="Enter your content here" class="form-control" style="height:100px" ></textarea>
    <br>
    <div class="container text-center" >
     <button type="submit" class="btn btn-primary">Add</button>
    </div>
   
    </div>
  </div>
  </div>
</form>
</body>
</html>