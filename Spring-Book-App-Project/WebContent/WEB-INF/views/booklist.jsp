<%@taglib prefix="p" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@include file="head.jsp"%>
<div class="container">
	<br>
	<div class="card"
		style="padding: 10px;background-image: url('<spring:url value="/images/background.png"/>');">
		<div class="row" style="height: 500px;">
			
			<div class="col-sm-12">
				<p:choose>
					<p:when test="${books==null || books.size()==0}">

						<div align="center">
							<img src="<spring:url value="/images/no_books.jpg"/>" width="300"
								height="300px" style="border-radius: 10px;">
						</div>
						<div align="center">
							<br>
							<h1 style="color: white; font-family: serif;">NO BOOKS
								AVAILABLE</h1>
						</div>
					</p:when>

					<p:otherwise>

						<!-- <table class="table table-hover">
							<thead>
								<tr>
									<th>NAME</th>
									<th>AUTHOR</th>
									<th>PRICE</th>
								</tr>
							</thead>
							<tbody> -->
						<p:forEach items="${books}" var="book">
							<%-- 								<tr>
										<td>${book.name}</td>
										<td>${book.author}</td>
										<td>${book.price}</td>
									</tr>
 --%>

							<div class="row">

								<div class="col-sm-4">
									<div class="card">
										<img src="<spring:url value="/images/book_item.png"/>"
											width="100%" height="150" style="border-radius: 5px;"> <p style="padding:0;margin:0;"><b
											style="padding-left: 5px;font-family: serif;letter-spacing: 2px;">${book.name}</b></p>
											<p style="padding:0;margin:0;"><b style="padding-left: 5px;color: grey;font-family: serif;">$ ${book.price}</b></p>
											<p style="padding:0;margin:0;"><b style="padding-left: 5px;color: grey;font-family: serif;">${book.author}</b></p>
									</div>
								</div>

								
								<div class="col-sm-4">
									<div class="card">
										<img src="<spring:url value="/images/book_item.png"/>"
											width="100%" height="150" style="border-radius: 5px;"> <p style="padding:0;margin:0;"><b
											style="padding-left: 5px;font-family: serif;letter-spacing: 2px;">${book.name}</b></p>
											<p style="padding:0;margin:0;"><b style="padding-left: 5px;color: grey;font-family: serif;">$ ${book.price}</b></p>
											<p style="padding:0;margin:0;"><b style="padding-left: 5px;color: grey;font-family: serif;">${book.author}</b></p>
									</div>
								</div>
								
								
								<div class="col-sm-4">
									<div class="card">
										<img src="<spring:url value="/images/book_item.png"/>"
											width="100%" height="150"  style="border-radius: 5px;"> <p style="padding:0;margin:0;"><b
											style="padding-left: 5px;font-family: serif;letter-spacing: 2px;">${book.name}</b></p>
											<p style="padding:0;margin:0;"><b style="padding-left: 5px;color: grey;font-family: serif;">$ ${book.price}</b></p>
											<p style="padding:0;margin:0;"><b style="padding-left: 5px;color: grey;font-family: serif;">${book.author}</b></p>
									</div>
								</div>
								
							</div>

						</p:forEach>
						<!-- 
							</tbody>
						</table>
 -->
					</p:otherwise>
				</p:choose>

			</div>

		</div>
	</div>
</div>