<%@page import="org.hibernate.Session" %>
<%@page import="com.helper.FactoryProvider" %>
<%@page import="org.hibernate.Query" %>
<%@page import="java.util.List" %>
<%@page import="com.entities.*" %>
<%@page import="org.hibernate.Transaction" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

 <div class="container">
    <%@include file="navbar.jsp" %>
    <h1>Edit your note </h1>
    <br>
    <%
    int noteId=Integer.parseInt(request.getParameter("note_id"));
    Session s=FactoryProvider.getFactory().openSession();
	Transaction tx=s.beginTransaction();
	Note note=s.get(Note.class, noteId);
	
    %>
    <form action="UpdateServlet" method="post">
      <input value=<%=note.getId() %> name="noteId" type="hidden">
  <div class="form-group">

    <label for="title" >Note title</label>
    <br>
    <div class="col-sm-10">
      <input required name="title" type="text" class="form-control" id="title" placeholder="Enter here" value=<%=note.getTitle()%>>
    </div>
  </div>
  <div>
  
   <div class="form-group">
    <label for="content" >Note content</label>
    <br>
    <div class="col-sm-10">
      <textarea required name="content" id="content" placeholder="Enter your content here" class="form-control" style="height:100px">
      <%=note.getContent() %>
      </textarea>
    <br>
    <div class="container text-center" >
     <button type="submit" class="btn btn-success">Save Note</button>
    </div>
   
    </div>
  </div>
  </div>
</form>
    </div>
   
</body>
</html>