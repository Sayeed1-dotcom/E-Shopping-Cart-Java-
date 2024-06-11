<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>E-Shopping Cart</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">E-Shopping Cart</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="cart.jsp">Cart
                            <span class="badge badge-danger">${cart_list.size()}</span>
                    </a></li>
                    
                    <li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
                    
                    <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                    
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="card w-50 mx-auto my-5">
            <div class="card-header text-center">Sign-up Account</div>
            <div class="card-body">
                <form action="registration" method="post">
                    <div class="form-group">
                        <label>Full Name</label> <input type="text" name="name"
                            class="form-control" placeholder="Enter your full name">
                    </div>
                    <div class="form-group">
                        <label>Email address</label> <input type="email"
                            name="email" class="form-control" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label>Password</label> <input type="password"
                            name="password" class="form-control" placeholder="Password">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Register</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <%@include file="/includes/footer.jsp"%>
</body>
</html>
