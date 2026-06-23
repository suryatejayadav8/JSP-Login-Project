<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String uname = request.getParameter("username");
    String pass = request.getParameter("password");

    if (uname.equals("admin") && pass.equals("1234")) {
        response.sendRedirect("c.jsp");
    } else {
        response.sendRedirect("login.jsp?error=1");
    }
%>