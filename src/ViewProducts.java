package com.amish;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewProducts 
{
    private static final long serialVersionUID = 1L;


 public List<Product> getproductsByFarmer(String ema)
    
    {
 
        List<Product> productList = new ArrayList<>();
        Connection conn = null;
        try {
        	 
        	 conn = DBUtil.getConnection();
            // SQL query to retrieve products
            String sql = "SELECT * FROM products where email='"+ema+"'";

            // Create prepared statement
            PreparedStatement statement = conn.prepareStatement(sql);

            // Execute the statement
            ResultSet resultSet = statement.executeQuery();

            // Process the result set
            while (resultSet.next()) {
                int productId = resultSet.getInt("ProductID");
                String productType = resultSet.getString("ProductType");
                String productName = resultSet.getString("ProductName");
                String quantityProduced = resultSet.getString("QuantityProduced");
                double pricePerUnit = resultSet.getDouble("PricePerUnit");
                String productImage = resultSet.getString("ProductImage");
                String location = resultSet.getString("Location");
                String email = resultSet.getString("email");

                Product product = new Product(productId, productType, productName, quantityProduced, pricePerUnit, productImage, location,email);
                productList.add(product);
            }

            // Close the connection
            conn.close();
            return productList;
        } catch (SQLException e) {
            e.printStackTrace();
           return null;
        }
        
        // You can now use the productList ArrayList as needed, such as forwarding it to a JSP page for display
        // request.setAttribute("productList", productList);
        // request.getRequestDispatcher("viewProducts.jsp").forward(request, response);
    }

    
    public List<Product> getproducts()
    
    {
 
        List<Product> productList = new ArrayList<>();
        Connection conn = null;
        try {
        	 
        	 conn = DBUtil.getConnection();
            // SQL query to retrieve products
            String sql = "SELECT * FROM products";

            // Create prepared statement
            PreparedStatement statement = conn.prepareStatement(sql);

            // Execute the statement
            ResultSet resultSet = statement.executeQuery();

            // Process the result set
            while (resultSet.next()) {
                int productId = resultSet.getInt("ProductID");
                String productType = resultSet.getString("ProductType");
                String productName = resultSet.getString("ProductName");
                String quantityProduced = resultSet.getString("QuantityProduced");
                double pricePerUnit = resultSet.getDouble("PricePerUnit");
                String productImage = resultSet.getString("ProductImage");
                String location = resultSet.getString("Location");
                String email = resultSet.getString("email");

                Product product = new Product(productId, productType, productName, quantityProduced, pricePerUnit, productImage, location,email);
                productList.add(product);
            }

            // Close the connection
            conn.close();
            return productList;
        } catch (SQLException e) {
            e.printStackTrace();
           return null;
        }
        
        // You can now use the productList ArrayList as needed, such as forwarding it to a JSP page for display
        // request.setAttribute("productList", productList);
        // request.getRequestDispatcher("viewProducts.jsp").forward(request, response);
    }
    
    public Product getProductById(int id) {
        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            // SQL query to retrieve product by ID
            String sql = "SELECT * FROM products WHERE ProductID = ?";

            // Create prepared statement
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, id);

            // Execute the statement
            ResultSet resultSet = statement.executeQuery();

            // Check if there is a result
            if (resultSet.next()) {
                // Retrieve product details
                int productId = resultSet.getInt("ProductID");
                String productType = resultSet.getString("ProductType");
                String productName = resultSet.getString("ProductName");
                String quantityProduced = resultSet.getString("QuantityProduced");
                double pricePerUnit = resultSet.getDouble("PricePerUnit");
                String productImage = resultSet.getString("ProductImage");
                String location = resultSet.getString("Location");
                String email = resultSet.getString("email");

                // Create and return the Product object
                Product product = new Product(productId, productType, productName, quantityProduced, pricePerUnit, productImage, location, email);
                return product;
            } else {
                // Product with the given ID not found
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            // Close the connection
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}