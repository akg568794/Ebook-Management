 <%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook :Index</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background:url("img/bg-book.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
.crd-ho:hover{
background-color:#fcf7f7;

}
</style>
</head>
<body style="background-color:#f7f7f7;">

	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img d-flex justify-content-center align-items-center">
		<h2 class="text-center text-white ">Ebook Management System</h2>
	</div>
	

<!-- start recent book -->

	<div class="container mt-4 mb-2" >
		<h3 class="text-center">Recent Book</h3>
		<div class="row">
		<%
		BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list = dao2.getRecentBooks();
		for(BookDtls b : list){
		%>
		<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img src="book/<%=b.getPhotoName() %>" alt="" 
						style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName() %></p>
						<p><%=b.getAuthor() %></p>						
						
						<%
				        if(b.getBookCategory().equals("Old")){
				        %>
				
				        <p>Categories: <%= b.getBookCategory() %></p>
				        <div class="row d-flex justify-content-center align-items-center">
				        <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm">View Details</a>
				        <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice() %></a>
				        </div> 
				 
				        <%
				        }else{
				        %>
				
				       <p>Categories: <%= b.getBookCategory() %></p>
				   <div class="row d-flex justify-content-center align-items-center">
				    <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
				    <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-2">View</a>
				    <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice() %></a>
				    </div>  
				
				    <%
				    }
				    %>
				
						
					</div>
				</div>
			</div>
		<%
		}
		%>		
			
		</div>


		<div class="text-center mt-3">
		<a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>
	
	<!-- end of recent book -->
	
	<hr>
	
<!-- start new book -->

	<div class="container mt-2 mb-2" >
		<h3 class="text-center">New Book</h3>
		<div class="row">			
			
			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao.getNewBook();
			for(BookDtls b : list2){
			%>
			
		    <div class="col-md-3">
			<div class="card crd-ho">
			<div class="card-body text-center">
				<img src="book/<%=b.getPhotoName()%>" alt="" 
				style="width: 150px; height: 200px" class="img-thumblin">
				<p><%=b.getBookName() %></p>
				<p><%=b.getAuthor() %></p>
				<p>Categories: <%=b.getBookCategory() %></p>
				
				<div class="row d-flex justify-content-center align-items-center">
						<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
						<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-2">View</a>
						<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice() %></a>
				</div>							
			</div>
		    </div>
		    </div>
			<%	
			}
			%>	
			
		</div>
		<div class="text-center mt-3">
		<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>
	
	<!-- end of new book -->
	
	<hr>
	
	
	<!-- start old book -->

	<div class="container mt-2 mb-2" >
		<h3 class="text-center">Old Book</h3>
		<div class="row ">
		
		<%
			BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list3 = dao3.getOldBooks();
			for(BookDtls b : list3){
			%>
			
		    <div class="col-md-3">
			<div class="card crd-ho">
			<div class="card-body text-center">
				<img src="book/<%=b.getPhotoName()%>" alt="" 
				style="width: 150px; height: 200px" class="img-thumblin">
				<p><%=b.getBookName() %></p>
				<p><%=b.getAuthor() %></p>
				<p>Categories: <%=b.getBookCategory() %></p>
				
				<div class="row d-flex justify-content-center align-items-center">
						<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice() %></a>
				</div>							
			</div>
		    </div>
		    </div>
			<%	
			}
			%>	
				
		</div>	
		<div class="text-center mt-3 mb-5">
		<a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
	</div>
	
	<!-- end of old book -->
	

	
	<%@include file="all_component/footer.jsp" %>
	
	
</body>
</html>