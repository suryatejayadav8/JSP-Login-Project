<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Colorful Login Page</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#667eea,#764ba2,#ff6a88,#ff99ac);
    background-size:400% 400%;
    animation:bgAnimation 10s infinite alternate;
}

@keyframes bgAnimation{
    0%{background-position:left;}
    100%{background-position:right;}
}

.login-container{
    width:400px;
    background:rgba(255,255,255,0.15);
    backdrop-filter:blur(15px);
    padding:35px;
    border-radius:20px;
    text-align:center;
    box-shadow:0 8px 32px rgba(0,0,0,0.3);
    color:white;
}

.login-icon{
    font-size:60px;
    margin-bottom:10px;
}

h2{
    margin-bottom:20px;
}

input[type="text"],
input[type="password"]{
    width:100%;
    padding:12px;
    margin:10px 0;
    border:none;
    border-radius:10px;
    outline:none;
    font-size:15px;
}

.options{
    display:flex;
    justify-content:space-between;
    font-size:14px;
    margin:10px 0;
}

.options a{
    color:#fff;
    text-decoration:none;
}

.options a:hover{
    text-decoration:underline;
}

input[type="submit"]{
    width:100%;
    padding:12px;
    margin-top:15px;
    border:none;
    border-radius:30px;
    background:linear-gradient(to right,#ff416c,#ff4b2b);
    color:white;
    font-size:18px;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

input[type="submit"]:hover{
    transform:scale(1.05);
}

.social{
    margin-top:20px;
}

.social p{
    margin-bottom:10px;
}

.social a{
    text-decoration:none;
    font-size:25px;
    margin:0 10px;
}

.footer{
    margin-top:20px;
    font-size:14px;
}

.footer a{
    color:yellow;
    text-decoration:none;
    font-weight:bold;
}

.error{
    color:#ffeb3b;
    margin-top:10px;
}
</style>

<script>
function togglePassword(){
    var x=document.getElementById("password");
    if(x.type==="password"){
        x.type="text";
    }else{
        x.type="password";
    }
}
</script>

</head>
<body>

<div class="login-container">

    <div class="login-icon">🔐</div>

    <h2>Welcome Back</h2>

    <form action="b.jsp" method="post">

        <input type="text" name="username"
               placeholder="👤 Enter Username" required>

        <input type="password" id="password"
               name="password"
               placeholder="🔑 Enter Password" required>

        <div class="options">
            <label>
                <input type="checkbox"
                       onclick="togglePassword()">
                Show Password
            </label>

            <a href="forgot.jsp">Forgot Password?</a>
        </div>

        <label>
            <input type="checkbox" name="remember">
            Remember Me
        </label>

        <input type="submit" value="LOGIN">

    </form>

    <%
        String error=request.getParameter("error");
        if(error!=null){
    %>
        <p class="error">Invalid Username or Password</p>
    <%
        }
    %>

    <div class="social">
        <p>Login with</p>
        <a href="#">🌐</a>
        <a href="#">📘</a>
        <a href="#">🐦</a>
        <a href="#">📷</a>
    </div>

    <div class="footer">
        Don't have an account?
        <a href="register.jsp">Register Now</a>
    </div>

</div>

</body>
</html>