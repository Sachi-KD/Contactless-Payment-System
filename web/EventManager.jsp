

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Payment</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'><link rel="stylesheet" href="./style.css">
<style>
/* Framework */
.row{
  display:flex;
  flex-flow:row wrap;
}
.normal-value{
  color:#777;
}
.special-value{
  color:#1652F0;
}
.bold{
  font-weight:bold;
}
.expensive{
  color:#FC90A4;
}
/* End Framework */

*{box-sizing:border-box;}
body{
  margin:0;
  padding:0;
  font-family: Arial, Helvetica, sans-serif;
}
.dashboard{
  display:flex;
  flex-flow:row wrap;
}

/* Start left Side */

.dashboard .left-side{
  width:60px;
  height:100%;
  background-color:#0D40C6;
  position:fixed;
  left:0;
  top:0;
}
.dashboard .left-side nav{
  margin-top:60px;
}
.dashboard .left-side nav a{
 display:block;
  padding:14px;
  margin-bottom:10px;
  border-radius:5px;
  color:#fff;
  text-align:center;
  text-decoration:none;
}
.dashboard .left-side nav a.active{
  background-color:#1652F0;
}

.dashboard .right-side{
  padding-left:80px;
  flex:95%;
}

.dashboard .right-side nav{
  display:flex;
  flex-flow:row wrap;
  align-items:center;
  padding:20px 20px 20px 10px;
  position:relative;
}
.dashboard .right-side nav::after{
  content:"";
  position:absolute;
  bottom:0;
  left:-20px;
  background-color:#EEF2FE;
  width:100%;
  height:2px;
}
.dashboard .right-side nav .title,
.dashboard .right-side nav .list{
  flex:50%;
}
.dashboard .right-side nav .title h2{
  margin:0;
  color:#1652F0;
}
.dashboard .right-side nav .title h2 span{
  background-color:#1652F0;
  width:35px;
  height:35px;
  text-align:center;
  border-radius:10px;
  display:inline-block;
  font-size:25px;
  line-height:35px;
  color:#fff;
}
.dashboard .right-side nav .list{
  text-align:right;
}
.dashboard .right-side nav .list ul{
  list-style-type:none;
  padding:0;
  margin:0;
}
.dashboard .right-side nav .list ul li{
  padding:0 10px;
  display:inline-block;
}
.dashboard .right-side nav .list ul li p{
  display:inline-block;
  margin:0;
  width:130px;
  text-align:center;
  padding:8px 0;
}
.dashboard .right-side nav .list ul li p:nth-child(1){
  background-color:#EEF2FE;
  border:1px solid #EEF2FE;
  color:#1652F0;
  border-top-left-radius:30px;
  border-bottom-left-radius:30px;
}
.dashboard .right-side nav .list ul li p:nth-child(2){
  border:1px solid #eee;
  color:#999;
  border-top-right-radius:30px;
  border-bottom-right-radius:30px;
}
.dashboard .right-side nav .list ul li p i{
  padding-left:5px;
  font-size:17px;
}
.dashboard .right-side nav .list ul li i.fa-1{
  width:40px;
  height:40px;
  background-color:#1652F0;
  text-align:center;
  border-radius:50%;
  line-height:40px;
  color:#fff;
  margin-right:5px;
}
.dashboard .right-side nav .list ul li a{
  text-decoration:none;
}
.dashboard .right-side nav .list ul li a span{
  color:#1652F0;
  padding-right:10px;
  font-size:15px;
  font-weight:bold;
}
.dashboard .right-side nav .list ul li a i.fa-2{
  color:#1652F0;
}

/* start user-welcome */

.dashboard .right-side .user-welcome{
  padding:10px;
}
.dashboard .right-side .user-welcome p{
  color:#777;
}
.dashboard .right-side .user-welcome p span{
  color:#1652F0;
  font-weight:bold;
}

.dashboard .payment{
  padding-left:30px;
  padding-right:30px;
  padding-top:30px;
}
.dashboard .payment .row .pay-left{
  flex:40%;
}
.dashboard .payment .row .pay-right{
  flex:60%;
}
.dashboard .payment .row .pay-left > .row{
  padding-left:10px;
  padding-right:10px;
}
.dashboard .payment .row .pay-left .row .feat-btn{
  flex:49%;
}
.dashboard .payment .row .pay-left .row .feat-btn:not(:last-of-type){
  margin-right:2%;
}
.dashboard .payment .row .pay-left .row .feat-btn button{
  border:0;
  padding:14px 16px;
  width:100%;
  font-weight:bold;
  border-radius:3px;
}
.dashboard .payment .row .pay-left .row .feat-btn button.btn-1{
  background-color:#1652F0;
  color:#fff;
  transition:background 0.2s linear;
}
.dashboard .payment .row .pay-left .row .feat-btn button.btn-1:hover{
  background-color:#0D40C6;
}
.dashboard .payment .row .pay-left .row .feat-btn button.btn-2{
  background-color:transparent;
  border:1px solid #eee;
  color:#1652F0;
}


.dashboard .payment .row .pay-left .ticket{
  padding-top:20px;
  padding-bottom:20px;
}
.dashboard .payment .row .pay-left .ticket .input:not(:last-of-type){
  margin-bottom:7%;
}
.dashboard .payment .row .pay-left .ticket .input:nth-child(3){
  margin-bottom:0 !important;
}
.dashboard .payment .row .pay-left .ticket .input .row{
  border-radius:3px;
  background-color:#F2F6FE;
}
.dashboard .payment .row .pay-left .ticket .input .row .select-info,
.dashboard .payment .row .pay-left .ticket .input .row .amount{
  padding:14px 20px;
  flex:50%;
}
.dashboard .payment .row .pay-left .ticket .input .row .amount{
  padding-left:10px;
}
.dashboard .payment .row .pay-left .ticket .input .row .amount p{
  margin:0;
  color:#8494B3;
}
.dashboard .payment .row .pay-left .ticket .input .row .select-info select{
  font-size:16px;
  color:#8494B3;
}
.dashboard .payment .row .pay-left .ticket .input .row .select-info select,
.dashboard .payment .row .pay-left .ticket .input .row .select-info input
{
  outline:none;
  background-color:inherit;
  width:100%;
  border:0;
}

.dashboard .payment .row .pay-left .ticket .about-payment{
 margin-top:20px;
}
.dashboard .payment .row .pay-left .ticket .about-payment .row .txt-limit,
.dashboard .payment .row .pay-left .ticket .about-payment .row .txt-remaining{
  flex:50%;
}
.dashboard .payment .row .pay-left .ticket .about-payment .row .txt-limit span{
  color:#777;
}
.dashboard .payment .row .pay-left .ticket .about-payment .row .txt-remaining{
  text-align:right;
}
.dashboard .payment .row .pay-left .ticket .about-payment .txt-remaining span{
  color:#1652F0;
  font-weight:bold;
  margin:0;
}


.dashboard .payment .row .pay-left .ticket .exchange{
  margin-top:30px;
}
.dashboard .payment .row .pay-left .ticket .exchange button.exchange-btn{
  border:0;
  padding:14px 19px;
  background-color:#10D876;
  color:#fff;
  text-align:center;
  width:100%;
  border-radius:3px;
  transition:background 0.2s linear;
}
.dashboard .right-side .payment .row .pay-left .ticket .exchange button.exchange-btn:hover{
  background-color:#0EC06B;
}
.dashboard .right-side .payment .row .pay-left .note{
  padding-top:40px;
  padding-bottom:10px;
}
.dashboard .right-side .payment .row .pay-left .note p{
  line-height:2;
  color:#777;
  font-size:14px;
}

.dashboard .right-side .payment .row .pay-right{
  padding-left:80px;
  
}

.dashboard .right-side .payment .row .pay-right .accounts .row .account{
  flex:50%;
  display:flex;
  flex-flow:row wrap;
}
.dashboard .right-side .payment .row .pay-right .accounts .row .account .img img{
  border-radius:50%;
}
.dashboard .right-side .payment .row .pay-right .accounts .row .account:nth-child(2){
 direction:rtl;
}
.dashboard .right-side .payment .row .pay-right .accounts .row .account:nth-child(1) .info{
  padding-left:15px;
}
.dashboard .right-side .payment .row .pay-right .accounts .row .account:nth-child(2) .info{
  padding-right:15px;
}
.dashboard .right-side .payment .row .pay-right .accounts .row .account .info p{
  margin:0;
  margin-top:5px;
}
.dashboard .right-side .payment .row .pay-right .accounts .row .account .info p:nth-child(1){
  margin-top:10px;
}
.dashboard .right-side .payment .row .pay-right .accounts .row .account .info span{
  color:#1652F0;
  display:block;
  margin-top:10px;
}

.dashboard .right-side .payment .row .pay-right .items{
  padding-top:30px;
  padding-bottom:30px;
}
.dashboard .right-side .payment .row .pay-right .items .item{
  background-color:#F2F6FE;
  padding:20px;
  border-left:7px solid #dae6fc;
  border-radius:3px;
}
.dashboard .right-side .payment .row .pay-right .items .item:not(:last-of-type){
  margin-bottom:2%;
}
.dashboard .right-side .payment .row .pay-right .items .item .row .title,
.dashboard .right-side .payment .row .pay-right .items .item .row .value{
  flex:50%;
}
.dashboard .right-side .payment .row .pay-right .items .item .row .title p,
.dashboard .right-side .payment .row .pay-right .items .item .row .value p{
  margin:0;
}
.logout-container {
    display: flex;
    align-items: center;
}

.logout-container .fa-sign-out {
    margin-right: 10px; /* Adjust the spacing between the icon and the button */
}

.logout-form {
    margin: 0; /* Remove default form margins */
}

.logout-form button {
    border: none;
    background: none;
    cursor: pointer;
    font-size: 16px; /* Adjust font size if needed */
}


</style>

</head>


<body>
<!-- partial:index.partial.html -->
<div class="dashboard">
  <!-- Start Left-Side -->
  <div class="left-side">
    <nav>
      <a href="#"><i class=""></i></a>
      <a class="active" href="#"><i class="fa fa-user-o"></i></a>
      <a href="#"><i class=""></i></a>
      <a href="#"><i class=""></i></a>
    </nav>
  </div>
  
  <!-- End Left-Side -->
  
  
  
  <!-- Start Right-Side -->
  
  <div class="right-side">
    <nav>
      <div class="title">
        <h2><span>C</span>&nbsp;PS</h2>
      </div>
      <div class="list">
        <ul>
          <li>
            
          </li>
           <li class="logout-container">
          <i class="fa fa-sign-out fa-1"></i>
           <form action="logOutServlet" method="post" class="logout-form">
                <button type="submit"><span>LogOut</span></button>
            </form>
           </li>

         
        </ul>
      </div>
    </nav>
    
    <div class="user-welcome">
      <p><span>Welcome Back,</span> Username</p>
      <p>Registered on, Date</p>
    </div>
    
    <!-- Start payment -->
    
    <div class="payment">
      <div class="row">
        
        
        <div class="pay-left">
     
          
          <!-- Start Ticket -->
           <form action="EventCreateServlet" method="post">
          
          <div class="ticket">
            
            <div class="input">
              <p>Payment Name</p>
              <div class="row">
                <div class="select-info">
                
                  <input type="text" name="eveName" placeholder="Payment Name">
              
                </div>
                <div class="amount">
                  <p></p>
                </div>
              </div>
            </div>
            
            <div class="input">
              <p>Payment Method</p>
              <div class="row">
                <div class="select-info">
               
                  <input type="text" name="eveDes"  placeholder="Payment Method">
               
                </div>
                <div class="amount">
                  <p></p>
                </div>
              </div>
            </div>
            
            <div class="input">
              <p>Amount</p>
              <div class="row">
                <div class="select-info">
                  <input type="text"  name="evePri"   placeholder="Amount">
                </div>
                <div class="amount">
                  <p>LKR</p>
                </div>
              </div>
            </div>
            
         
             
            <div class="input">
              <p>Event Date and Time</p>
              <div class="row">
                <div class="select-info">
                  
                  <input class="form-control" type="datetime-local" name="eveDate"/>
                </div>
                <div class="amount">
                  
                </div>
              </div>
            </div>
            
            <div class="exchange">
            <button class="exchange-btn">Make Payment</button>
          </div>
          </div>
          
        </form>
          <!-- End Ticket -->
          
          <div class="note">
           
          </div>
          
        </div>
        
        
        
        
        <!-- Start pay-right -->
        
        <div class="pay-right">
          
          <!-- start accounts -->
          
          <div class="accounts">
            <div class="row">
              
              <div class="account">
                <div class="img">
                 
                </div>
                
                <div class="info">
                  <p><b></b></p>
                  <p style="color:#777;"></p>
                  <span></span>
                </div>
                
              </div>
              
              <div class="account">
                <div class="img">
                  
                </div>
                <div class="info">
                  <p><b></b></p>
                  <p style="color:#777;"></p>
                  <span></span>
                </div>
              </div>
            </div>
          </div>
          
          <!-- End accounts -->
          
          
          
          <!-- Start items -->
          
          <div class="items">
            
            <div class="item">
              <div class="row">
                <div class="title">
                  <p class="special-value bold">You are selling</p>
                </div>
                <div class="value">
                  <p class="special-value">0.00254 BTC</p>
                </div>
              </div>
            </div>
            
             <div class="item">
              <div class="row">
                <div class="title">
                  <p class="normal-value">You are selling</p>
                </div>
                <div class="value">
                  <p class="normal-value">0.00254 BTC</p>
                </div>
              </div>
            </div>
            
            <div class="item">
              <div class="row">
                <div class="title">
                  <p class="normal-value">Payment Method</p>
                </div>
                <div class="value">
                  <p class="normal-value">Bank of Ceylon ***********5245</p>
                </div>
              </div>
            </div>
            
            <div class="item">
              <div class="row">
                <div class="title">
                  <p class="normal-value">Make Payment</p>
                </div>
                <div class="value">
                  <p class="normal-value">0.00212455 BTC</p>
                </div>
              </div>
            </div>
            
          
            
            <div class="item">
              <div class="row">
                <div class="title">
                  <p class="normal-value">Total</p>
                </div>
                <div class="value">
                  <p class="normal-value">$854.00 LKR</p>
                </div>
              </div>
            </div>
            
            <div class="item">
              <div class="row">
                <div class="title">
                  <p class="normal-value bold">Vat</p>
                </div>
                <div class="value">
                  <p class="expensive">$25.00 LKR</p>
                </div>
              </div>
            </div>
            
            <div class="item">
              <div class="row">
                <div class="title">
                  <p class="normal-value">Sub Total</p>
                </div>
                <div class="value">
                  <p class="normal-value">$1232.00 LKR</p>
                </div>
              </div>
            </div>
            
          </div>
          
          <!-- End items -->
          
        </div>
        
        <!-- End pay-right -->
        
      </div>
    </div>
    
    <!-- End payment -->
    
  </div>
  <!-- End Right-Side -->
  

</div>
<!-- partial -->
  
</body>
</html>
