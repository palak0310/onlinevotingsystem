<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Voting System</title>
<style>
 *{
 
 margin: 0;
 padding:0;
 }
 body{
	margin: 0;
	padding: 0;s
	font-family: sans-serif;
	background:url(/OnlineVotingSystem/img/vot2.jpg) no-repeat;
	background-size: cover;
	background-color: darkgray;
}
.pic{
    width: 100px;
    height: 100px;
    border-radius: 50px;
    top: -100px;
} 
</style>
</head>
<body>
<%@ include file="Header.jsp" %>
<!--content starts here-->
<div class="home-content-wrapper">
<div class="overlay-box">
<div class="container">
<div class="welcome-text">WELCOME TO Online<br/>Voting System</div>
</div>
</div>
</div>

<%@ include file="Footer.jsp" %>
</div>

</body>
</html>