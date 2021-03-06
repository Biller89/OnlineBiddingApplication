<!DOCTYPE html>

<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="loc" value="en_US"/>
<c:if test="${!(empty param.locale)}">
  <c:set var="loc" value="${param.locale}"/>
</c:if>
<fmt:setLocale value="${param.locale}" />
<fmt:bundle basename="MessagesBundle">


<head>
<title>Confirmation Page</title>
  <meta http-equiv="Content-Type" charset="UTF-8" content="text/html">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="customStyle.css"> 

<script>
  function validateForm(){
	  var code = document.forms["verifyForm"]["code"].value;
				if (code.match("[^0-9]{2,7}")) 
				{
					document.getElementById("codeValidation").innerHTML = "Please enter digits only!";
					return false;
				}
				return true;
				
			}
</script>

</head>


<body style="background-color:#ccff99">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <c:url value="index.jsp" var="index"> <c:param name="locale" value="${loc}"/></c:url><a class="navbar-brand" href="${index}"><b><font size="6" color="white"> <fmt:message key="ottawAction"/></font></b></a>
    </div>
    <form class="navbar-form navbar-left" action="/action_page.php">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
    <ul class="nav navbar-nav">
    <li> <c:url value="index.jsp" var="index"> <c:param name="locale" value="${loc}"/></c:url><a href="${index}"> <fmt:message key="home"/> </a></li>
      <li><a href="#"><font color="white"><b><fmt:message key="contactUs"/></b></font></a></li>
      <li><a href="#"><font color="white"><b><fmt:message key="help"/></b></font></a></li>
      
       <li>
    <c:url value="verifyEmail.jsp" var="englishURL"><c:param name="locale" value="en_US"/></c:url>
 	<a href="${englishURL}"> English </a> </li>
 	
 	  <li>
 	<c:url value="verifyEmail.jsp" var="chineseURL"><c:param name="locale" value="zh_CN"/></c:url>
 	 <a href="${chineseURL}"><fmt:message key="chinese"/></a></li>
    </ul>
    
   <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            <span class="glyphicon glyphicon-log-out"></span><font color="white"><b> <fmt:message key="logout"/></b></font>
            <!-- <span class="caret"></span> -->
          </a>
          <ul class="dropdown-menu">
            <li><a href="edit.jsp"><span class="glyphicon glyphicon-edit"></span> <fmt:message key="edit"/></a></li>
      </ul>      
    </div>
</nav> 




<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#"><img src="Real_Time_Bidding.png" height=100% width=100%></a></p>
      <p><a href="#"><img src="chicago.png" height=100% width=100%></a></p>
      <p><a href="#"><img src="bids.png" height=100% width=100%></a></p>
    </div>

<div class="col-sm-3"></div>
<div class="col-sm-3">
<div> &nbsp;</div>
<div class= "panel panel-danger" >
 <div class= "panel-heading">  <b> <fmt:message key="registrationForm"/></b> </div>
  <div class ="panel-body"> 
	<form name="verifyForm" action="verifyEmailServlet" onsubmit="return validateForm()" method="POST"> 
		<div class="form-group">
			<p class="pull-left" style="color:red"id="codeValidation"></p>
		    <label for="verificationCode"><fmt:message key="verficationCode"/></label>
			<input type="text" class="form-control input-md" id="code" placeholder="<fmt:message key="EnterverficationCode"/>" name="code">
		</div>
			<button type="submit" class="btn btn-primary" id="submitbtn" name="submitbtn"><fmt:message key="submit"/></button>
</form>
	</div>
</div>	
 </div>	
  </div>
</div>

<footer class="container-fluid text-center">
  <div class="navbar-header">
      <a href="#"><b><font size="6" color="white">OttawAuction</font></b></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="#"><font color="white"><b>© OttawAuction</b></font></a></li>
   </ul>
     <ul class="nav navbar-nav"> 
      <li><a href="#"><font color="white"><b><fmt:message key="feedback"/></b></font></a></li>
      <li><a href="#"><font color="white"><b><fmt:message key="privacyPolicy"/></b></font></a></li>
   </ul>
</footer>
	
</body>
</fmt:bundle>
</html>













