<!DOCTYPE html>

<html lang="en">
<head>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="loc" value="en_US" />
<c:if test="${!(empty param.locale)}">
	<c:set var="loc" value="${param.locale}" />
</c:if>
<fmt:setLocale value="${param.locale}" />

<meta charset="utf-8">
<title>Search</title>
	<script src="assets/js/jquery-min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Viewport Meta Tag -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
 <link rel="stylesheet" type="text/css" href="assets/css/header.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css">
<!-- Main Style -->
<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<!-- Slicknav Css -->
<link rel="stylesheet" type="text/css" href="assets/css/slicknav.css">

<!-- Responsive Style -->
<link rel="stylesheet" type="text/css" href="assets/css/responsive.css">
<!--Fonts-->
<link rel="stylesheet" media="screen"
	href="assets/fonts/font-awesome/font-awesome.min.css">
<link rel="stylesheet" media="screen"
	href="assets/fonts/simple-line-icons.css">

<!-- Extras -->
<link rel="stylesheet" type="text/css"
	href="assets/extras/owl/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="assets/extras/owl/owl.theme.css">
<link rel="stylesheet" type="text/css" href="assets/extras/animate.css">
<link rel="stylesheet" type="text/css"
	href="assets/extras/normalize.css">


<!-- Color CSS Styles  -->
<link rel="stylesheet" type="text/css"
	href="assets/css/colors/green.css" media="screen" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
    </script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js">
    </script>
    <![endif]-->
<style>
.center-div {
	margin: 0 auto;
	width: 100px;
}
</style>


	</head>
	<body>

		<%@include file="header.jsp"%>

	<section class="contact-form-section section">
		<div class="container">
			<div class="row">
				<div
					class="col-md-12 mb-50 text-center contact-title-text wow fadeIn"
					data-wow-delay="0.3s">
					<h2>Closed Auctions</h2>
				</div>
				<div>&nbsp;</div>
	  
		<table id="users" class="stripe table-striped" style="width:100%">
			<thead>
				<tr>
					<th>Seller</th>
					<th>Item</th>
					<th>Image</th>
					<th>Created Date</th>
					<th>Start Date</th>
					<th>End Date</th>
					<th>Initial Price</th>
					<th>Sold Price</th>
					<th>Buyer</th>
				</tr>
			</thead>
			<tbody>
			
				<c:forEach items="${soldAuctions}" var="soldAuction">
					<tr>
						<c:set var="auctionId" value="${soldAuction.id}"/>
						<td>${sellersMapForSoldAuctions[auctionId]}</td>
						<td>${soldItems[auctionId].itemName}</td>
						<td>
						<a href="bidPageDisplayServlet?productitemid=${soldItems[auctionId].productId}&locale=${loc}">
						<img class ="gallery"
						 src='chrome-extension://icghneokgcoplpkbhligbcmaljochmel/${soldItems[auctionId].image}' 
						  width="200" height="150" alt="${soldItems[auctionId].image}">
						</a>
						</td>
						<td>${soldAuction.dateCreated}</td>
						<td>${soldAuction.getBidstarttimeLocale()}</td>
						<td>${soldAuction.getBidendtimeLocale()}</td>
						<td>${soldAuction.bidpricestart}</td>
						<td>${highestBidPriceMapForSoldAuctions[auctionId]}</td>
						<td>${buyersMapForSoldAuctions[auctionId]}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	<script>
		$(document).ready(function() {
			$('#users').DataTable({
				searching : false,
				lengthMenu : [ [ 5, 10, 15, -1 ], [ 5, 10, 15, "All" ] ],
				ordering : true,
				bServerSide : false
			});
		});
	</script>
	  
	  
	</div>
	
</div></section>
		<%@include file="footer.jsp"%>


		<!-- JavaScript & jQuery Plugins -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.mixitup.js"></script>
	<script src="assets/js/smoothscroll.js"></script>
	<script src="assets/js/wow.js"></script>
	<script src="assets/js/owl.carousel.js"></script>
	<script src="assets/js/waypoints.min.js"></script>
	<script src="assets/js/jquery.counterup.min.js"></script>
	<script src="assets/js/jquery.slicknav.js"></script>
	<script src="assets/js/jquery.appear.js"></script>
	<script src="assets/js/form-validator.min.js"></script>
	<script src="assets/js/contact-form-script.min.js"></script>
	<script src="assets/js/main.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>

</body>
</html>