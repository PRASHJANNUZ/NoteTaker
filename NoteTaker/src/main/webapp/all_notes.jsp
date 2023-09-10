<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import= "java.util.List" %> 
<%@page import= "org.hibernate.*" %> 
<%@page import= "com.helper.FactoryProvider" %> 
<%@page import= "com.Entities.*" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes: Note Taker</title>
<%@include file="all_js_css.jsp"%>


</head>
<body>

 <div class="container">
  <%@include file="navbar.jsp"%>
  <br>
  <h1 class="text-uppercase">All Notes:</h1>
  
  <div class="row">
  <div class="col-12">
	  <% 
	  Session s=FactoryProvider.getFactory().openSession();
	  Query q=s.createQuery("from Note");
	  List<Note> list=q.list();
	  for(Note note:list)
	  {
		  %>
		  
				<div class="card text-center mt-1"  >
				  <img class="card-img-top m-2 mx-auto" style="max-width:100px;"src="img/pencil.png" alt="Card image cap">
				  <div class="card-body">
				    <h2 class="card-title"><%=note.getTitle()%></h2><br>
				    <h5> <%= note.getContent() %><br><br> </h5>
				    <h5 class="text-primary"><%= note.getAddedDate() %></h5>
				    <div class="container text-center mt-2">
				    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
				    <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
				    
				    </div>
				  </div>
				</div>
		  
		  <% 
	  }
	  
	  s.close();
	  %>
  
  </div>
  
  </div>
   
  
</div>
</body>
</html>