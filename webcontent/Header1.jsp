<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CropConnectIndia</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" href="./assets/css/style.css">
</head>

<body id="top">
  <header class="header" data-header>
    <div class="Container_1">
      <a href="#" class="Logo_CCI">CropConnectIndia</a>
      <div class="header-action">
      
        <a href="CustomerHome.jsp" class="header-action-link">Home</a>
        <a href="ViewALLProducts.jsp" class="header-action-link">View Products</a>
                
        <a href="ViewCustomerRequest.jsp" class="header-action-link">View Request</a>
        
        <a href="index.jsp" class="header-action-link">Logout</a> 
        <button class="header-action-btn" aria-label="user">
          <a href="#">
          <ion-icon name="person-outline" aria-hidden="true" onclick="dislay('sectionSignup')" sytel="float:left"></ion-icon>
    
          </a>
        </button>
          <span style="color:green"><%=session.getAttribute("Username") %></span>
      </div>
    </div>

  </header>

    
  <div class="overlay" data-overlay data-nav-toggler></div>

  <br><br><br>
    