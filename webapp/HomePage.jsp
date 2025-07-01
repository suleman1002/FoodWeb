<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList,java.util.Set,java.util.HashSet" %>
<%@ page import="com.foodapp.dto.Restaraunt,com.foodapp.daoImpl.Cart " %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food App - Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Arial:wght@400&family=Verdana:wght@400&display=swap" rel="stylesheet">

    <style>
        /* Custom Navbar Styling with Bootstrap Icon as Logo */
        .navbar {
            background-color: #343a40;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: background-color 0.5s ease-in-out;
        }

        .navbar:hover {
            background-color: #495057;
        }

        .navbar .logo {
            font-size: 1.5rem;
            color: white;
            font-weight: bold;
            display: flex;
            align-items: center;
        }

        .navbar .logo .bi-basket3 {
            font-size: 2rem;
            margin-right: 10px;
        }

        .navbar-nav .nav-link {
            color: white !important;
            transition: color 0.3s ease-in-out;
        }

        .navbar-nav .nav-link:hover {
            background-color: #007bff;
            border-radius: 5px;
            color: #f8f9fa !important;
        }

        /* Body Background */
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }

        /* Jumbotron Section */
        .jumbotron {
//            background: url('https://media.istockphoto.com/id/1404169915/photo/empty-glass-water-with-bokeh-background.jpg?s=612x612&w=0&k=20&c=suM509fqA7UVa0u4kHJhQr6uW45_HzlPDsjNDZYP7JQ=') no-repeat center center;
            background: url('data:image/jpeg;base64,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') no-repeat center center;
            background-size: cover;
            color: white;
            padding: 100px 0;
            text-align: center;
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.7);
            margin-bottom: 30px;
            animation: fadeIn 1.5s ease-in-out;
        }

        .jumbotron h1 {
            font-size: 4em;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
        }

        .jumbotron p {
            font-size: 1.5em;
            margin-top: 20px;
        }

        /* Ensure uniform card height */
        .card {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            height: 100%;
        }

        /* Ensure uniform image height and card image fit */
        .card img {
            width: 100%;
            height: 200px; /* Fixed height for images */
            object-fit: cover; /* Ensures the image covers the area without stretching */
            border-radius: 10px 10px 0 0; /* Optional: Rounded corners for images */
        }

        /* Ensure the card body has consistent padding */
        .card-body {
            flex-grow: 1;
            padding: 15px;
            text-align: center;
        }

        /* Set minimum heights for content to align the text */
        .card-body h3 {
            min-height: 60px; /* Ensures all titles take the same space */
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .card-body p {
            min-height: 40px;
        }

        .view-menu-btn {
            background-color: #007bff;
            color: white;
        }

        .view-menu-btn:hover {
            background-color: #0056b3;
            color: white;
        }

        /* Animation Styles */
        .fadeIn {
            animation: fadeIn 1s ease-in-out forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .slideIn {
            animation: slideIn 0.5s ease-in-out forwards;
        }

        @keyframes slideIn {
            from {
                transform: translateY(20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        /* Testimonials and Contact Section */
        .testimonial, .contact {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand logo" href="About.jsp">
                <i class="bi bi-basket3"></i> FoodApp
            </a>
            <div class="navbar-nav">
                <a href="LoginPage.html" class="nav-link btn btn-success mx-2">
                    <i class="bi bi-box-arrow-in-right"></i> Login
                </a>
                <a href="RegisterPage.html" class="nav-link btn btn-primary">
                    <i class="bi bi-person-plus"></i> Register
                </a>
            </div>
        </div>
    </nav>

    <!-- Jumbotron Section -->
    <div class="jumbotron">
        <div class="container">
            <h1>Welcome to the Best Food Delivery Service</h1>
            <p>Order your favourite food from top restaurants near you</p>
        </div>
    </div>

    <!-- Restaurant Details Section -->
    <div class="container my-5">
        <div class="row">
            <% 
                 @SuppressWarnings("unchecked")
                ArrayList<Restaraunt> restaurantList = (ArrayList<Restaraunt>) session.getAttribute("restaurantList");
                if (restaurantList != null && !restaurantList.isEmpty()) {
                    Set<String> restaurantNames = new HashSet<>();
                    for (Restaraunt res : restaurantList) {
                        if (!restaurantNames.contains(res.getname())) {
                            restaurantNames.add(res.getname());
            %>
                            <div class="col-md-4 mb-4">
                                <div class="card fadeIn">
                                    <img src="<%= res.getimgPath() %>" alt="Image of <%= res.getname() %>">
                                    <div class="card-body">
                                        <h3><%= res.getname() %></h3>
                                        <p><strong>Cuisine:</strong> <%= res.getCusineType() %></p>
                                        <p><strong>Delivery Time:</strong> <%= res.getDeliveryTime() %> mins</p>
                                        <p><strong>Rating:</strong> ⭐⭐⭐⭐</p>
                                        <a href="MenuServlet?restaurantId=<%= res.getrId() %>" class="btn view-menu-btn">View Menu</a>
                                    </div>
                                </div>
                            </div>
            <%
                        }
                    }
                } else {
            %>
                <p class="text-center">No restaurants available at the moment.</p>
            <%
                }
            %>
        </div>
    </div>

    <!-- Testimonials Section -->
    <div class="container my-5">
        <h2 class="text-center">What Our Customers Say</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="testimonial slideIn">
                    <p>"Great food and fast delivery!" - John Doe</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial slideIn">
                    <p>"I love the variety of cuisines!" - Jane Smith</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial slideIn">
                    <p>"Always my go-to app for food!" - Alice Brown</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Contact Us Section -->
    <div class="container my-5">
        <h2 class="text-center">Contact Us</h2>
        <div class="contact fadeIn">
            <p>If you have any questions or feedback, feel free to reach out to us:</p>
            <form action="contact.jsp">
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" id="name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" required>
                </div>
                <div class="mb-3">
                    <label for="message" class="form-label">Message</label>
                    <textarea class="form-control" id="message" rows="4" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Send Message</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
