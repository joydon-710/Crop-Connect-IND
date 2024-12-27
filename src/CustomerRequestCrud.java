package com.amish;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CustomerRequestCrud {
    // Method to create a new CustomerRequest
    public int createCustomerRequest(CustomerRequest customerRequest) {
        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "INSERT INTO customerrequest (CustomerEmail, ProductID, ProductName, Location, FarmerEmail, RequestDate) " +
                         "VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, customerRequest.getCustomerEmail());
            statement.setInt(2, customerRequest.getProductId());
            statement.setString(3, customerRequest.getProductName());
            statement.setString(4, customerRequest.getLocation());
            statement.setString(5, customerRequest.getFarmerEmail());
            statement.setDate(6, new java.sql.Date(System.currentTimeMillis()));
            statement.executeUpdate();
           
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
        return 1;
    }

    // Method to retrieve all CustomerRequests
    public List<CustomerRequest> getAllCustomerRequests() {
        List<CustomerRequest> customerRequests = new ArrayList<>();
        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT * FROM customerrequest";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String customerEmail = resultSet.getString("CustomerEmail");
                int productId = resultSet.getInt("ProductID");
                String productName = resultSet.getString("ProductName");
                String location = resultSet.getString("Location");
                String farmerEmail = resultSet.getString("FarmerEmail");
                Date requestDate = resultSet.getDate("RequestDate");
                customerRequests.add(new CustomerRequest(id, customerEmail, productId, productName, location, farmerEmail, requestDate));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
        return customerRequests;
    }
    
    public List<CustomerRequest> getAllCustomerRequestsByCustomerEmail(String CustomerEmail) {
        List<CustomerRequest> customerRequests = new ArrayList<>();
        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT * FROM customerrequest where CustomerEmail ='"+CustomerEmail+"'";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String customerEmail = resultSet.getString("CustomerEmail");
                int productId = resultSet.getInt("ProductID");
                String productName = resultSet.getString("ProductName");
                String location = resultSet.getString("Location");
                String farmerEmail = resultSet.getString("FarmerEmail");
                Date requestDate = resultSet.getDate("RequestDate");
                customerRequests.add(new CustomerRequest(id, customerEmail, productId, productName, location, farmerEmail, requestDate));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
        return customerRequests;
    }
    
    public List<CustomerRequest> getAllCustomerRequestsByFarmerEmail(String FarmerEmail) {
        List<CustomerRequest> customerRequests = new ArrayList<>();
        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT * FROM customerrequest where FarmerEmail ='"+FarmerEmail+"'";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String customerEmail = resultSet.getString("CustomerEmail");
                int productId = resultSet.getInt("ProductID");
                String productName = resultSet.getString("ProductName");
                String location = resultSet.getString("Location");
                String farmerEmail = resultSet.getString("FarmerEmail");
                Date requestDate = resultSet.getDate("RequestDate");
                customerRequests.add(new CustomerRequest(id, customerEmail, productId, productName, location, farmerEmail, requestDate));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
        return customerRequests;
    }
    
    public List<CustomerRequest> getCustomerRequestsByCustomerEmailAndProductId(String customerEmail, int productId) {
        List<CustomerRequest> customerRequests = new ArrayList<>();
        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT * FROM customerrequest WHERE CustomerEmail = ? AND ProductID = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, customerEmail);
            statement.setInt(2, productId);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ID");
                String productName = resultSet.getString("ProductName");
                String location = resultSet.getString("Location");
                String farmerEmail = resultSet.getString("FarmerEmail");
                Date requestDate = resultSet.getDate("RequestDate");
                customerRequests.add(new CustomerRequest(id, customerEmail, productId, productName, location, farmerEmail, requestDate));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
        return customerRequests;
    }

    // Method to update a CustomerRequest
    public void updateCustomerRequest(CustomerRequest customerRequest) {
        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "UPDATE customerrequest SET CustomerEmail=?, ProductID=?, ProductName=?, Location=?, FarmerEmail=?, RequestDate=? WHERE ID=?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, customerRequest.getCustomerEmail());
            statement.setInt(2, customerRequest.getProductId());
            statement.setString(3, customerRequest.getProductName());
            statement.setString(4, customerRequest.getLocation());
            statement.setString(5, customerRequest.getFarmerEmail());
            statement.setDate(6, new java.sql.Date(customerRequest.getRequestDate().getTime()));
            statement.setInt(7, customerRequest.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
    }

    // Method to delete a CustomerRequest
    public void deleteCustomerRequest(int id) {
        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "DELETE FROM customerrequest WHERE ID=?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection(conn);
        }
    }
}
