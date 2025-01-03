<jsp:include page="Header.jsp"></jsp:include>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="screen1.css">
    <title>Crop Connect India</title>
    <meta name="title" content="CropConnectIndia">
    <meta name="description" content="This is an Agriculture Ecommerce System.">
    <link rel="shortcut icon" href="./assets/images/loli.png" type="image/svg+xml">
</head>
 <br><br><br>
 <br><br><br>
 <br><br><br>
 <br><br><br>
 <br><br><br>
 <br><br><br>
    <div class="sectionSignup">
    <div class="background-image"></div>
    <div class="container" id="container">
        <div class="form-container sign-up">
            <form action="RegisterFarmer" method="post">
                <h1>Create Account</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                </div>
                <span>or use your email for registeration</span>
                <input type="text" placeholder="Name" name="name" required>
                <input type="email" placeholder="Email" name="email" required>
                <input type="password" placeholder="Password" name="password" required>
                <button>Sign Up</button>
            </form>
        </div>
        <div class="form-container sign-in">
            <form action="FarmerLogin" method = "post">
                <h1> Farmer Sign In</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                </div>
                
                <span>or use your email password</span>
                <input type="email" placeholder="Email" name="email" required>
                <input type="password" placeholder="Password" name="password" required>
                <a href="#">Forget Your Password?</a>
                <button>Sign In</button>
            </form>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Welcome Back!</h1>
                    <p>Enter your personal details to use all of site features</p>
                    <button class="hidden" id="login">Sign In</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Hello, Friend!</h1>
                    <p>Register with your personal details to use all of site features</p>
                    <button class="hidden" id="register">Sign Up</button>
                </div>
            </div>
        </div>
    </div>
</div>
    <script src="screen1.js"></script>
 <jsp:include page="Footer.jsp"></jsp:include>