

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="ops" class="Operations.Validations" />
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Sign in</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'><link rel="stylesheet" href="./style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<STYLE>
body{
    margin:0;
    padding:0;
        overflow-x: hidden;
}

.main-bg::after{
       background-color: #fef5e4;
-webkit-border-radius: 0 0 233px 135px;
-moz-border-radius: 0 0 233px 135px;
border-radius: 0 0 233px 135px;
content: "";
position: absolute;
right: -119px;
top: -93px;
background-color: #fef5e4;
width: 466px;
height: 595px;
-webkit-transform: rotate(45deg);
transform: rotate(116deg);
z-index: -2;
}

.box-conatiner{
       contain: content;
margin: 50px auto;
height: 500px;
width: 80%;
background-color: #5d4ef3;
border-radius: 0 70px;
box-shadow: 0 0.46875rem 2.1875rem rgba(4, 9, 20, 0.03), 0 0.9375rem 1.40625rem rgba(4, 9, 20, 0.03), 0 0.25rem 0.53125rem rgba(4, 9, 20, 0.05), 0 0.125rem 0.1875rem rgba(4, 9, 20, 0.03);

}

.box-conatiner::before

{
    content: "";
background: url(https://1.bp.blogspot.com/--UQ8_O1EFN8/XWkZdpW_MMI/AAAAAAAATDE/kcJXA9nMy4ElB4NmBZDM6WwPE4JQD7ACQCLcBGAs/s1600/shape.png);
position: absolute;
right: -20px;
background-size: 100%;
top: -80px;
width: 1220px;
height: 653px;
}

/***************************/
#a {
-webkit-animation: wait 0s alternate infinite;
  animation: wait 0s alternate infinite;

}

.circle-ripple {
background-color: transparent;
width: 1px;
height: 1px;
border-radius: 50%;
-webkit-animation: ripple 0.7s linear infinite;
animation: ripple 0.7s linear infinite;
left: 60px;
position: absolute;
top: 44px;
}

@-webkit-keyframes wait {
0% {
opacity: 0;
}
20% {
opacity: 0;
}
40% {
opacity: 0;
}
60% {
opacity: 0;
}
100% {
opacity: 1;
}
}

@keyframes wait {
0% {
opacity: 0;
}
20% {
opacity: 0;
}
40% {
opacity: 0;
}
60% {
opacity: 0;
}
100% {
opacity: 1;
}
}
@-webkit-keyframes ripple {
0% {
box-shadow: 0 0 0 0 rgba(175, 166, 255, 0.3), 0 0 0 1em rgba(175, 166, 255, 0.3), 0 0 0 3em rgba(175, 166, 255, 0.3), 0 0 0 5em rgba(175, 166, 255, 0.3);
}
100% {
box-shadow: 0 0 0 1em rgba(175, 166, 255, 0.3), 0 0 0 3em rgba(175, 166, 255, 0.3), 0 0 0 5em rgba(175, 166, 255, 0.3), 0 0 0 8em rgba(175, 166, 255, 0);
}
}
@keyframes ripple {
0% {
box-shadow: 0 0 0 0 rgba(175, 166, 255, 0.3), 0 0 0 1em rgba(175, 166, 255, 0.3), 0 0 0 3em rgba(175, 166, 255, 0.3), 0 0 0 5em rgba(175, 166, 255, 0.3);
}
100% {
box-shadow: 0 0 0 1em rgba(175, 166, 255, 0.3), 0 0 0 3em rgba(175, 166, 255, 0.3), 0 0 0 5em rgba(175, 166, 255, 0.3), 0 0 0 8em rgba(175, 166, 255, 0);
}
}


/**********loginform*/
body,html{height:100%;font-family:Ubuntu-Regular,sans-serif}a{font-family:Ubuntu-Regular;font-size:14px;line-height:1.7;color:#666;margin:0;transition:all .4s;-webkit-transition:all .4s;-o-transition:all .4s;-moz-transition:all .4s}
a:focus{outline:none!important}a:hover{text-decoration:none;color:#1b3815}h1,h2,h3,h4,h5,h6{margin:0}p{font-family:Ubuntu-Regular;font-size:14px;line-height:1.7;color:#666;margin:0}ul,li{margin:0;list-style-type:none}input{outline:none;border:none}input[type=number]{-moz-appearance:textfield;appearance:none;-webkit-appearance:none}input[type=number]::-webkit-outer-spin-button,input[type=number]::-webkit-inner-spin-button{-webkit-appearance:none}textarea{outline:none;border:none}textarea:focus,input:focus{border-color:transparent!important}input::-webkit-input-placeholder{color:#1b3815}input:-moz-placeholder{color:#1b3815}input::-moz-placeholder{color:#1b3815}input:-ms-input-placeholder{color:#1b3815}textarea::-webkit-input-placeholder{color:#1b3815}textarea:-moz-placeholder{color:#1b3815}textarea::-moz-placeholder{color:#1b3815}textarea:-ms-input-placeholder{color:#1b3815}button{outline:none!important;border:none;background:0 0}button:hover{cursor:pointer}iframe{border:none!important}.txt1{font-family:Ubuntu-Regular;font-size:15px;color:#999;line-height:1.4}.txt2{font-family:Ubuntu-Regular;font-size:15px;color:#57b846;line-height:1.4}.txt3{font-family:Ubuntu-Bold;font-size:15px;color:#57b846;line-height:1.4;text-transform:uppercase}.limiter{width:100%;margin:0 auto}.container-login100{width:100%;min-height:100vh;display:-webkit-box;display:-webkit-flex;display:-moz-box;display:-ms-flexbox;display:flex;flex-wrap:wrap;justify-content:center;align-items:center;padding:15px;position:relative;background-color:#fff}.wrap-login100{    width: 450px;
background: #fff;
border-radius: 20px;
overflow: hidden;
box-shadow: 0 3px 20px 0 rgba(0,0,0,.1);
-moz-box-shadow: 0 3px 20px 0 rgba(0,0,0,.1);
-webkit-box-shadow: 0 3px 20px 0 rgba(0,0,0,.1);
-o-box-shadow: 0 3px 20px 0 rgba(0,0,0,.1);
-ms-box-shadow: 0 3px 20px 0 rgba(0,0,0,.1);
height: 451px;
border: 1px solid #dedede;
margin: 30px auto;}.login100-form{width:100%;position:relative}.login100-form-title{font-family:JosefinSans-Bold;font-size:30px;color:#fff;line-height:1.2;text-align:center;display:block;width:100%;top:0;left:0;background-color:#5d4ef3;padding-top:50px;padding-bottom:39px}.wrap-input100{width:100%;background-color:#fff;border-radius:27px;position:relative;z-index:1}.input100{font-family:Ubuntu-Bold;font-size:15px;color:#1b3815;line-height:1.2;position:relative;display:block;width:100%;height:55px;background:#ebebeb;border-radius:27px;padding:0 35px}.focus-input100{display:block;position:absolute;z-index:-1;width:100%;height:100%;top:0;left:50%;-webkit-transform:translateX(-50%);-moz-transform:translateX(-50%);-ms-transform:translateX(-50%);-o-transform:translateX(-50%);transform:translateX(-50%);border-radius:31px;background-color:#ebebeb;pointer-events:none;-webkit-transition:all .4s;-o-transition:all .4s;-moz-transition:all .4s;transition:all .4s}
.p-r-55{padding-right: 55px;}
.p-l-55{ padding-left: 55px;}
.p-t-178{padding-top: 178px;}
.m-b-16{ margin-bottom: 16px;}
.p-t-20{padding-top:20px;}
.txt1 {
font-family: Ubuntu-Regular;
font-size: 15px;
color: #999;
line-height: 1.4;
}
.p-b-9 {
padding-bottom: 9px;
}
.txt3 {
font-family: Ubuntu-Bold;
font-size: 15px;
color: #57b846;
line-height: 1.4;
text-transform: uppercase;
}
.flex-col-c {
display: -webkit-box;
display: -webkit-flex;
display: -moz-box;
display: -ms-flexbox;
display: flex;
-webkit-flex-direction: column;
-moz-flex-direction: column;
-ms-flex-direction: column;
-o-flex-direction: column;
flex-direction: column;
-ms-align-items: center;
align-items: center;
}
.p-b-40 {
padding-bottom: 40px;
}
.p-t-140
{
padding-top: 40px;
}

.login100-form-btn {
display: -webkit-box;
display: -webkit-flex;
display: -moz-box;
display: -ms-flexbox;
display: flex;
justify-content: center;
align-items: center;
padding: 0 20px;
width: 100%;
height: 50px;
background-color: #5d4ef3;
border-radius: 25px;
font-family: Ubuntu-Bold;
font-size: 15px;
color: #fff;
line-height: 1.2;
text-transform: uppercase;
-webkit-transition: all .4s;
-o-transition: all .4s;
-moz-transition: all .4s;
transition: all .4s;
}
.text-right {
text-align: right!important;
}
.p-t-13 {
padding-top: 13px;
}
.p-b-23 {
padding-bottom: 23px;
}
.heading-left{
color: white;
width: 65%;
text-align: center;
text-transform: uppercase;
line-height: 50px;
margin: 160px auto;
letter-spacing: 4px;
}


@media only screen and (max-width: 600px) {

.wrap-login100 {
width: 100%;
}

.wrap-login100 {
width: 100%;
right: -272px;
}

.heading-left {
font-size: 19px;
line-height: 34px;
}

.p-l-55 {
padding-left: 20px;
}
.p-r-55 {
padding-right: 20px;
}
.input100 {
height:40px;
}

.login100-form-btn
{
height:40px;
}
.wrap-login100
{
width:95%;
}
}

@media only screen and (min-width: 401px) and (max-width: 1070px)  {
.box-conatiner::before {
background-size: 48%;
top: -80px;
background-repeat: no-repeat;
background:none;
}

.heading-left 
{
font-size: 24px;
line-height: 40px;
margin: 235px auto;
letter-spacing: 4px;
}

.wrap-login100 {
width: 90%;
}
}

</STYLE>
</head>



<body>
<!-- partial:index.partial -->
<div class="main-bg">
        <div class="box-conatiner">
            <div id="a">
                <div class="circle-ripple"></div>
            </div>

            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <h1 class="heading-left">For Continue Create a New Account</h1>
                </div>
                <div class="col-sm-6 col-md-6">
                    <div class="wrap-login100">
                        <span class="login100-form-title">
                            Sign up
                        </span>


                        <form class="login100-form validate-form p-l-55 p-r-55 p-t-20" action="registerServlet" method="post">
                           
                            <div class="wrap-input100 validate-input m-b-16" data-validate="Please enter username">
                                <input class="input100" type="text" name="username" placeholder="Username">
                                <span class="focus-input100"></span>
                            </div>

                            <div class="wrap-input100 validate-input m-b-16" data-validate="Please enter password">
                                <input class="input100" type="password" name="password" placeholder="Password">
                                <span class="focus-input100"></span>
                            </div>

                            <div class="wrap-input100 validate-input" data-validate="Please enter password">
                                <input class="input100" type="password" name="confpassword" placeholder="Confirm Password">
                                <span class="focus-input100"></span>
                            </div>

                            <p style="color: red;" class="form-text">
                                <%= (request.getAttribute("errorMessage") == null)? "" : request.getAttribute("errorMessage") %>
                            </p>
                            
                            <div class="text-right p-t-8 p-b-15">
                                
                            </div>
                            <div class="container-login100-form-btn">
                                <button class="login100-form-btn">
                                    Register
                                </button>
                            </div>
                             <p class="p-0 m-0 mt-3 form-text text-center px-5">If you already have an account<a href="index.jsp"><h7 style="color: blue;">Sign in</h7></a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
                            
  
</body>
</html>
