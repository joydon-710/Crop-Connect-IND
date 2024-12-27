<jsp:include page="Header2.jsp"></jsp:include>

      <!-- 
        - #ABOUT
      -->
      <br><br>

      <section class="section about" id="about" aria-label="about">
        <div class="Container_1">

          <h2 class="section-title">Add Product</h2>
         <div class="row">
         
         <div class="col-sm-3"></div>
         <div class="col-sm-6">
    <form method="post" action="AddProduct" enctype="multipart/form-data">
      <div class="form-group">
        <label for="productType">Product Type:</label>
        <select class="form-control" id="productType" name="productType">
          <option value="fruits">Fruits</option>
          <option value="vegetables">Vegetables</option>
          <option value="dairy">Dairy Products</option>
        </select>
      </div>
      <div class="form-group">
        <label for="productName">Product Name:</label>
        <input type="text" class="form-control" id="productName" name="productName">
      </div>
      <div class="form-group">
        <label for="quantityProduced">Quantity Produced:</label>
        <input type="text" class="form-control" id="quantityProduced" name="quantityProduced">
      </div>
      <div class="form-group">
        <label for="pricePerUnit">Price Per Unit:</label>
        <input type="text" class="form-control" id="pricePerUnit" name="pricePerUnit">
      </div>
      <div class="form-group">
        <label for="productImage">Product Image:</label>
        <input type="file" class="form-control" id="productImage" name="productImage">
      </div>
      <div class="form-group">
        <label for="location">Location:</label>
        <input type="text" class="form-control" id="location" name="location">
        
          <input type="hidden" class="form-control" value="<%=session.getAttribute("Username") %>"  id="email" name="email">
      </div>
      
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    </div>
    
 <div class="col-sm-3"></div>
 </div>
        </div>
      </section>

<jsp:include page="Footer.jsp"></jsp:include>
