<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Payment Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }

    .container {
      width: 100%;
      max-width: 500px;
      margin: 50px auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
      color: #333;
    }

    .form-group {
      margin-bottom: 20px;
    }

    label {
      font-weight: bold;
      display: block;
      color: #333;
      margin-bottom: 5px;
    }

    input[type="text"],
    input[type="number"],
    input[type="date"] {
      width: 100%;
      padding: 10px;
      border-radius: 4px;
      border: 1px solid #ccc;
      font-size: 16px;
    }

    input[type="text"]:focus,
    input[type="number"]:focus,
    input[type="date"]:focus {
      outline: none;
      border-color: #4CAF50;
    }

    .form-actions {
      display: flex;
      justify-content: space-between;
      margin-top: 20px;
    }

    .form-actions button {
      padding: 10px 20px;
      font-size: 16px;
      border-radius: 4px;
      cursor: pointer;
      border: none;
      transition: background-color 0.3s;
    }

    .form-actions .pay-btn {
      background-color: #4CAF50;
      color: white;
    }

    .form-actions .pay-btn:hover {
      background-color: #45a049;
    }

    .form-actions .cancel-btn {
      background-color: #f44336;
      color: white;
    }

    .form-actions .cancel-btn:hover {
      background-color: #d32f2f;
    }

    .card-details {
      margin-bottom: 10px;
    }

    .expiry-date {
      display: flex;
      justify-content: space-between;
    }

    .expiry-date input {
      width: 48%;
    }

  </style>
</head>
<body>

  <div class="container">
    <h1>Payment Details</h1>
    <form id="payment-form">
      <div class="form-group">
        <label for="cardholder-name" id="cardcn">Cardholder Name</label>
        <input type="text" id="cardholder-name" name="cardholder-name" placeholder="John Doe" required>
      </div>

      <div class="form-group">
        <label for="card-number">Card Number</label>
        <input type="number" id="card-number" name="card-number" placeholder="1234 5678 9012 3456" required>
      </div>

      <div class="form-group card-details">
        <div class="expiry-date">
          <div>
            <label for="expiry-date" id="exp">Expiry Date</label>
            <input type="date" id="expiry-date" name="expiry-date" required>
          </div>
          <div>
            <label for="cvv">CVV</label>
            <input type="number" id="cvv" name="cvv" placeholder="123" required>
          </div>
        </div>
      </div>

      <div class="form-actions">
        <button type="submit" class="pay-btn" onclick="payment('pay');">Pay Now</button>
        <button type="button" class="cancel-btn"  onclick="payment('can');">Cancel</button>
      </div>
    </form>
  </div>
<script>
    function payment(message){


     var cardcn = document.getElementById('cardcn');
     var cardnumber = document.getElementById('card-number').value;
    var exp = document.getElementById('exp');
    var cvv = document.getElementById('cvv').value;

    console.log(cardcn);
     console.log(exp);
     console.log(cvv);
     console.log(cardnumber);
 

    if (message=="pay"){
        if(cardcn==undefined || exp==undefined || cvv=="" || cardnumber==""){
            alert("Please fill in all the required fields.");
            return false; // Prevent form submission
        }
        
        alert("Order Placed Sucessfully");
            //Remove listed items in databse
           // validate();
            window.close();
            window.location.href='index.html';
    }else{
            alert("Order Cancelled sucessfully");
            window.close();
           // window.location.href='index.html';

            

        }
    }
</script>
</body>
</html>
