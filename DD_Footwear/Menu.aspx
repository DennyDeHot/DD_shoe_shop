<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="DD_Footwear.Menu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DD Footwear</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->


    <link rel="stylesheet" href="themes/font-awesome/css/font-awesome.min.css">
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Imbeded font from Google -->
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
    <link id="callCss" rel="stylesheet" href="themes/css/bootstrap.min.css" type="text/css" media="screen" charset="utf-8" />
    <link id="callCss1" rel="stylesheet" href="themes/css/style.css" type="text/css" media="screen" charset="utf-8" />
    <link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link rel="stylesheet" href="themes/font-awesome/css/font-awesome.min.css">
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Imbeded font from Google -->
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>


    <style>
        *,
        *:after,
        *:before {
            overflow: hidden;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            background-image:url(images/Background1234.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            height: 100vh;
            align-items: center;
            justify-content: center;
            display: flex;
            text-align: center;
        }

        button {
            display: inline-block;
            position: relative;
            background: none;
            border: none;
            color: #000000;
            font-size: 18px;
            cursor: pointer;
            margin: 20px 30px;
            background: rgba(0, 0, 0, 0.4);
        }

        span {
            display: block;
            padding: 25px 80px;
        }

        button::before,
        button::after {
            content: "";
            width: 0;
            height: 2px;
            position: absolute;
            transition: all 0.2s linear;
            background: #fff;
        }

        span::before,
        span::after {
            content: "";
            width: 2px;
            height: 0;
            position: absolute;
            transition: all 0.2s linear;
            background: #fff;
        }

        button:hover::before,
        button:hover::after {
            width: 100%;
        }

        button:hover span::before,
        button:hover span::after {
            height: 100%;
        }
        /*----- button 1 -----*/
        .btn-1::before,
        .btn-1::after {
            transition-delay: 0.2s;
        }

        .btn-1 span::before,
        .btn-1 span::after {
            transition-delay: 0s;
        }

        .btn-1::before {
            right: 0;
            top: 0;
        }

        .btn-1::after {
            left: 0;
            bottom: 0;
        }

        .btn-1 span::before {
            left: 0;
            top: 0;
        }

        .btn-1 span::after {
            right: 0;
            bottom: 0;
        }

        .btn-1:hover::before,
        .btn-1:hover::after {
            transition-delay: 0s;
        }

        .btn-1:hover span::before,
        .btn-1:hover span::after {
            transition-delay: 0.2s;
        }

        /*--- Button 2 -------*/

        .btn-2::before,
        .btn-2::after {
            transition-delay: 0s;
        }

        .btn-2 span::before,
        .btn-2 span::after {
            transition-delay: 0.2s;
        }

        .btn-2::before {
            right: 0;
            top: 0;
        }

        .btn-2::after {
            left: 0;
            bottom: 0;
        }

        .btn-2 span::before {
            left: 0;
            top: 0;
        }

        .btn-2 span::after {
            right: 0;
            bottom: 0;
        }

        .btn-2:hover::before,
        .btn-2:hover::after {
            transition-delay: 0.2s;
        }

        .btn-2:hover span::before,
        .btn-2:hover span::after {
            transition-delay: 0s;
        }

        /*----- button 3 -----*/
        .btn-3::after {
            left: 0;
            bottom: 0;
            transition-delay: 0.6s;
        }

        .btn-3 span::after {
            transition-delay: 0.4s;
            right: 0;
            bottom: 0;
        }

        .btn-3::before {
            right: 0;
            top: 0;
            transition-delay: 0.2s;
        }

        .btn-3 span::before {
            transition-delay: 0s;
            left: 0;
            top: 0;
        }

        .btn-3:hover::after {
            transition-delay: 0s;
        }

        .btn-3:hover span::after {
            transition-delay: 0.2s;
        }

        .btn-3:hover::before {
            transition-delay: 0.4s;
        }

        .btn-3:hover span::before {
            transition-delay: 0.6s;
        }

        /*----- button 4 -----*/
        .btn-4::after {
            right: 0;
            bottom: 0;
            transition-duration: 0.4s;
        }

        .btn-4 span::after {
            right: 0;
            bottom: 0;
            transition-duration: 0.4s;
        }

        .btn-4::before {
            left: 0;
            top: 0;
            transition-duration: 0.4s;
        }

        .btn-4 span::before {
            left: 0;
            top: 0;
            transition-duration: 0.4s;
        }

        /*----- button 5 -----*/
        .btn-5::after {
            left: 0;
            bottom: 0;
            transition-duration: 0.4s;
        }

        .btn-5 span::after {
            right: 0;
            top: 0;
            transition-duration: 0.4s;
        }

        .btn-5::before {
            right: 0;
            top: 0;
            transition-duration: 0.4s;
        }

        .btn-5 span::before {
            left: 0;
            bottom: 0;
            transition-duration: 0.4s;
        }

        /*----- button 6 -----*/
        .btn-6::before {
            left: 50%;
            top: 0;
            transition-duration: 0.4s;
        }

        .btn-6::after {
            left: 50%;
            bottom: 0;
            transition-duration: 0.4s;
        }

        .btn-6 span::before {
            left: 0;
            top: 50%;
            transition-duration: 0.4s;
        }

        .btn-6 span::after {
            right: 0;
            top: 50%;
            transition-duration: 0.4s;
        }

        .btn-6:hover::before,
        .btn-6:hover::after {
            left: 0;
        }

        .btn-6:hover span::before,
        .btn-6:hover span::after {
            top: 0;
        }

        h4 {
            font-size: 45px;
            color: black;
            padding: 10px;
        }

        a {
            text-decoration: none;
            color: aliceblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <main>
                <h4>Main Menu</h4>


                <button class="btn-1"><span><a href="AddShoe.aspx">ADD SHOES</a> </span></button>
                <button class="btn-1"><span><a href="AddSupplier.aspx">ADD SUPPLIER</a> </span></button>
                <button class="btn-2"><span><a href="ManageShoe.aspx">MANAGE SHOE </a></span></button>
                <button class="btn-3"><span><a href="ManageSupplier.aspx">MANAGE SUPPLIER </a></span></button>
               

            </main>
        </div>
    </form>
</body>
</html>

