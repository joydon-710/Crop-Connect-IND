package com.amish;

public class Product {
    private int productId;
    private String productType;
    private String productName;
    private String quantityProduced;
    private double pricePerUnit;
    private String productImage;
    private String location;
    private String email;

    public Product(int productId, String productType, String productName, String quantityProduced, double pricePerUnit, String productImage, String location,String email) {
        this.productId = productId;
        this.productType = productType;
        this.productName = productName;
        this.quantityProduced = quantityProduced;
        this.pricePerUnit = pricePerUnit;
        this.productImage = productImage;
        this.location = location;
        this.email = email;
    }

    // Getters and setters
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getQuantityProduced() {
        return quantityProduced;
    }

    public void setQuantityProduced(String quantityProduced) {
        this.quantityProduced = quantityProduced;
    }

    public double getPricePerUnit() {
        return pricePerUnit;
    }

    public void setPricePerUnit(double pricePerUnit) {
        this.pricePerUnit = pricePerUnit;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    

    public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", productType='" + productType + '\'' +
                ", productName='" + productName + '\'' +
                ", quantityProduced='" + quantityProduced + '\'' +
                ", pricePerUnit=" + pricePerUnit +
                ", productImage='" + productImage + '\'' +
                ", location='" + location + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
