<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<title>Note Taker</title>
  	<%@include file="all_js_css.jsp"%>
  	
</head>
<body>
	
	<div class="container">
  <%@include file="navbar.jsp"%>
  <br>
  <div class="card py-5">
  <img alt="" class="img-fluid mx-auto " style="max-width:300px;" src="img/pencil.png"/>
  <h1 class="text-primary text-uppercase text-center mt-3">Start Taking your Notes</h1>
  <div class="container text-center"><br>
  <a href="add_note.jsp" class="btn btn-outline-primary text-center">Start here</a>
  </div>
  </div>
  
  </div>
</body>
</html>