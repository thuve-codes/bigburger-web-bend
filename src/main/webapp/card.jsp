<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Cart</title>
    
    <link rel="icon" href="./source/Orange Background.png">
    <style>
        body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 0;
          background-color: #f4f4f4;
        }
    
        .container {
          width: 80%;
          margin: 20px auto;
        }
    
        .cart-header {
          font-size: 24px;
          font-weight: bold;
          margin-bottom: 20px;
        }
    
        .cart-items {
          width: 100%;
          border-collapse: collapse;
        }
    
        .cart-items th, .cart-items td {
          padding: 10px;
          text-align: left;
        }
    
        .cart-items th {
          background-color: #f0f0f0;
        }
    
        .cart-items tr {
          background-color: #fff;
          border-bottom: 1px solid #ddd;
        }
    
        .cart-items td {
          vertical-align: middle;
        }
    
        .item-name {
          font-size: 16px;
          font-weight: bold;
        }
    
        .item-price {
          font-size: 16px;
          color: #333;
        }
    
        .item-total {
          font-size: 16px;
          color: #333;
        }
    
        .item-quantity {
          display: flex;
          align-items: center;
        }
    
        .quantity-button {
          background-color: #f4f4f4;
          border: 1px solid #ddd;
          padding: 5px;
          cursor: pointer;
        }
    
        .quantity-input {
          width: 30px;
          text-align: center;
          margin: 0 5px;
        }
    
        .cart-summary {
          margin-top: 20px;
          display: flex;
          justify-content: flex-end;
          background-color: #fff;
          padding: 10px;
          border-radius: 5px;
          box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
    
        .summary-details {
          margin-right: 20px;
        }
    
        .summary-details p {
          margin: 5px 0;
        }
    
        .checkout-button {
          background-color: #f5a623;
          color: white;
          border: none;
          padding: 15px;
          cursor: pointer;
          font-size: 16px;
          font-weight: bold;
        }
    
        .checkout-button:hover {
          background-color: #d68d22;
        }
      </style>
</head>

<body>
    
  <div class="container">
    <div class="cart-header">
      Your Cart 
    </div>

    <table class="cart-items">
      <thead>
        <tr>
          <th>Item</th>
          <th>Price</th>
          <th>Quantity</th>
          <th>Total</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="item-name">Pi Pizza Oven</td>
          <td class="item-price">$469.99</td>
          <td class="item-quantity" style="text-align: center;">
            <span id="quan">1</span>
          </td>
          <td class="item-total">$469.99</td>
        </tr>
       
      </tbody>
    </table>

    <div class="cart-summary">
      <div class="summary-details">
        <p>Subtotal: $1,019.98</p>
        <p>Sales Tax: $102.00</p>
        <p><strong>Grand Total: $1,121.98</strong></p>
      </div>
      <div>
        <button class="checkout-button"onclick="window.open('payment.jsp', 'paymentWindow', 'width=600,height=550')" >Check out</button>
      </div>
    </div>
  </div>

  <div class="cart-summary">
    <p>Estimated Delivery Time: <span id="time"></span></p>
  </div>


  <script>
    var ctime=new Date();
    let hours = ctime.getHours();

    let minutes = ctime.getMinutes();

    var etimeh=hours+2;
    var etimem=minutes+30;

    if (etimem>=60){
        etimeh=etimeh+1;
        etimem=etimem-60;
    }
    var ampm;
    if (etimeh>=12){
        ampm=" PM";
    }else{
        ampm=" AM";
    }
    var fetime=etimeh+" : " +etimem +ampm;
    var times=document.getElementById("time");

    times.innerHTML=fetime;
  </script>
</body>
</html>