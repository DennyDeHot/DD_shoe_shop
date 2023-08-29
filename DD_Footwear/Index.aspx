<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DD_Footwear.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DD Footwear</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script><link rel="stylesheet" href="./style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<body>
<!--Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.aspx">DD SHOE HOUSE</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="Order.aspx">BUY NOW</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Login.aspx">LOGIN</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Check.aspx" tabindex="-1" aria-disabled="true">CHECK AVAILABILITY</a>
      </li>
    </ul>
  </div>
</nav>
  
   <!-- Table -->
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <table class="table table-bordered">
          <thead>
            <tr>
              <th scope="col">Number</th>
              <th scope="col">Shoe Name</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>Nike</td>
            </tr>
            <tr>
              <td>2</td>
              <td>Addidas</td>
            </tr>
            <tr>
              <td>3</td>
              <td>Filla</td>
            </tr>
            <tr>
              <td>4</td>
              <td>Mountain</td>
            </tr>
            <tr>
              <td>5</td>
              <td>Puma</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
  
  <!--Jumbotron-->
  <div class="container-fluid">
  <div class="jumbotron-display">
    <div class="jumbotron-title"></div>      
<h1>We are a Leading shoue shop selling company which selling above world class brands only</h1>  </div>    
</div>

<!--Product Photo Link Grid-->
<div class="container">
  <div class="row">
    <div class="col-lg-12">
  <img src="https://media.gq.com/photos/63eba1b2275d2fef78a425c2/16:9/w_1920,c_limit/nike-running-shoes-streakfly-invincible.jpg" alt="nike shoe" style="width:100%;">
  <div class="bottom-left"></div>
  </div>
  </div>
<div class="row">
        <div class="col-sm-6 products">
<img src="https://images.unsplash.com/photo-1532873626-62910b6145fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="nike shoe" style="width:100%;">
          <div class="bottom-left-products">Latest in Skating</div>
          <div class="products-info">Mens and womens</div>
        </div>
  <div class="col-sm-6 products">
<img src="https://images.unsplash.com/photo-1514989940723-e8e51635b782?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80" alt="nike shoe" style="width:100%;">
    <div class="bottom-left-products">New Trends</div>
    <div class="products-info">Customize your colors.</div>
        </div>
</div>
  </div>



<!--Leave a Review-->
  <div class="container-fluid">
  <div class="row background">
    <div class="col-sm-5 px-0">
      <img class="publications-img" src="https://images.unsplash.com/photo-1578608712688-36b5be8823dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80" alt="Product" width="auto" height="600">
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-12">
      <div class="form-title">Leave a Review</div>
          <form>
  <div class="form-group">
    <label for="formGroupExampleInput">NAME:</label>
    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="First Last">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">EMAIL:</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="example@email.com">
            </div>
  <div class="form-group">
    <label for="formGroupExampleInput3">MESSAGE:</label>
    <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="Enter your message">
  </div>
  <div class="form-group">
    <button type="button" class="button-form">Submit</button>
  </div>
</form>
      </div>
    </div>
      </div>
    </div>
    </div>
  </div>

<!--Footer-->
    <footer class="footer">
<div class="container-fluid">
  <div class="row">
    <div class="col-md-4 col-sm-12">
      <h4>Quick Links</h4>
      <ul>
    <li><a href="#">Home</a></li>
    <li><a href="#">New Releases</a></li>
    <li><a href="#">Women</a></li>
    <li><a href="#">Men</a></li>
</ul>
    </div>
    <div class="col-md-4 col-sm-12">
      <h4>Contact Us</h4>
      <p>101 Main Street<br>Colombo, Srilanka<br>0112-555-555</p>
    </div>
    <div class="col-md-4 col-sm-12">
      <h4>Follow Us</h4>
      <div class="social-icon"></div><div class="social-icon"></div><div class="social-icon"></div>
    </div>
  </div>
</div>
  <hr class="hr-footer">
      <div class="copyright">Copyright 2023 Workstate. All rights reserved.</div>
</footer>
</body>
</html>

