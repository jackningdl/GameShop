<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
<link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/register.css"/>">
<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favi.png"/>" />
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="container" style="margin-bottom:200px">
		<h1 class="well">Add Product</h1>
		<div class="col-lg-12 well">
			<div class="row">
			
				<c:url value="/admin/product/addProduct" var="url"></c:url>
				<form:form method="post" action="${url}" modelAttribute="productForm" enctype="multipart/form-data">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="id">Product ID</form:label>
								<form:input type="text"
									placeholder="Enter ProductId" class="form-control"
									path="id" disabled="true"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="productName">Game</form:label>
								 <form:input type="text"
									placeholder="Enter the name of the game you want to share" class="form-control"
									path="productName"></form:input>
								 <form:errors path="productName"></form:errors>
							</div>
						</div>
						<div class="form-group">
						<form:label path="productDescription">Description</form:label>
								 <form:textarea type="text"
									placeholder="Please briefly describe the game" class="form-control"
									path="productDescription"></form:textarea>
						</div>
						<div class="form-group">
						<form:label path="productCategory">Console Type </form:label>
								 <form:radiobutton path="productCategory" value="XBox"/> XBox  
								 <form:radiobutton path="productCategory" value="PS4"/> PS4  
								 <form:radiobutton path="productCategory" value="Switch"/> Switch  
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<form:label path="productManufacturer">Game Genre</form:label>
								 <form:input type="text"
									placeholder="Sports, RPG, Action..." class="form-control"
									path="productManufacturer"></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="productPrice">Price</form:label>
								 <form:input type="text"
									placeholder="Enter Product Price" class="form-control"
									path="productPrice"></form:input>
								 <form:errors path="productPrice"></form:errors>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="unitStock">Amount Put In Stock</form:label>
								 <form:input type="text"
									placeholder="Amount in stock" class="form-control"
									path="unitStock"></form:input>
							</div>
						</div>
					 	<div class="form-group">
						<form:label path="productImage">Video Game Image</form:label>
							<form:input type="file" path="productImage"/>
						</div>  
						<div class="form-actions">
							<button type="submit" class="btn btn-lg btn-info">Submit</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<div id="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>