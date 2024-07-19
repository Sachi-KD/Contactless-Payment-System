

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>Ticket Qr View</title>
    </head>
    <body style="background: #f8f9fa">
        <div class="d-flex justify-content-between align-items-center" style="height: 100vh;">
            <div></div>
            <div>
                <div class="p-0 m-0 my-2 d-flex justify-content-between">
                    <div>
                        <form action="LoadHomePage" method="post">
                            <button class="btn btn-primary">Dashboard</button>
                        </form>
                    </div>
                    <div>
                        <form action="logOutServlet" method="post">
                            <button class="btn btn-outline-primary" type="submit">Log Out</button>
                        </form>
                    </div>
                </div>
                <% String username = (String) session.getAttribute("username"); %>
                <% if (username != null) { %>
                <div class="form-control" style="width: 400px; height: 400px; border-radius: 10px; border: none;">
                    <div>
                        <img src="${pageContext.request.contextPath}/assets/QrImage/JD.png" alt="alt" class="img-fluid"/>
                    </div>
                </div>
                <h2 class="p-0 m-0 mt-2 px-2 text-center">Hello, <%= username %>!</h2>
                <p class="p-0 m-0 text-center form-text px-5">Thanks You!</p>
                  <p class="p-0 m-0 text-center form-text px-5">This is your trusted payment network</p>
                  
                     <div class="p-0 m-0 my-2 d-flex justify-content-center">
                    <div>
                        <form action="" method="post">
                            <button class="btn btn-success">Download</button>
                        </form>
                    </div>
                    </div>
                  
                <% } else { %>
                <div class="form-control" style="width: 400px; height: 400px; border-radius: 10px; border: none;">
                    <div>
                        <img src="" alt="" class="img-fluid"/>
                    </div>
                </div>
                <h4 class="text-center p-0 m-0 mt-2">You are not logged in.</h4>
                <p class="form-text p-0 m-0 text-center">Please Log in Again.</p>
                <div class="text-center mt-1">
                    <a href="index.jsp" class="btn btn-outline-primary text-center">Log In</a>
                </div>
                <% } %>
            </div>
            <div></div>
        </div>

    </body>
</html>
