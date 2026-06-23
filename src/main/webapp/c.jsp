<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome & Registration Page</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#667eea,#764ba2,#6dd5ed);
    background-size:400% 400%;
    animation:bgMove 10s ease infinite;
}

@keyframes bgMove{
    0%{background-position:0% 50%;}
    50%{background-position:100% 50%;}
    100%{background-position:0% 50%;}
}

.container{
    width:450px;
}

.welcome-box{
    background:rgba(255,255,255,0.15);
    backdrop-filter:blur(15px);
    border:1px solid rgba(255,255,255,0.3);
    padding:35px;
    border-radius:25px;
    text-align:center;
    box-shadow:0 8px 32px rgba(0,0,0,0.25);
    color:white;
}

.icon{
    font-size:70px;
    margin-bottom:10px;
}

h2{
    margin-bottom:10px;
}

.tagline{
    font-size:18px;
    margin-bottom:20px;
    color:#f1f1f1;
}

hr{
    border:none;
    height:1px;
    background:rgba(255,255,255,0.3);
    margin:20px 0;
}

h3{
    margin-bottom:15px;
}

form{
    text-align:left;
}

.input-group{
    margin-bottom:15px;
}

input{
    width:100%;
    padding:12px;
    border:none;
    border-radius:10px;
    outline:none;
    font-size:15px;
}

input:focus{
    box-shadow:0 0 10px #fff;
}

.btn{
    width:100%;
    padding:12px;
    border:none;
    border-radius:10px;
    cursor:pointer;
    font-size:16px;
    font-weight:bold;
    transition:0.3s;
    margin-top:10px;
}

.register-btn{
    background:#00c853;
    color:white;
}

.register-btn:hover{
    background:#00a844;
    transform:scale(1.03);
}

.logout-btn{
    display:block;
    text-decoration:none;
    text-align:center;
    background:#ff1744;
    color:white;
    padding:12px;
    border-radius:10px;
    margin-top:15px;
    transition:0.3s;
}

.logout-btn:hover{
    background:#d50032;
    transform:scale(1.03);
}

.footer{
    margin-top:15px;
    font-size:13px;
    color:#eee;
}

</style>
</head>

<body>

<div class="container">
    <div class="welcome-box">

        <div class="icon">🚀</div>

        <h2>Welcome To My World</h2>
        <p class="tagline">✨ Well Come ✨</p>

        <hr>

        <h3>Create Your Account</h3>

        <form action="RegisterServlet" method="post">

            <div class="input-group">
                <input type="text" name="fullname"
                placeholder="👤 Full Name" required>
            </div>

            <div class="input-group">
                <input type="email" name="email"
                placeholder="📧 Email Address" required>
            </div>

            <div class="input-group">
                <input type="text" name="username"
                placeholder="🧑 Username" required>
            </div>

            <div class="input-group">
                <input type="password" name="password"
                placeholder="🔒 Password" required>
            </div>

            <div class="input-group">
                <input type="password" name="confirmPassword"
                placeholder="🔑 Confirm Password" required>
            </div>

            <button type="submit" class="btn register-btn">
                Register Now
            </button>

        </form>

        <a href="a.jsp" class="logout-btn">
            Logout
        </a>

        <div class="footer">
            © 2026 My Registration Portal
        </div>

    </div>
</div>

</body>
</html>