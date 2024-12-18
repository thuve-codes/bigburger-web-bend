<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="dao.user_dao" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BIG Burger</title>
    <link rel="icon" href="./source/Orange Background.png">
    <link rel="stylesheet" href="indexxcss.css">
   <script src="./jsforindex.js"></script>
   
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"> 
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Rubik+Mono+One&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Protest+Revolution&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Lacquer&display=swap');
    </style>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=shopping_cart" />
    <header>
        <nav>
            <ul>
                <li>Home</li>
                <li><a href="#menu">Menu</a></li>
                <li><a href="#anoutus">About Us</a></li>
                <li ><a href="./card.jsp" ><img src="./source/cart.png" class="cardimg" width="40" height="40" alt="cart.png" style="margin-top: 0px; " ></a></li>
            </ul>
        </nav>
    </header>

</head>

<body>
    <div class="realbody">
    <div class="bodyc">
        <h2>WELCOME TO <span class="bb1">BIG BURGER</span></h2>

        <div class="slideshow-container">

            <!-- Slides -->
            
    
            <div class="mySlides fade">
                <img src="./source/burger - Made with PosterMyWall.jpg" style="width:100%">
            </div>
    
            <div class="mySlides fade">
                <img src="./source/Burger Banner Ads - Made with PosterMyWall.jpg" style="width:100%">
            </div>
            <div class="mySlides fade">
                <img src="./source/banner 5 (1).jpg" style="width:100%">
            </div>
            <div class="mySlides fade">
                <img src="./source/banner 5 (2).jpg" style="width:100%">
            </div>
            <div class="mySlides fade">
                <img src="./source/banner 5 (3).jpg" style="width:100%">
            </div>
    
            <!-- Navigation dots -->
            <div style="text-align:center">
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
            </div>
    <br>
        </div>

        <h3>Experience the taste of perfection with our mouthwatering burgers,<br> handcrafted with love and the finest ingredients. At Burger Master, every bite is a celebration of flavor.</h3>
        <br>
        <h3 class="h3" style="color: red; font-style: italic;">"Black Burger, Black Friday, Big Burger Big Savings!"</h3>

        <img src="./source/Untitled (1).png">
        <br>
        <div class="banner">
            <h1>🌟 Black Friday Mega Offer! 🌟</h1>
            <p>🛍️ Get Incredible Deals from Nov 26 to Nov 30 🛍️</p>
            <p class="offer">Up to 30% Off on Selected Items!</p>
            <p>🎁 Shop Now & Save Big – Limited Time Only!</p>
            <a href="#menu" >Shop Now</a>
        </div>
        
    </div>

    <section class="menu" id="menu">
       
        <br>
        
        <div class="menu-item">
            <img src="./source/Daco_2748124.png" alt="Classic Burger">
            <h3>Classic Burger</h3>
            <p><span class="price">LKR 599.00</span></p>
            <button class="button"  data-item="Classic Burger" data-price="LKR 599.00" onclick="addtocard('Classic Burger');">Add to Cart</button>
        </div>
        <div class="menu-item">
            <img src="./source/Delicious-cheese-burger-on-transparent-background-PNG-fotor-2024112615147.png" alt="Cheese Burger">
            <h3>Cheese Burger</h3>
            <p><span class="pricec">LKR 949.00</span></p>
            <p>Special Price: <span class="price">LKR 799.00</span></p>
            
            <button class="button" data-item="Cheese Burger" data-price="LKR 799.00" onclick="addtocard('Cheese Burger');">Add to Cart</button>
           
        </div>
        <div class="menu-item">
            <img src="./source/pngwing.com (21)-fotor-20241126151720.png" alt="Black Burger">
            <h3>Black Burger</h3>
            <p><span class="pricec">LKR 1399.00</span></p>
            <p>Special Price: <span class="price">LKR 999.00</span></p>
            <button class="button" data-item="Black Burger" data-price="LKR 999.00" onclick="addtocard('Black Burger');">Add to Cart</button>
           
        </div>

    
        <div class="special-item">
            <img src="./source/Fresh_beef_burger_isolated_-1-removebg-preview.png" alt="Special Offer 1">
            <h3>Double Cheeseburger</h3>
            <p><span class="price">LKR 899.00</span></p>
            <button class="button" data-item="Double Cheeseburger" data-price="LKR 899.00" onclick="addtocard('Double Cheeseburger');">Add to Cart</button>
        </div>
        <div class="special-item">
            <img src="./source/vecteezy_delicious-blueberry-bbq-bacon-burger-on-transparent-background_27143813.png" alt="Special Offer 2">
            <h3>BBQ Bacon Burger</h3>
            <p><span class="price">LKR 1299.00</span></p>
            <button class="button" data-item="BBQ Bacon Burger" data-price="LKR 1299.00" onclick="addtocard('BBQ Bacon Burger');">Add to Cart</button>
        </div>
l
        <div class="special-item">
            <img src="./source/pngwing.com.png" alt="Special Offer 2">
            <h3>Submarine Sandwich</h3>
            <p><span class="price">LKR 1099.00</span></p>
            <button class="button" data-item="Submarine sandwich" data-price="LKR 1099.00" onclick="addtocard('Submarine sandwich');">Add to Cart</button>
        </div>

        <div class="special-item">
            <img src="./source/milkshakes.png" alt="Special Offer 2">
            <h3>Milkshakes</h3>
            <p><span class="price">LKR 299.00</span></p>
            <button class="button" data-item="Milkshakes" data-price="LKR 299.00" onclick="addtocard('Milkshakes');">Add to Cart</button>
        </div>
        <div class="special-item">
            <img src="./source/French fries-fotor-20241126151822.png" alt="Special Offer 2">
            <h3>French fries</h3>
            <p><span class="pricec">LKR 439.00</span></p>
            <p>Special Price:<span class="price"> LKR 349.00</span></p>
            <button class="button" data-item="French fries" data-price="LKR 349.00" onclick="addtocard('French fries');">Add to Cart</button>
               </div>
        <div class="special-item">
            <img src="./source/Crispy fried chicken.png" alt="Special Offer 2">
            <h3>Crispy Fried Chicken</h3>
            <p><span class="price">LKR 849.00</span></p>
            <button class="button" data-item="Crispy fried chicken" data-price="LKR 849.00" onclick="addtocard('Crispy fried chicken');">Add to Cart</button>
        </div>
        <div class="special-item">
            <img src="./source/Chicken Shawarma.png" alt="Special Offer 2">
            <h3>Chicken Shawarma</h3>
            <p><span class="price">LKR 799.00</span></p>
            <button class="button" data-item="Chicken Shawarma" data-price="LKR 799.00" onclick="addtocard('Chicken Shawarma');">Add to Cart</button>
        </div>
<span id="span"></span>
    </section>

    <div class="contactus">
        <section class="contact-form" id="anoutus">
            <h2>Contact Us</h2>
            <form action="#" method="post">
                <input type="text" class="form-input" name="name" placeholder="Your Name" required>
                <input type="email" class="form-input" name="email" placeholder="Your Email" required>
                <textarea class="form-input" name="message" rows="4" placeholder="Your Message" required></textarea>
                <button type="submit" class="button">Send Message</button>
            </form>
            <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String message = request.getParameter("message");
            //int age = Integer.parseInt(request.getParameter("age"));

            user_dao dao = new user_dao();
            dao.saveing(name, email, message);
            out.println("<script>alert('message send sucessfully!!');</script>");
        }
    %>
        </section>
    </div>

    <footer>
        <div class="footer-container">
            <div class="footer-info">
                <h2>Big Burger - Bigger. Better. Burger.</h2>
                <p>Craving something Big? We’ve got you covered! At Big Burger, we serve the biggest and juiciest burgers in town, packed with the freshest ingredients. Dive into the deliciousness today!</p>
            </div>

            <div class="order-online">
                <h3>Order Online</h3>
                <p>Enjoy your Big Burger from the comfort of your home! Order online and get your favorite burger delivered straight to your door.</p>
                <button><a href="./card.html">View Cart</a></button>
            </div>

            <div class="social-media">
                <h3>Get Social With Us</h3>
                <ul>
                    <li><a href="#">Instagram</a></li>
                    <li><a href="#">Facebook</a></li>
                    <li><a href="#">Twitter</a></li>
                </ul>
            </div>

            <div class="contact">
                <h3>Contact Us</h3>
                <p>Developed By THUVEREAKAN </p>
                <p>📞 Phone: +94 77-470-4219</p>
                <p>📧 Email: <a href="mailto:support@bigburger.com">support@bigburger.com</a></p>
                <p>🏠 Address: No 28, Jeyanthinagar Kilinochchi,Sri Lanka</p>
            </div>

        </div>
    </footer>

    <script>
        
let slideIndex = 0;


showSlides();

       
    </script>

</div>
</body>

</html>


<!--17rd Dec-->