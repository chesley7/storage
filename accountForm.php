<!DOCTYPE HTML>

<!--FILE NAME: accountForm.php                                                                                  
WRITTEN BY: Chesley                                                                                             
WHEN: June 20 2014                                                                                              
PURPOSE: Form to create an account                                                                              
-->

<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <title> Create an Account</title>
  <link type="text/css" href="style.css" rel="stylesheet"/>
</head>
<body>
Fill out this form to create an account with us.
  <form method="post" action="">
    <p>First Name:<br><input required= "" type="text" name="first">
    <p>Last Name:<br><input required="" type="text" name="last">
    <p>Email Address:<br><input required="" type="text" name="email">
    <p>Phone Number (1234567890):<br><input required="" type="text" name="phone">
    <p>Street Address:<br><input required="" type="text" name="">
    <p>City:<br><input required="" type="text" name="city">
    <p>State:<br>
    <select>
      <option value="Alabama">Alabama</option>
      <option value="Alaska">Alaska</option>
      <option value="Arizona">Arizona</option>
      <option value="Arkansas">Arkansas</option>
    </select><br>
    <p>Zip Code:<br><input required="" type="text" name="zip"><br>

    <input type="submit" value="Submit">
  </form>
</body>
</html>
