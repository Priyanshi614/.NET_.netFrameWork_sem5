<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewProfilePage.aspx.cs" Inherits="foodProject1.viewProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
     <!-- As a heading -->
<nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid" style="height: 40px ; ">
    <span class="navbar-brand mb-0 h1" style="font-size: 20px ;"> &nbsp; Online Food Ordering</span>
  </div>
</nav>
    <br />
    <form id="form1" runat="server">
        <div style="margin-left: 20px ; ">

             <p><center><h4>My Profile </center></h4></p>
            </div>
            <center>
            <asp:GridView ID="GridViewProfile" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="750px">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
                <br />
                <div>
                 <asp:Button class="btn btn-primary" ID="viewCartBtn" runat="server" OnClick="viewCartBtnCilck" Text="View Cart" />
                 &nbsp;
                 <asp:Button class="btn btn-secondary" ID="viewBackToHome" runat="server" OnClick="BackToHomeBtnClick" Text="Back To Home" />
            </div>
                </center>

    </form>
</body>
</html>
