<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>

<%@ include file="navbar.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${product.productName} | Details</title>
<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favi.png"/>" />
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resource/js/productController.js"/>"></script>
</head>
<body>
	<div ng-app="myapp">
		<div class="container" style="width: 600px;">
			<h2>${product.productName} (${product.productCategory}) </h2>
			<p>Details about selected game: ${product.productName} in console of ${product.productCategory} </p>
			<table class="table table-bordered" id="prod">
				<tbody>
					<tr>
						<td>Shortcut</td>
						<td><img src="/Games/${product.id}.jpg"
							width="100%" alt="${product.productName}" /></td>
					</tr>
					<tr>
						<td>ID</td>
						<td>${product.id}</td>
					</tr>
					<tr>
						<td>Name</td>
						<td>${product.productName}</td>
					</tr>
					<tr>
						<td>Console</td>
						<td>${product.productCategory}</td>
					</tr>
					<tr>
						<td>Description</td>
						<td>${product.productDescription}</td>
					</tr>
					<tr>
						<td>Genre</td>
						<td>${product.productManufacturer}</td>
					</tr>
					<tr>
						<td>Price</td>
						<td>${product.productPrice}</td>
					</tr>
					<tr>
						<td>In Stock</td>
						<td>${product.unitStock}</td>
					</tr>
					<tr>
						<td>Add to cart:</td>
						<td><c:url value="/cart/add/${product.id}"
								var="addcart"></c:url>
							<div ng-controller="myController">
								<security:authorize access="hasRole('ROLE_USER')">
									<a href="#" ng-click="addToCart(${product.id})"
										class="btn btn-info"
										style="margin-top: 0px; width: 150px; float: left; margin-right: 31px;">
										<span class="glyphicon glyphicon-shopping-cart"></span>
									</a>
								</security:authorize>
								<a href="<c:url value="/getAllProducts" />" class="btn btn-info"
									style="margin-top: 0px; width: 150px; float: right; margin-right: 31px;">
									<span class="glyphicon glyphicon-arrow-left"></span>
								</a>
							</div></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="footer">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
