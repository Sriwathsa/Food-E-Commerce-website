<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Information</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700" rel="stylesheet">
<style>
body {
  background-color: #F8F8F8;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  margin: 0;
  font-family: "Poppins", sans-serif;
}

.container {
  background-color: #FFFFFF;
  padding: 40px;
  border-radius: 10px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  max-width: 400px;
  text-align: center;
}

.personal-information {
  background-color: #00B5EF;
  color: #FFFFFF;
  padding: 10px 0;
  margin-bottom: 20px;
  font-size: 1.5em;
  border-radius: 5px;
}

.input-field {
  margin: 10px 0;
  padding: 10px;
  font-size: 14px;
  width: 100%;
  border: none;
  background-color: #F0F0F0;
  color: #333;
  border-radius: 4px;
}

.input-field[type="submit"] {
  background-color: #292075;
  color: #FFFFFF;
  margin-top: 20px;
  font-size: 1em;
  text-transform: uppercase;
  font-weight: bold;
  cursor: pointer;
  padding: 12px;
  border-radius: 4px;
  transition: background-color 0.3s ease;
  display: block; /* Add this line to make it a box */
  border: 1px solid #292075; /* Add this line to add a border */
}

.input-field[type="submit"]:hover {
  background-color: #1A1540;
}

.image-container {
  margin-bottom: 20px;
}

@media only screen and (max-width: 480px) {
  .container {
    margin: 0 10px;
  }
  
  .input-field[type="submit"] {
    height: 40px;
  }
}
</style>
</head>
<body>
  <div class="container">
  <form action="thankyou" >
    <div class="personal-information">
      Payment Information
    </div>
    
    <div class="image-container">
      <img src="https://sterlingglobal.global/wp-content/uploads/2015/12/harrods_feature-300x2735.png" alt="Payment Image" width="150" height="150">
    </div>
    <input class="input-field" type="text" name="first-name" placeholder="First Name"/>
    <input class="input-field" type="text" name="last-name" placeholder="Surname"/>
    <input class="input-field" type="text" name="number" placeholder="Card Number"/>
    <input class="input-field" type="text" name="expiry" placeholder="MM / YY"/>
    <input class="input-field" type="text" name="cvc" placeholder="CCV"/>

    <div class="card-wrapper"></div>

    <input class="input-field" type="text" name="streetaddress" required="required" autocomplete="on" maxlength="45" placeholder="Street Address"/>
    <input class="input-field" type="text" name="city" required="required" autocomplete="on" maxlength="20" placeholder="City"/>
    <input class="input-field" type="text" name="zipcode" required="required" autocomplete="on" pattern="[0-9]*" maxlength="5" placeholder="ZIP code"/>
    <input class="input-field" type="email" name="email" required="required" autocomplete="on" maxlength="40" placeholder="Email"/>
    
    <input class="input-field" type="submit" value="Submit"/>
   </form>
  </div>
</body>
</html>
