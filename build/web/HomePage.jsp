

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="Operations.EventHandle" %>
<%@ page import="java.util.List" %>
<%@ page import="Models.EventList" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Dashboard</title>
    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link rel="stylesheet" href="main.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/>
    <script src="https://kit.fontawesome.com/332a215f17.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <style>
        body {
            font-family: "Poppins", sans-serif;
        
            background-position: center;
            background-attachment: fixed;
            padding-left: 50px;
            padding-right: 50px;
        }
        .navbar {
            height: 80px;
            padding-left: 20px;
            padding-right: 20px;
            margin-top: 50px;
           
          
        }
        .nav-item {
            margin-right: 30px;
        }
        .nav-icon {
            color: #fff;
        }
        .main-title {
            display: inline-block;
            text-transform: uppercase;
            font-size: 2rem;
            margin-left: 1rem;
            color: #fff;
            letter-spacing: 1px;
        }
        .logout-icon {
            font-size: 1.5em;
        }
        .bars {
            color: #fff;
        }
        @media (min-width: 992px) {
            .navbar-nav .nav-link {
                padding: 15px 20px;
            }
        }
        @media (min-width: 1200px) {
            .container {
                max-width: 1630px;
            }
        }
        @media (max-width: 1275px) and (min-width: 1200px) {
            .nav-item {
                margin-right: 15px;
            }
        }
        @media (max-width: 1350px) {
            .nav-item {
                margin-right: 1px;
            }
        }
        @media (max-width: 574px) {
            .navbar-collapse {
                top: 70px;
            }
            .navbar {
                margin-top: 30px;
                height: auto;
            }
            body {
                padding-left: 15px;
                padding-right: 15px;
            }
            .main-title {
                font-size: 1.4rem;
                margin-left: 7px;
            }
            .nav-icon {
                font-size: 2em;
            }
        }
        .sum-board {
            min-height: 100px;
            margin-bottom: 30px;
            padding: 5px;
            color: white;
            box-shadow: inset 0 0 1px 1px rgba(255, 255, 255, 0.3),
                        0 3px 1px -1px rgba(0, 0, 0, 0.1);
        }
        .sum-board i {
            display: block;
            height: 70px;
            font-size: 60px;
            line-height: 100px;
            width: 100px;
            float: left;
            text-align: center;
            margin-right: 10px;
            padding-right: 10px;
            color: rgba(255, 255, 255, 0.7);
        }
        .sum-board .title {
            font-size: 12px;
            text-transform: uppercase;
            font-weight: 600;
        }
        .info-1 {
            color: #fff;
            background: linear-gradient(0.25turn, #5dc7fc, #5107fd, #f69d3c);
            box-shadow: 5px 7px 7px -1px rgba(87, 2, 224, 0.8);
        }
        .info-2 {
            color: #fff;
            background: linear-gradient(0.25turn, #f30505, #2d85f8, #f58207);
            box-shadow: 5px 7px 7px -1px rgba(224, 2, 2, 0.8);
        }
        .info-3 {
            color: #fff;
            background: linear-gradient(0.25turn, #010236, #0f8bf1, #eb7c06);
            box-shadow: 5px 7px 7px -1px rgba(1, 2, 65, 0.8);
        }
        .info-4 {
            color: #fff;
            background: linear-gradient(0.25turn, #3f87a6, #5107fd, #f69d3c);
            box-shadow: 5px 7px 7px -1px rgba(43, 2, 224, 0.8);
        }
        .sum-board .count {
            margin-top: 20px;
            font-size: 30px;
            font-weight: 600;
        }
        footer {
            margin-bottom: 35px;
        }
    </style>
</head>
<body>
    <div class="home" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#myNav" aria-controls="myNav" aria-expanded="false" aria-label="toggle navigation">
                            <span class="bars"><i class="fas fa-bars"></i></span>
                        </button>
                        <div class="collapse navbar-collapse" id="myNav">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item dropdown"> <a href="" class="nav-link" role="button"><h3>Payment History</h3></a> </li>
                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <form class="text-center mt-2" action="logOutServlet" method="post">
                                        <a href="" class="nav-link d-flex">
                                            <i class="far fa-user mr-2 logout-icon"></i>
                                            <span>Logout</span>
                                        </a>
                                    </form>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <!---Summary Board--->
    <section class="mt-5">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="sum-board info-1">
                    <i class="fa fa-cloud-download"></i>
                    <div class="count">2,257</div>
                    <div class="title">Payments</div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="sum-board info-2">
                    <i class="fas fa-shopping-cart"></i>
                    <div class="count">11,254</div>
                    <div class="title">Purchased</div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="sum-board info-3">
                    <i class="far fa-thumbs-up"></i>
                    <div class="count">2,257</div>
                    <div class="title">Order</div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="sum-board info-4">
                    <i class="fas fa-cubes"></i>
                    <div class="count">10,000</div>
                    <div class="title">Finance</div>
                </div>
            </div>
        </div>
    </section>
    <!---End of the summary Board--->

    <!---Table Section--->
    
    <section>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="active-member">
                        <div class="table-responsive">
                            
                             <form action="GenerateQrServlet" method="post">
    <table class="table table-bordered table-striped mb-0">
        <thead>
            <tr>
                <th>Payment ID</th>
                <th>Payment Name</th>
                <th>Description</th>
                <th>Amount</th>
                <th>Paid Date 
                 <th>Paid Time</th> 
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<EventList> events = (List<EventList>) request.getAttribute("events");
                if (events != null && !events.isEmpty()) {
                    for (EventList event : events) {
            %>
            <tr>
                <td><%= event.getEveId() %></td>
                <td><%= event.getEventName() %></td>
                <td><%= event.getEventDescription() %></td>
                <td>Rs. <%= event.getEventPrice() %></td>
                <td><%= event.getEventDateTime().toString().substring(0, 10) %></td>
                <td><%= event.getEventDateTime().getHour() + ":" + event.getEventDateTime().getMinute() %></td>
                <td> 
                    <input type="hidden" name="eventID" value="<%= event.getEveId() %>"/>
                    <input type="hidden" name="eventName" value="<%= event.getEventName() %>"/>
                    <input type="hidden" name="eventDescription" value="<%= event.getEventDescription() %>"/>
                    <input type="hidden" name="eventPrice" value="<%= event.getEventPrice() %>"/>
                    <input type="hidden" name="eventDate" value="<%= event.getEventDateTime().toString().substring(0, 10) %>"/>
                    <input type="hidden" value="<%= session.getAttribute("userId") %>" name="profileId">
                    <button type="submit" class="btn btn-primary">Approve</button>
                </td>
            </tr>
            <% 
                }
            }
            %>
        </tbody>
    </table>
</form>


                            <% 
                                String username = (String) session.getAttribute("username");
                                String role = (String) session.getAttribute("Role");
                                String datetime = (String) session.getAttribute("DateTime");
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

                            
                            
    <footer class="row small"></footer>
</body>
</html>
