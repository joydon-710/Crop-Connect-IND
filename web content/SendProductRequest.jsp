<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.List"%>
<%@page import="com.amish.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
                    <%
                        // Retrieve the product ID from the request parameter
                        int productId = Integer.parseInt(request.getParameter("id"));

                        // Retrieve the product details from the database
                        
                        Product product = new ViewProducts().getProductById(productId);

                        // Check if the product exists
                        if (product != null) {
                        	
                        	String CustomerEmail = session.getAttribute("Username").toString();
                        	int ProductID = product.getProductId();
                        	String ProductName = product.getProductName();
                        	String Location = product.getLocation();
                        	String FarmerEmail = product.getEmail();
                        	CustomerRequest cr = new CustomerRequest(CustomerEmail,ProductID,ProductName,Location,FarmerEmail);
                        	CustomerRequestCrud crc= new CustomerRequestCrud();
                        	List<CustomerRequest> customerRequests = crc.getCustomerRequestsByCustomerEmailAndProductId(CustomerEmail, ProductID);
                        	if(customerRequests.size()>0)
                        	{
                        		%>
                        	 <script>
                        	  alert("Your request already send to Farmer");
                        	  window.location.href = "ViewALLProducts.jsp";
                        	 </script>
                        		<% 
                        	}
                        	else 
                        	{
                        	int value = crc.createCustomerRequest(cr);
                        	%>
                        	<script>
                        	  alert("Your request has sent");
                        	  window.location.href = "ViewALLProducts.jsp";
                        	 </script>
                        	<% 
                        	}
                    %>
                    
                           
                    <%
                    } 
                    %>

</body>
</html>