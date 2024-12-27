package com.amish;

import java.util.Date;

public class CustomerRequest {
    private int id;
    private String customerEmail;
    private int productId;
    private String productName;
    private String location;
    private String farmerEmail;
    private Date requestDate;

    // Constructors
    public CustomerRequest() {
    }

    public CustomerRequest(String customerEmail, int productId, String productName, String location, String farmerEmail, Date requestDate) {
        this.customerEmail = customerEmail;
        this.productId = productId;
        this.productName = productName;
        this.location = location;
        this.farmerEmail = farmerEmail;
        this.requestDate = requestDate;
    }
    public CustomerRequest(String customerEmail, int productId, String productName, String location, String farmerEmail) {
        this.customerEmail = customerEmail;
        this.productId = productId;
        this.productName = productName;
        this.location = location;
        this.farmerEmail = farmerEmail;
        
    }

    
    public CustomerRequest(int id, String customerEmail, int productId, String productName, String location, String farmerEmail, Date requestDate) {
        this.id = id;
        this.customerEmail = customerEmail;
        this.productId = productId;
        this.productName = productName;
        this.location = location;
        this.farmerEmail = farmerEmail;
        this.requestDate = requestDate;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getFarmerEmail() {
        return farmerEmail;
    }

    public void setFarmerEmail(String farmerEmail) {
        this.farmerEmail = farmerEmail;
    }

    public Date getRequestDate() {
        return requestDate;
    }

    public void setRequestDate(Date requestDate) {
        this.requestDate = requestDate;
    }
    
    @Override
    public String toString() {
        return "CustomerRequest{" +
                "id=" + id +
                ", customerEmail='" + customerEmail + '\'' +
                ", productId=" + productId +
                ", productName='" + productName + '\'' +
                ", location='" + location + '\'' +
                ", farmerEmail='" + farmerEmail + '\'' +
                ", requestDate=" + requestDate +
                '}';
    }
}
