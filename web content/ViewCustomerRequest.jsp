<%@page import="java.util.List"%>
<%@page import="com.amish.*"%>
<jsp:include page="Header1.jsp"></jsp:include>

      <!-- 
        - #ABOUT
      -->
      <br><br>

      <section class="section about" id="about" aria-label="about">
        <div class="container">
    <h2>Customer Requests</h2>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Customer Email</th>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Location</th>
                <th>Farmer Email</th>
                <th>Request Date</th>
            </tr>
        </thead>
        <tbody>
            <% 
                // Retrieve all customer requests from the database
                CustomerRequestCrud customerRequestCrud = new CustomerRequestCrud();
                String email = session.getAttribute("Username").toString();
                List<CustomerRequest> customerRequests = customerRequestCrud.getAllCustomerRequestsByCustomerEmail(email);

                // Iterate over the list of customer requests and display them in the table
                for (CustomerRequest cr : customerRequests) {
            %>
                <tr>
                    <td><%= cr.getId() %></td>
                    <td><%= cr.getCustomerEmail() %></td>
                    <td><%= cr.getProductId() %></td>
                    <td><%= cr.getProductName() %></td>
                    <td><%= cr.getLocation() %></td>
                    <td><%= cr.getFarmerEmail() %></td>
                    <td><%= cr.getRequestDate() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</div>
                            </section>

<jsp:include page="Footer.jsp"></jsp:include>
