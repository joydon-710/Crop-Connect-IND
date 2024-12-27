<%@page import="java.util.List"%>
<%@page import="com.amish.*"%>
<jsp:include page="Header1.jsp"></jsp:include>

      <!-- 
        - #ABOUT
      -->
      <br><br>

      <section class="section about" id="about" aria-label="about">
        <div class="Container_1">

        
        <div class="container">
    <div class="row">
        <div class="col">
            <h2>Product Details</h2>
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>Type</th>
                        <th>Name</th>
                        <th>Quantity Produced</th>
                        <th>Price Per Unit</th>
                        <th>Image</th>
                        <th>Location</th>
                        <th>Email</th>
                        <th>Request</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Retrieve the product ID from the request parameter
                        int productId = Integer.parseInt(request.getParameter("id"));

                        // Retrieve the product details from the database
                        
                        Product product = new ViewProducts().getProductById(productId);

                        // Check if the product exists
                        if (product != null) {
                    %>
                        <tr>
                            <td><%= product.getProductId() %></td>
                            <td><%= product.getProductType() %></td>
                            <td><%= product.getProductName() %></td>
                            <td><%= product.getQuantityProduced() %></td>
                            <td><%= product.getPricePerUnit() %></td>
                            <td><img src="uploads/<%= product.getProductImage() %>" alt="Product Image" style="max-width: 100px;"></td>
                            <td><%= product.getLocation() %></td>
                            <td><%= product.getEmail() %></td>
                             <td><a href="SendProductRequest.jsp?id=<%=product.getProductId() %>"><span style="background-color:black;color:white">Send Request</span></a></td>
                        </tr>
                    <%
                        } else {
                    %>
                        <tr>
                            <td colspan="8">Product not found.</td>
                        </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
                    </section>

<jsp:include page="Footer.jsp"></jsp:include>
