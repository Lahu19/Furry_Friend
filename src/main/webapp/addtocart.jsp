<%@page import="com.entity.allcatEntity" %>
  <%@page import="java.util.List" %>
    <%@page import="com.connnection.JDBCConnnection" %>
      <%@page import="com.services.serviceProvider" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
          <!DOCTYPE html>
          <html lang="en">

          <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Furry Friends</title>
            <meta name="title" content="Furry Friends">
            <meta name="description" content="Furry friends selling pets online">
            <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">
            <link rel="stylesheet" href="./assets/css/style.css">
            <link rel="stylesheet" href="./assets/css/addtocat.css">
            <!-- google fonts-->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link
              href="https://fonts.googleapis.com/css2?family=Bangers&family=Carter+One&family=Nunito+Sans:wght@400;700&display=swap"
              rel="stylesheet">
            <!-- preload images-->
            <link rel="preload" as="image" href="./assets/images/hero-banner.jpg">

          </head>

          <body id="top">
            <!-- #HEADER-->
            <header class="header" data-header>
              <div class="container">

                <button class="nav-toggle-btn" aria-label="toggle manu" data-nav-toggler>
                  <ion-icon name="menu-outline" aria-hidden="true" class="menu-icon"></ion-icon>
                  <ion-icon name="close-outline" aria-label="true" class="close-icon"></ion-icon>
                </button>

                <a href="#" class="logo">Furry Friends</a>

                <nav class="navbar" data-navbar>
                  <ul class="navbar-list">

                    <li class="navbar-item">
                      <a href="index.jsp" class="navbar-link" data-nav-link>Home</a>
                    </li>

                    <li class="navbar-item">
                      <a href="shop.jsp" class="navbar-link" data-nav-link>Shop</a>
                    </li>

                    <li class="navbar-item">
                      <a href="collection.jsp" class="navbar-link" data-nav-link>Collections</a>
                    </li>

                    <li class="navbar-item">
                      <a href="blog.jsp" class="navbar-link" data-nav-link>Blogs</a>
                    </li>

                    <li class="navbar-item">
                      <a href="contact.jsp" class="navbar-link" data-nav-link>Contact</a>
                    </li>

                  </ul>

                  <a href="#" class="navbar-action-btn">Log In</a>
                </nav>

                <div class="header-actions">

                  <button class="action-btn" aria-label="Search">
                    <ion-icon name="search-outline" aria-hidden="true"></ion-icon>
                  </button>

                  <button class="action-btn user" aria-label="User">
                    <ion-icon name="person-outline" aria-hidden="true"></ion-icon>
                  </button>

                  <button class="action-btn" aria-label="cart">
                    <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>

                    <span class="btn-badge">0</span>
                  </button>

                </div>

              </div>
            </header>


            <!-- #HERO Section-->

            <section class="section hero has-bg-image" id="home" aria-label="home"
              style="height: 200px; width: 1259px;  background-image: url('https://cdn.pixabay.com/photo/2017/08/07/18/57/dog-2606759_1280.jpg')">
              <div class="container">

                <h1 class="h1 hero-title">
                  <span class="span">Checkout the cart once</span>
                </h1>
                <a href="#" class="btn">Shop Now</a>

              </div>
            </section>
            <section class="section product" id="shop" aria-label="product">
              <div class="container">

                <h2 class="h2 section-title">
                  <span class="span">Best</span> shopping deals
                </h2>
                <div class="product">
                  <% try{ String id=request.getParameter("id"); serviceProvider spp=new
                    serviceProvider(JDBCConnnection.getconnection()); List<allcatEntity> li=spp.checkSell(id);
                    int j=0;
                    for( allcatEntity obj :li ){
                    j++;
                    %>

                    <img src="<%= obj.getImage1() %>" style="height: 200px" alt="Product">
                    <h2 style="text-align: left">
                      <%= obj.getName() %>
                    </h2>
                    <p class="price">
                      <%=obj.getPrice() %> ₹
                    </p>
                    <%-- <p class="food">Food is : <%=obj.getFood()%>
                        </p> --%>
                        <a href="shop.jsp" class="btn" style='margin-bottom: 10px;'>Explore food</a>
                        <a href="allProducts.jsp" class="btn" style='margin-bottom: 10px;'>Explore Toys</a>
                        <button class="add-to-cart"
                          style='background-color: black; border-radius: 20px;width:140px;'>Add to Cart</button>

                        <%} } catch(Exception e){ e.printStackTrace(); }%>

                </div>
                <div class="cart">
                  <h2>Your Cart</h2>
                  <ul id="cart-items">
                    <!-- Cart items will be added here dynamically -->
                  </ul>
                  <p class="total">Total: <span id="cart-total">₹ 0.00</span></p>
                  <button id="rzp-button1" class="add-to-cart"
                    style='background-color: black; border-radius: 20px; width:120px;'>Pay</button>
                </div>
              </div>
            </section>

            <script src="./assets/js/addtocart.js"></script>

            <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
            <script>
              var options = {
                "key": "rzp_test_pNDEM2FkfsRZbC", // Enter the Key ID generated from the Dashboard
                "amount": "10000", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
                "currency": "INR",
                "name": "Acme Corp", //your business name
                "description": "Test Transaction",
                "image": "https://example.com/your_logo",
                "order_id": "order_N8WH0gkNXEx2x5", //This is a sample Order ID. Pass the id obtained in the response of Step 1
                "handler": function (response) {
                  alert(response.razorpay_payment_id);
                  alert(response.razorpay_order_id);
                  alert(response.razorpay_signature)
                },
                "prefill": { //We recommend using the prefill parameter to auto-fill customer's contact information, especially their phone number
                  "name": "Gaurav Kumar", //your customer's name
                  "email": "gaurav.kumar@example.com",
                  "contact": "9000090000"  //Provide the customer's phone number for better conversion rates 
                },
                "notes": {
                  "address": "Razorpay Corporate Office"
                },
                "theme": {
                  "color": "#3399cc"
                }
              };
              var rzp1 = new Razorpay(options);
              rzp1.on('payment.failed', function (response) {
                alert(response.error.code);
                alert(response.error.description);
                alert(response.error.source);
                alert(response.error.step);
                alert(response.error.reason);
                alert(response.error.metadata.order_id);
                alert(response.error.metadata.payment_id);
              });
              document.getElementById('rzp-button1').onclick = function (e) {
                rzp1.open();
                e.preventDefault();
              }
            </script>
          </body>

          </html>