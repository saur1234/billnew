<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
	integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
	crossorigin='anonymous'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
html, body, h1, h2, h3, h4, h5, h6 {
	font-family: "Roboto", sans-serif
}

.w3-text-teal, .w3-hover-text-teal:hover {
	color: #5b5959 !important;
}

.table {
	column-gap: 25px;
}

.col-sm-12 {
	width: auto;
}

.col-sm-9 {
	margin-left: 5px;
	width: auto;
}

.col-sm-3 {
	margin-left: 10px;
}

a.btn {
	background-color: #A6A4A1;
	color: black;
	appearance: button;
	padding: 18px, 24px;
	box-shadow: 0 6px 8px 0 rgba(0, 0, 0, 0.24), 0 8px 25px 0
		rgba(0, 0, 0, 0.19);
	float: Right;
}

.sidenav {
	background-color: #f1f1f1;
	height: auto;
}

.profile-data {
	padding: 10px;
}

.profile {
	width: 100%;
}

@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
		width: auto;
	}
}

.btn-warning {
	color: #fff;
	background-color: #e7e7e7;
	color: black;;
	border-color: #A6A4A1;
}

.btn-warning {
	color: #fff;
	background-color: #e7e7e7;
	color: black;;
	border-color: #A6A4A1;
}
}
</style>
<body class="w3-light-grey">
	<jsp:include page="header.jsp" />
	<!-- Page Container -->
	<div class="w3-content w3-margin-top" style="max-width: 1400px;">

		<!-- The Grid -->
		<div class="w3-row-padding">

			<!-- Left Column -->
			<div class="w3-third">

				<div class="w3-white w3-text-grey w3-card-4">
					<div class="w3-display-container">
						<img src="download.jfif" style="width: 100%" alt="Avatar">
						<div class="w3-display-bottomleft w3-container w3-text-black">
							<h2>Jane Doe</h2>
						</div>
					</div>
					<div class="w3-container">

						<p>
							<i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>London,
							UK
						</p>
						<p>
							<i
								class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>ex@mail.com
						</p>
						<p>
							<i
								class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>1224435534
						</p>

						<center>
							<button type="button" class="btn btn-warning">Update
								Details</button>
						</center>
						<%-- <center><a href="logout" class="btn" role="button">Update Details</a></center> --%>
						<br>

					</div>
				</div>
			</div>
			<div class="w3-twothird">

				<div class="w3-container w3-card w3-white w3-margin-bottom">
					<h2 class="w3-padding-16 w3-xxlarge w3-text-teal w3-animate-top">
						<center>
							Bill Records
							<center>
					</h2>
				</div>

				<br>
				<div class="container-fluid ">
					<table class="table ">
						<thead>
							<tr>
								<th><c:out value="${'Bill Id' }"></c:out></th>
								<th><c:out value="${'Bill Type' }"></c:out></th>
								<th><c:out value="${'Status' }"></c:out></th>
								<th><c:out value="${'Amount Due' }"></c:out></th>
								<th><c:out value="${'Amount Paid' }"></c:out></th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="tempproduct" items="${Products}">
								<c:url var="viewLink" value="/product/viewForm">
									<c:param name="productId" value="${tempproduct.product_id}" />
								</c:url>

								<c:url var="updateLink" value="/product/updateForm">
									<c:param name="productId" value="${tempproduct.product_id}" />
								</c:url>

								<c:url var="deleteLink" value="/product/delete">
									<c:param name="productId" value="${tempproduct.product_id}" />
								</c:url>

								<tr>

									<td>${tempproduct.name}</td>
									<td>${tempproduct.brand}</td>
									<td>${tempproduct.category}</td>


									<td>${tempproduct.price}</td>
									<td>${tempproduct.rating}</td>
									<!-- 
        <th><a href="edit?id=${tempbook.book_id}">Edit</a></th>
 		<th><a href="delete?id=${tempbook.book_id}">Delete</a></th>
 		 -->
									<th><a href="${viewLink}">View</a></th>
									<th><a href="${updateLink}">Update</a></th>
									<th><a href="${deleteLink}">Delete</a></th>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</div>
		<br>

	</div>
</body>
</html>