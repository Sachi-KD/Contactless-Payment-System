
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="ops" class="Operations.Validations" />
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Sign Up</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
   <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/all.css'><link rel="stylesheet" href="./style.css">
<style>
  @import url('https://fonts.googleapis.com/css?family=Quicksand');

body{
  background:#f9fbfd;
  font-family: 'Quicksand', sans-serif;
  
}
#signup{
  padding-top: 50px;
}
#signup .card{
  background-color:#dfdbe5;
  border-radius:8px;
  border:0;
  box-shadow: 0 17px 50px 0 rgba(0, 0, 0, 0.19), 0 12px 15px 0 rgba(0, 0, 0, 0);
}
#signup .card .card-title{
  padding: 2rem 1.2rem 0;
  margin-bottom:0;
  text-align:center;
}
#signup .card .card-title h2{
  position:relative;
  font-size:1.2rem;
  letter-spacing:.5px;
  font-weight:bold;
  text-transform:uppercase;
  margin-bottom:20px;
}
#signup .card .card-title h2:after{
  position:absolute;
  content:'';
  bottom:-10px;
  left:50%;
  transform:translateX(-50%);
  height:2px;
  width:50px;
  background:#21253d;
}
.img-holder{
  padding: 3rem;
}
img.logo{
  display:block;
  margin-left:auto;
  margin-right:auto;
  margin-bottom:20px;
  height:80px;
}
.form{
  background:#fff;
  padding:20px 30px;
}
form label{
  font-weight: bold;
}
form .form-control{
  border-radius:1px;
  border-left:none;
  height:50px;
}
form .input-group>.input-group-prepend>.input-group-text {
    border-top-right-radius: 0;
    border-bottom-right-radius: 0;
    border-radius: 1px;
    background: #dfdbe5;
/*     border-right: none; */
}
button.btn{
  border-radius:1px;
  margin-top:15px;
  font-size: .9rem;
  text-transform: uppercase;
  letter-spacing: 1.2px;
  font-weight: 600;
  height:50px;
}
.btn-secondary{
  background-color: #3D2B3D;
}
</style>
</head>

<body>
<!-- partial:index.partial.html -->
<section id="signup" >
  <div class="container "> 
     <div class="row">
       <div class="col-md-10 mx-auto">
         <div class="card">
           <div class="row mr-0 ml-0 d-flex h-100">
           <div class="col-md-6 img-holder justify-content-center align-self-center">
             <img src="https://res.cloudinary.com/emygeek/image/upload/v1534583336/undraw_digital_nomad_9kgl_awjyq5.svg" class="img-fluid" />
           </div>
           <div class="col-md-6 form">
             <div class="card-title">
               <img src="https://res.cloudinary.com/emygeek/image/upload/v1534678336/puzzle_1_gh259m.svg" class="img-fluid logo">
             <h2>Sign up for reward</h2>
               <p>We are a small team of creatives who love to share <strong>design tips</strong>. Register for full access.</p>
           </div>
           <div class="card-body">


             <form action="registerServlet" method="post">

               <div class="form-group">
                 <label>User Name</label>
                 <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="name-addon"><i class="far fa-user"></i></span>
                    </div>
                    <input type="text" name="username"  class="form-control" placeholder="Username" aria-label="Name" aria-describedby="name-addon">
                  </div>
               </div>


               <div class="form-group">
                 <label>Password</label>
                 <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="password-addon"><i class="fas fa-fingerprint"></i></span>
                    </div>
                    <input type="password" name="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="password-addon">
                  </div>
               </div>

               <div class="form-group">
                <label>Confirm Password</label>
                <div class="input-group mb-3">
                   <div class="input-group-prepend">
                     <span class="input-group-text" id="password-addon"><i class="fas fa-fingerprint"></i></span>
                   </div>
                   <input type="password" name="confpassword"  class="form-control" placeholder="Confirm Password" aria-label="Password" aria-describedby="password-addon">
                 </div>
              </div>

              <p style="color: red;" class="form-text">
                <%= (request.getAttribute("errorMessage") == null)? "" : request.getAttribute("errorMessage") %>
              </p>




               <div class="form-group text-center">
                <button type="submit" class="btn btn-secondary">Register</button>
               </div>

               <p class="p-0 m-0 mt-3 form-text text-center px-5">If you have an already exit account, you can <a href="index.jsp">Sign in now.</a></p>
             </form>


           </div>
           </div>
             </div>
         </div> <!-- End of card -->
       </div>
     </div>
  </div>
</section>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js'></script>
</body>
</html>
