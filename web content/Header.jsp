<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  <!-- 
    - primary meta tag
  -->
  <title>CropConnectIndia</title>
  <meta name="title" content="CropConnectIndia">
  <meta name="description" content="This is an Agriculture Ecommerce System.">

  <!-- 
    - favicon
  -->
  <link rel="shortcut icon" href="./assets/images/loli.png" type="image/svg+xml">

  <!-- 
    - custom css link
  -->
  <link rel="stylesheet" href="./assets/css/style.css">

  <!-- 
    - google font link
  -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Mr+De+Haviland&family=Roboto:wght@400;500;700&display=swap"
    rel="stylesheet">

  <!-- 
    - preload images
  -->
  <link rel="preload" as="image" href="./assets/images/hero-product-1.jpg">
  <link rel="preload" as="image" href="./assets/images/hero-product-2.jpg">
  <link rel="preload" as="image" href="./assets/images/hero-product-3.jpg">
  <link rel="preload" as="image" href="./assets/images/hero-product-4.jpg">
  <link rel="preload" as="image" href="./assets/images/hero-product-5.jpg">

</head>

<body id="top">
  <header class="header" data-header>
    <div class="Container_1">
        <a href="#" class="Logo_CCI">CropConnectIndia</a>
        
        <div class="header-action">
        <button class="header-action-btn" aria-label="user">
          <a href="customer.jsp">
          <ion-icon name="person-outline" aria-hidden="true" onclick="dislay('sectionSignup')"></ion-icon></a>
        </button>

        <button class="header-action-btn" aria-label="favorite list">
              <ion-icon name="heart-outline" aria-hidden="true" ></ion-icon>
          <span class="btn-badge">0</span>
        </button>

        <button class="header-action-btn" aria-label="cart">
          <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>

          <span class="btn-badge">0</span>
        </button>

        <button class="header-action-btn" aria-label="open menu" data-nav-toggler>
          <ion-icon name="menu-outline" aria-hidden="true"></ion-icon>
        </button>

      </div>

    </div>
  </header>

  <!-- 
    - #SIDEBAR
  -->
  <div id="sectionHome">

  <div class="sidebar" data-navbar>

    <button class="nav-close-btn" aria-label="close menu" data-nav-toggler>
      <ion-icon name="close-outline" aria-hidden="true"></ion-icon>
    </button>

    <div class="wrapper">

      <ul class="sidebar-list">

        <li>
          <p class="sidebar-list-title">Language</p>
           
          
        </li>

        <li>
          <a href="#" class="sidebar-link" onclick="display('sectioneng')">English</a>
        </li>

        <li>
          <a href="#" class="sidebar-link">French</a>
        </li>

        <li>
          <a href="#" class="sidebar-link">Arabic</a>
        </li>

      </ul>

      <ul class="sidebar-list">

        <li>
          <p class="sidebar-list-title">Currency</p>
        </li>

        <li>
          <a href="#" class="sidebar-link">USD - US Dollar</a>
        </li>

        <li>
          <a href="#" class="sidebar-link">Euro</a>
        </li>

        <li>
          <a href="#" class="sidebar-link">Pound</a>
        </li>

      </ul>

    </div>

    <nav class="navbar">
      <ul class="navbar-list">

        <li class="navbar-item">
          <a href="index.jsp" class="navbar-link" data-nav-link>Home</a>
        </li>

        <li class="navbar-item">
          <a href="about.jsp" class="navbar-link" data-nav-link>About</a>
        </li>

        <li class="navbar-item">
          <a href="product.jsp" class="navbar-link" data-nav-link>Product</a>
        </li>

        <li class="navbar-item">
          <a href="farmer.jsp" class="navbar-link" data-nav-link>Farmer Login</a>
        </li>
        <li class="navbar-item">
          <a href="customer.jsp" class="navbar-link" data-nav-link>Customer Login</a>
        </li>
        
      </ul>
    </nav>
    <ul class="contact-list">

      <li>
        <p class="contact-list-title">Contact Us</p>
      </li>

      <li class="contact-item">
        <address class="address">
          69 Halsey St, Ny 10002, New York, United States
        </address>
      </li>

      <li class="contact-item">
        <a href="mailto:support.center@woodex.co" class="contact-link">support.center@woodex.co</a>
      </li>

      <li class="contact-item">
        <a href="tel:00001235567890" class="contact-link">(0000) 1235 567890</a>
      </li>

    </ul>

    <div class="social-wrapper">

      <p class="social-list-title">Follow US On Socials</p>

      <ul class="social-list">

        <li>
          <a href="#" class="social-link">
            <ion-icon name="Logo_CCI-facebook"></ion-icon>
          </a>
        </li>

        <li>
          <a href="#" class="social-link">
            <ion-icon name="Logo_CCI-twitter"></ion-icon>
          </a>
        </li>

        <li>
          <a href="#" class="social-link">
            <ion-icon name="Logo_CCI-tumblr"></ion-icon>
          </a>
        </li>

      </ul>

    </div>

  </div>

  <div class="overlay" data-overlay data-nav-toggler></div>

    


    