<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All New Book</title>
    <%@include file="all_component/allCss.jsp"%>
    <style type="text/css">
        .crd-ho:hover{
        background-color:#fcf7f7;
    }
    </style>
</head>
<body>
<%@include file="all_component/navbar.jsp"%>
<div class="container-fluid">
    <div class="row p-3">
       <%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao.getAllNewBooks();
			for(BookDtls b : list2){
			%>
			
		    <div class="col-md-3 mt-2">
			<div class="card crd-ho">
			<div class="card-body text-center">
				<img src="book/<%=b.getPhotoName()%>" alt="" 
				style="width: 120px; height: 180px" class="img-thumblin">
				<p><%=b.getBookName() %></p>
				<p><%=b.getAuthor() %></p>
				<p>Categories: <%=b.getBookCategory() %></p>
				
				<div class="row d-flex justify-content-center align-items-center">
						<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
						<a href="" class="btn btn-success btn-sm ml-2">View Details</a>
						<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice() %></a>
				</div>							
			</div>
		    </div>
		    </div>
			<%	
			}
			%>	
      
    </div>
</div>
    
</body>
</html>
