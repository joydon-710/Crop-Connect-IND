<%@page import="java.util.List"%>
<%@page import="com.amish.*"%>
<jsp:include page="Header2.jsp"></jsp:include>

<style>
        .product-image-container {
            width: 200px; /* Adjust width as needed */
            height: 200px; /* Adjust height as needed */
            border: 1px solid #ccc; /* Add border style */
            overflow: hidden; /* Hide overflowing content */
            margin: 10px; /* Add margin for spacing */
            display: inline-block; /* Display images in a row */
            vertical-align: top; /* Align images to the top of the container */
            position: relative; /* Create a positioning context for the overlay */
        }
        .product-image-container img {
            max-width: 100%; /* Ensure image fits within container */
            height: auto; /* Maintain aspect ratio */
        }
        .product-image-overlay {
            position: absolute; /* Position overlay relative to container */
            top: 0; /* Align overlay to the top of the container */
            left: 0; /* Align overlay to the left of the container */
            width: 100%; /* Make overlay fill the entire container */
            height: 100%; /* Make overlay fill the entire container */
            background-color: rgba(0, 0, 0, 0.5); /* Add semi-transparent background */
            color: #fff; /* Set text color to white */
            text-align: center; /* Center text horizontally */
            padding-top: 80px; /* Add padding for text */
            box-sizing: border-box; /* Include padding and border in the element's total width and height */
            display: none; /* Initially hide the overlay */
        }
        .product-image-container:hover .product-image-overlay {
            display: block; /* Show overlay on hover */
        }
    </style>

      <!-- 
        - #ABOUT
      -->
      <br><br>

      <section class="section about" id="about" aria-label="about">
        <div class="Container_1">

          <h2 class="section-title">View Product</h2>
          <h1>Products</h1>
    <% 
        String email = session.getAttribute("Username").toString();
        List<Product> productList = new ViewProducts().getproductsByFarmer(email);
        if(productList != null) {
            for(Product product : productList) {
    %>
    <div class="product-image-container">
        <img src="uploads/<%= product.getProductImage() %>" alt="<%= product.getProductName() %> Image">
        <div class="product-image-overlay">
            <p>Product Name: <%= product.getProductName() %></p>
            <p>Quantity: <%= product.getQuantityProduced() %></p>
           
             <p><a href='ViewPDetails.jsp?id=<%=product.getProductId()%>'>view Details</a></p>
            
        </div>
    </div>
    <% 
            }
        } else {
    %>
    <p>No products found</p>
    <% 
        }
    %>
         </div>
      </section>

<jsp:include page="Footer.jsp"></jsp:include>
