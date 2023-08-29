<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Check.aspx.cs" Inherits="DD_Footwear.Check" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DD Footwear</title>
</head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
<!--Stylesheet-->
<style media="screen">
    *,
    *:before,
    *:after {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }

    body {
        background-image:url(images/Background1234.jpg);
        background-repeat: no-repeat;
        background-size: cover;
    }

    .background {
        width: 430px;
        height: 520px;
        position: absolute;
        transform: translate(-50%,-50%);
        left: 50%;
        top: 50%;
    }

        .background .shape {
            height: 200px;
            width: 200px;
            position: absolute;
            border-radius: 50%;
        }

    .shape:first-child {
        background: linear-gradient( #1845ad, #23a2f6 );
        left: -80px;
        top: -80px;
    }

    .shape:last-child {
        background: linear-gradient( to right, #ff512f, #f09819 );
        right: -30px;
        bottom: -80px;
    }

    form {
        height: 420px;
        width: 400px;
        background-color: rgba(255,255,255,0.13);
        position: absolute;
        transform: translate(-50%, -50%);
        top: 50%;
        left: 20%; /* Adjust left positioning as needed */
        border-radius: 10px;
        backdrop-filter: blur(10px);
        border: 2px solid rgba(255,255,255,0.1);
        box-shadow: 0 0 40px rgba(8,7,16,0.6);
        padding: 50px 35px;
    }

        form * {
            font-family: 'Poppins',sans-serif;
            color: #ffffff;
            letter-spacing: 0.5px;
            outline: none;
            border: none;
        }

        form h3 {
            font-size: 32px;
            font-weight: 500;
            line-height: 42px;
            text-align: center;
            color: darkblue;
        }

    label {
        display: block;
        margin-top: 30px;
        font-size: 16px;
        font-weight: 500;
    }

    input {
        display: block;
        height: 50px;
        width: 100%;
        background-color: rgba(8,7,16,0.6);
        border-radius: 3px;
        padding: 0 10px;
        margin-top: 8px;
        font-size: 14px;
        font-weight: 300;
    }

    ::placeholder {
        color: #e5e5e5;
    }

    button {
        margin-top: 50px;
        width: 100%;
        background-color: #ffffff;
        color: #080710;
        padding: 15px 0;
        font-size: 18px;
        font-weight: 600;
        border-radius: 5px;
        cursor: pointer;
    }

    .social {
        margin-top: 30px;
        display: flex;
    }

        .social div {
            background: red;
            width: 150px;
            border-radius: 3px;
            padding: 5px 10px 10px 5px;
            background-color: rgba(255,255,255,0.27);
            color: #eaf0fb;
            text-align: center;
        }

            .social div:hover {
                background-color: rgba(255,255,255,0.47);
            }

        .social .fb {
            margin-left: 25px;
        }

        .social i {
            margin-right: 4px;
        }


    .table {
        padding-top: 180px;
        text-align: center;
        justify-content:center;
        align-content:center;
        align-items:center;
    }

    table {
        margin-left: auto;
        margin-right: auto;
    }

    .btn11 {
        width: 250px;
        margin-left: auto;
        margin-right: auto;
        display: block;
        text-align: center;
    }

    a {
        text-decoration: underline;
        margin: auto;
        margin-top: 30px;
    }
</style>
<body>
     <h1>pls use the name as above brand names to perchase which u need to buy</h1>
    <form id="form1" runat="server">
        <div>
            <form>
                <h3>CHECK AVAILABILITY</h3>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox1" runat="server" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                <br />
                <br />

                <asp:Button ID="Button2" runat="server" Text="Check" BackColor="DarkGreen" OnClick="Button2_Click" />


            </form>
                   <!-- Table -->
 
            <div class="table">
                <asp:GridView ID="GridView1" CssClass="view" runat="server" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="100px" Width="600px" BackColor="White" BorderColor="#E7E7FF" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle Font-Bold="True" ForeColor="#F7F7F7" Font-Size="30px" BackColor="#4A3C8C" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BorderStyle="none" Font-Names=" 'Supermercado One', cursive" Font-Size="25px" Wrap="true" BackColor="#E7E701" ForeColor="#00000" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#00000" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" VerticalAlign="Middle" HorizontalAlign="Center" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>

            </div>
            <a href="Order.aspx" class="btn11">Place Order</a>


            <br />
            <br />
            <br />

        </div>
    </form>
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
   
</body>
</html>
