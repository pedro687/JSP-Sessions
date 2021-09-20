<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/login.css>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <title>JSP - Hello World</title>
</head>
<style>
    .box {
        width: 500px;
        margin: 200px 0;
    }

    .shape1{
        position: relative;
        height: 150px;
        width: 150px;
        background-color: #0074d9;
        border-radius: 80px;
        float: left;
        margin-right: -50px;
    }
    .shape2 {
        position: relative;
        height: 150px;
        width: 150px;
        background-color: #0074d9;
        border-radius: 80px;
        margin-top: -30px;
        float: left;
    }
    .shape3 {
        position: relative;
        height: 150px;
        width: 150px;
        background-color: #0074d9;
        border-radius: 80px;
        margin-top: -30px;
        float: left;
        margin-left: -31px;
    }
    .shape4 {
        position: relative;
        height: 150px;
        width: 150px;
        background-color: #0074d9;
        border-radius: 80px;
        margin-top: -25px;
        float: left;
        margin-left: -32px;
    }
    .shape5 {
        position: relative;
        height: 150px;
        width: 150px;
        background-color: #0074d9;
        border-radius: 80px;
        float: left;
        margin-right: -48px;
        margin-left: -32px;
        margin-top: -30px;
    }
    .shape6 {
        position: relative;
        height: 150px;
        width: 150px;
        background-color: #0074d9;
        border-radius: 80px;
        float: left;
        margin-right: -20px;
        margin-top: -35px;
    }
    .shape7 {
        position: relative;
        height: 150px;
        width: 150px;
        background-color: #0074d9;
        border-radius: 80px;
        float: left;
        margin-right: -20px;
        margin-top: -57px;
    }
    .float {
        position: absolute;
        z-index: 2;
    }

    .form {
        margin-left: 145px;
    }
</style>

<%
    if (request.getParameter("username") != null && request.getParameter("password") != null) {
        session.setAttribute("username", request.getParameter("username"));
    }

    if(request.getParameter("logout")!=null){
    session.removeAttribute("username");
    response.sendRedirect(request.getRequestURI());
    }
%>
<body>
<%@include file="WEB-INF/jspf/header.jspf"%>

<%
    if (request.getParameter("username") == null){
%>
<div class="container">
    <div id="login-row" class="row justify-content-center align-items-center">
        <div id="login-column" class="col-md-6">
            <div class="box">
                <div class="shape1"></div>
                <div class="shape2"></div>
                <div class="shape3"></div>
                <div class="shape4"></div>
                <div class="shape5"></div>
                <div class="shape6"></div>
                <div class="shape7"></div>
                <div class="float">
                    <form class="form" method="post">
                        <div class="form-group">
                            <label for="username" class="text-white">Username:</label><br>
                            <input type="text" name="username" id="username" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password" class="text-white">Password:</label><br>
                            <input type="text" name="password" id="password" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%
    } else{
%>

<%
    String username = request.getParameter("username");
%>

<h1>
    <form>
        <input type="submit" name="logout" value="Logout"/> |
    </form>
<%=
    "Bem-vindo: " + username
%>
</h1>
<h1>
    <%=
    " Seus numeros da sorte: "
    %>
</h1>

<%
    for (int i = 0; i < 6; i++) {
%>
 <h1>
     <%= (int)(Math.random()*100)%>
 </h1>
<%
    }}
%>
<br/>
</body>
</html>