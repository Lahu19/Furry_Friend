<%@page import="com.entity.blog" %>
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
            <link rel="stylesheet" href="./assets/css/blog.css">
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
            <main>
              <article>

                <!-- #HERO Section-->

                <section class="section hero has-bg-image" id="home" aria-label="home"
                  style="height: 200px; width: 1710px; background-image: url('https://cdn.pixabay.com/photo/2017/08/07/18/57/dog-2606759_1280.jpg')">
                  <div class="container">

                    <h1 class="h1 hero-title">
                      <span class="span">Our Satisfied customers</span>
                    </h1>
                    <a href="#" class="btn">Write a blog</a>

                  </div>
                </section>

                <!--  #OFFE-->

                <section class="card_block">
                  <% try{ serviceProvider sp=new serviceProvider(JDBCConnnection.getconnection()); List<blog>
                    li=sp.blogList();
                    int i=0;
                    for( blog ce: li ){
                    i++;

                    %>
                    <div class="blog-card">
                      <!-- <img class="blog_card_img"src="https://images.pexels.com/photos/6001183/pexels-photo-6001183.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="Blog Image"/> -->
                      <div class="blog-card-content">
                        <h2 class="blog-card-title">
                          <%=ce.getName() %>
                        </h2>
                        <p class="blog-card-description">
                          <%=ce.getInfo() %>
                        </p>
                        <a href="#" class="read-more">Read More</a>
                      </div>
                    </div>
                    <% } }catch(Exception e){ e.printStackTrace(); } %>
                </section>



              </article>
            </main>
            <!-- #FOOTER-->
            <footer class="footer" style="background-image: url('./assets/images/footer-bg.jpg')">
              <div class="footer-top section">
                <div class="container">
                  <div class="footer-brand">
                    <a href="#" class="logo">Furry Friends</a>
                    <p class="footer-text">
                      If you have any question, please contact us at <a href="mailto:furryfrinends777@gmail.com"
                        class="link">furryfrinends777@gmail.com</a>
                    </p>
                    <ul class="contact-list">
                      <li class="contact-item">
                        <ion-icon name="location-outline" aria-hidden="true"></ion-icon>
                        <address class="address">
                          Near DYPCET Kolhapur.
                        </address>
                      </li>
                      <li class="contact-item">
                        <ion-icon name="call-outline" aria-hidden="true"></ion-icon>
                        <a href="tel:+917972539797" class="contact-link">(+91) 7972539797</a>
                      </li>
                    </ul>
                    <ul class="social-list">
                      <li>
                        <a href="#" class="social-link">
                          <ion-icon name="logo-facebook"></ion-icon>
                        </a>
                      </li>
                      <li>
                        <a href="#" class="social-link">
                          <ion-icon name="logo-twitter"></ion-icon>
                        </a>
                      </li>
                      <li>
                        <a href="#" class="social-link">
                          <ion-icon name="logo-instagram"></ion-icon>
                        </a>
                      </li>
                    </ul>
                  </div>
                  <ul class="footer-list">
                    <li>
                      <p class="footer-list-title">Corporate</p>
                    </li>
                    <li>
                      <a href="#" class="footer-link">Careers</a>
                    </li>

                    <li>
                      <a href="#" class="footer-link">About Us</a>
                    </li>

                    <li>
                      <a href="#" class="footer-link">Contact Us</a>
                    </li>

                    <li>
                      <a href="#" class="footer-link">FAQs</a>
                    </li>

                    <li>
                      <a href="#" class="footer-link">Vendors</a>
                    </li>

                    <li>
                      <a href="#" class="footer-link">Affiliate Program</a>
                    </li>

                  </ul>

                  <ul class="footer-list">

                    <li>
                      <p class="footer-list-title">Information</p>
                    </li>
                    <li>
                      <a href="#" class="footer-link">Online Store</a>
                    </li>
                    <li>
                      <a href="#" class="footer-link">Privacy Policy</a>
                    </li>

                    <li>
                      <a href="#" class="footer-link">Refund Policy</a>
                    </li>

                    <li>
                      <a href="#" class="footer-link">Shipping Policy</a>
                    </li>

                    <li>
                      <a href="#" class="footer-link">Terms of Service</a>
                    </li>

                    <li>
                      <a href="#" class="footer-link">Track Order</a>
                    </li>

                  </ul>

                  <ul class="footer-list">

                    <li>
                      <p class="footer-list-title">Services</p>
                    </li>
                    <li>
                      <a href="#" class="footer-link">Grooming</a>
                    </li>
                    <li>
                      <a href="#" class="footer-link">Positive Dog Training</a>
                    </li>
                    <li>
                      <a href="#" class="footer-link">Veterinary Services</a>
                    </li>
                    <li>
                      <a href="#" class="footer-link">Petco Insurance</a>
                    </li>
                    <li>
                      <a href="#" class="footer-link">Pet Adoption</a>
                    </li>
                    <li>
                      <a href="#" class="footer-link">Resource Center</a>
                    </li>

                  </ul>

                </div>
              </div>

              <div class="footer-bottom">
                <div class="container">

                  <p class="copyright">
                    &copy; 2024 Made with ♥ by <a href="#" class="copyright-link">Group 1 of TYC</a>
                  </p>

                  <img src="./assets/images/payment.png" width="397" height="32" loading="lazy" alt="payment method"
                    class="img">

                </div>
              </div>

            </footer>
            <!-- #BACK TO TOP-->
            <a href="#top" class="back-top-btn" aria-label="back to top" data-back-top-btn>
              <ion-icon name="chevron-up" aria-hidden="true"></ion-icon>
            </a>
            <!-- custom js link-->
            <script src="./assets/js/script.js" defer></script>
            <!-- ionicon link-->
            <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
            <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
          </body>

          </html>