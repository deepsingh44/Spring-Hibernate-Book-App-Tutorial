<%@taglib prefix="p" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@include file="head.jsp"%>
<div class="container">
	<br>
	<div class="card" style="padding: 10px;">
		<div class="row" style="height: 500px;">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
				<p:choose>
					<p:when test="${books==null || books.size()==0}">

						<div align="center">
							<img src="<spring:url value="/images/no_books.jpg"/>" width="300"
								height="300px">
						</div>
						<div align="center">
							<h1>NO BOOKS AVAILABLE</h1>
						</div>
					</p:when>

					<p:otherwise>

						<table class="table table-hover">
							<thead>
								<tr>
									<th>NAME</th>
									<th>AUTHOR</th>
									<th>PRICE</th>
								</tr>
							</thead>
							<tbody>
								<p:forEach items="${books}" var="book">
									<tr>
										<td>${book.name}</td>
										<td>${book.author}</td>
										<td>${book.price}</td>
									</tr>

								</p:forEach>

							</tbody>
						</table>

					</p:otherwise>
				</p:choose>

			</div>
			<div class="col-sm-1"></div>

		</div>
	</div>
</div>