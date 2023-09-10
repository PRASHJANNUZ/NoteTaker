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
<title>User Profile</title>
<%@include file="all_js_css.jsp"%>

</head>
<body>


<div class="container">
<%@include file="navbar.jsp"%>

  <br>
  <h1 class="text-uppercase">Profile details:</h1>
  
  <div class="row">
  <div class="col-12">
	  <% 
	  Session s=FactoryProvider.getFactory().openSession();
	  Query q=s.createQuery("from Profile");
	  List<Profile> list=q.list();
	  for(Profile note:list)
	  {
		  %>
		  <br><br>
		  <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Full Name  &emsp;&emsp; :   </p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"> <%= note.getName()%> </p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email  &emsp;&emsp;&emsp;&emsp; : </p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%= note.getEmail() %></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Phone  &emsp; &nbsp;&emsp;&emsp; :  </p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">9022195383</p>
              </div>
            </div>
            <hr>
            <div class="row"> 
              <div class="col-sm-3">
                <p class="mb-0">Password  &nbsp;&emsp;&emsp; :  </p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%= note.getPassword() %></p>
              </div>
            </div>
		  	<br><br>
			 <a href="LogoutServlet?profile_id=<%= note.getId() %>" class="btn btn-danger">Logout</a>	
				
		  
		  <% 
	  }
	  
	  s.close();
	  %>
  
  </div>
  
  </div>
   
  
</div>
</body>
</html>