
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
    String username = null;
    if(session.getAttribute("username") != null){
        username = (String) session.getAttribute("username");
    }

%>
<body>
<%@include file="WEB-INF/jspf/header.jspf"%>

    <%
        if (session.getAttribute("username") == null) {
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
        } else {
    %>
    <h1 style="color: cornflowerblue">Sobre mim:</h1>
    <p>
        Me chamo Pedro Emanoel, Sou desevolvedor Java web, trabalho como dev e estudo na fatec pg
    </p>
    <h1>RA: 1290482012028</h1>
    <h1>Github: <a href="https://github.com/PedroSpiet">Acesse aqui</a></h1>
<%
    }
%>
</body>
</html>