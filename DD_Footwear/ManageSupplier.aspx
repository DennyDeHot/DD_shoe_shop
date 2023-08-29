<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageSupplier.aspx.cs" Inherits="DD_Footwear.ManageSupplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>DD Footwear</title>
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
            height: 800px;
            width: 400px;
            background-color: rgba(255,255,255,0.13);
            position: absolute;
            transform: translate(-50%,-50%);
            top: 50%;
            left: 50%;
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
            border-radius: 100px;
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
            margin-top: 50px;
            text-align: center;
        }

        table {
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <form>

            <br />


            <h3>MANAGE SUPPLIER</h3>
                <br />

            <%--    <asp:TextBox ID="TextBox" runat="server" placeholder="ID"></asp:TextBox>--%>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Address"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Mobile"></asp:TextBox>

            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="DarkGreen" Text="Search" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" BackColor="DarkGreen" Text="Update" OnClick="Button2_Click"  />
            <asp:Button ID="Button3" runat="server" BackColor="DarkGreen" Text="Delete" OnClick="Button3_Click"  />
            <asp:Button ID="Button4" runat="server" BackColor="DarkGreen" Text="Back to Home" OnClick="Button4_Click"  />
            <br />



        </form>

        <div class="table">
            <asp:GridView ID="GridView1" CssClass="view" runat="server" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="100px" Width="600px" BackColor="White" BorderColor="#E7E7FF" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle Font-Bold="True" ForeColor="#F7F7F7" Font-Size="30px" BackColor="#0000" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BorderStyle="none" Font-Names=" 'Supermercado One', cursive" Font-Size="25px" Wrap="true" BackColor="#0000" ForeColor="#000000" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#0000" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" VerticalAlign="Middle" HorizontalAlign="Center" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>



        </div>
    </form>
</body>
</html>
