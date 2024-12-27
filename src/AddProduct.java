package com.amish;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.catalina.connector.Response;
/**
 * Servlet implementation class AddProduct
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10,      // 10MB
maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get form data
        String productType = request.getParameter("productType");
        String productName = request.getParameter("productName");
        String quantityProduced = request.getParameter("quantityProduced");
        String pricePerUnit = request.getParameter("pricePerUnit");
        String location = request.getParameter("location");
        String email = request.getParameter("email");

        // File upload
        Part filePart = request.getPart("productImage");
        String fileName = filePart.getSubmittedFileName();

        // Define upload directory
        String uploadDir = getServletContext().getRealPath("/uploads");

        // Create the directory if it does not exist
        File directory = new File(uploadDir);
        if (!directory.exists()) {
            directory.mkdirs();
        }

        // Save the file to the upload directory
        File file = new File(uploadDir + File.separator + fileName);
        try {
            filePart.write(file.getAbsolutePath());
        } catch (IOException e) {
            e.printStackTrace();
            out.println("<h2>Error uploading file: " + e.getMessage() + "</h2>");
            return;
        }
        Connection conn = null;
        
        try {
        	// Get connection from DBUtil
            conn = DBUtil.getConnection();
            // SQL query to insert data
            String sql = "INSERT INTO products (ProductType, ProductName, QuantityProduced, PricePerUnit, ProductImage, Location,Email) VALUES (?, ?, ?, ?, ?, ?,?)";
            // Create prepared statement
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, productType);
            statement.setString(2, productName);
            statement.setString(3, quantityProduced);
            statement.setString(4, pricePerUnit);
            statement.setString(5, fileName);
            statement.setString(6, location);
            statement.setString(7, email);
            

            // Execute the statement
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<h2>Product added successfully!</h2>");
                response.sendRedirect("AddProducts.jsp");
            } else {
                out.println("<h2>Failed to add product.</h2>");
            }

            // Close the connection
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        }
	}

}
