

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="Operations.EventHandle" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>Home Page- QR Generator</title>
    </head>
    <body>
        <div class="d-flex justify-content-between p-5">
            <div class="col-md-8">
                <%@ page import="java.util.List" %>
                <%@ page import="Models.EventList" %>
                <% List<EventList> events = (List<EventList>) request.getAttribute("events"); %>

                <% if (events != null && !events.isEmpty()) { %>
                <% for (EventList event : events) { %>
                <form class="form-control p-3 my-2" style="border-radius: 8px;" action="GenerateQrServlet" method="post">
                    <h4 class="p-0 m-0">Event : <%= event.getEventName() %></h4>
                    <p class="p-0 m-0 form-text"><%= event.getEventDescription() %></p>
                    <div class="d-flex justify-content-between">
                        <div>
                            <p class="p-0 m-0">Event Price : Rs. <%= event.getEventPrice() %></p>
                            <div class="d-flex">
                                <p class="p-0 m-0 form-text"> Event Start : <%= event.getEventDateTime().toString().substring(0, 10) %></p>
                                <div class="px-2"></div>
                                <p class="p-0 m-0 form-text"> Event Time : <%= event.getEventDateTime().getHour() + ":" + event.getEventDateTime().getMinute() %></p>
                            </div>
                        </div>
                        <div class="justify-content-end text-end">
                            <!-- End of hidden inputs -->
                            <input type="hidden" value="<%= event.getEveId() %>" name="eventID">
                            <input type="hidden" value="<%= event.getEventName() %>" name="eveName">
                            <input type="hidden" value="<%= event.getEventDateTime().toString().substring(0, 10) %>" name="eventDate">
                            <input type="hidden" value="<%= session.getAttribute("userId") %>" name="profileId">
                            <button class="btn btn-danger" type="submit">Buy Now</button>
                        </div>
                    </div>
                </form>
                <% } %>
                <% } else { %>
                <p class="p-0 m-0">No events available.</p>
                <p class="form-text p-0 m-0">Please Log in Again.</p>
                <a href="index.jsp" class="btn btn-outline-primary">Log In</a>
                <% } %>
            </div>
            <div class="col-md-4 p-3">
                <img src="${pageContext.request.contextPath}/assets/Images/Hostess characters.jpg" alt="${pageContext.request.contextPath}" style="border-radius: 8px;" class="w-100 img-fuild"/>
                <% 
                    String username = (String) session.getAttribute("username");
                    String role = (String) session.getAttribute("Role");
                    String datetime = (String) session.getAttribute("DateTime");
                %>
                <% if (username != null) { %>
                <div class="text-center mt-2">
                    <h2 class="p-0 m-0 mt-2 px-2">Hello, <%= username %>!</h2>
                    <p class="p-0 m-0 mt-2 px-2"><%= role %></p>
                    <p class="p-0 m-0 px-2 form-text">Reg in <%= datetime %></p>
                </div>
                <div>
                    <div></div>
                    <div>
                        <form class="text-center mt-2" action="logOutServlet" method="post">
                            <button class="btn btn-outline-primary" type="submit">Log out</button>
                        </form>
                    </div>
                </div>
                <% } else { %>
                <h4 class="p-0 m-0 mt-2 text-center">You are not logged in.</h4>
                <p class="form-text p-0 m-0 text-center">Please Log in Again.</p>
                <div class="text-center mt-1">
                    <a href="index.jsp" class="btn btn-outline-primary">Log In</a>
                </div>
                <% } %>
            </div>
        </div>
    </body>
</html>
