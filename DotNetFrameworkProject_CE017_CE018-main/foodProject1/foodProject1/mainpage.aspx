<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainpage.aspx.cs" Inherits="foodProject1.mainpage" %>

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

    <form id="form1" runat="server">
        <div>
             <p><center><h4> <%=MyNotesToUser %></center></h4></p>

            <div style="margin-left: 20px ; " >
                 <asp:Button class="btn btn-primary" ID="viewCartBtn" runat="server" OnClick="viewCartBtnCilck" Text="View Cart" />
                 &nbsp;
                 <asp:Button class="btn btn-primary" ID="viewProfile" runat="server" OnClick="viewProfileBtnClick" Text="My Profile" />
                 &nbsp;
                 <asp:Button class="btn btn-primary" ID="logoutbtn" runat="server" OnClick="logoutBtnClick" Text="Log Out" />
            </div>
           
            <br /><br />
           
            <div style="margin-left: 20px ; ">
                <b><h4>Menu :</h4></b>
                <p><b><center><h5> <%=AddSucMsg %></center></h5></b></p>
            </div>
            <div style="margin-left: 20px ; ">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AlternatingRowStyle-Width= "500px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="500px" >
<AlternatingRowStyle Width="500px"></AlternatingRowStyle>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
