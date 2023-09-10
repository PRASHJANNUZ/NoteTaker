<!doctype html>
<html lang="en">

<%@page import= "java.util.List" %> 
<%@page import= "org.hibernate.*" %> 
<%@page import= "com.helper.FactoryProvider" %> 
<%@page import= "com.Entities.*" %> 


  <head>
  
  	<title>Note Taker</title>
  	<h1>Welcome To Smart Note Taker....!!</h1>
  	<!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>     
   
    
  </head>
  
  
  <body style="background: url(img/hacker.jpg); background-size: cover; background-attachment: fixed;">
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    
                    
                    <div class="card">
                        <div class="card-content">
                            <h4 style="margin-top: 10px;" class="center-align">Register here !!</h4>   
                         
                         <div class="form center-align">
                             <!--//creating form-->
                             
                             <form action="ProfileServlet" method="post">
                                 <input type="text" name="name" placeholder="Enter user name"/>
                                 <input type="password" name="password" placeholder="Enter user password"/>
                                 <input type="email" name="email" placeholder="Enter user email"/>
                                  
                                 <button type="submit" class="btn light-blue">Submit</button><br>
                                 
                             </form>
                             
                         </div>
               
        <div class="loader center-align" style="margin-top: 10px; display: none">
                             
    <div class="preloader-wrapper big active">
      <div class="spinner-layer spinner-blue">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-red">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-yellow">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-green">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>
    </div>   
                                <h5>Please wait....</h5>             
                         </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    



  </body>
</html>