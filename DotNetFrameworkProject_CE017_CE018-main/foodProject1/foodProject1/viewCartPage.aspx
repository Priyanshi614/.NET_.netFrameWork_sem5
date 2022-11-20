﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewCartPage.aspx.cs" Inherits="foodProject1.viewCartPage" %>

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

    
    <form id="form1" runat="server" style="margin-top:20px;">
        <div style="margin-left: 20px ; ">
             <div>
                 <b><h4> Add to Cart Details :</h4></b>
             </div>

        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="500px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
            <EmptyDataTemplate>
                &nbsp; Empty Cart
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <PagerTemplate>
                Empty Cart ..
            </PagerTemplate>
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Id], [ProductName], [Price] FROM [Cart] WHERE ([username] = @username)"
            DeleteCommand="Delete from [Cart] Where Id=@Id">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="Username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        </div>
        
        <asp:Button class="btn btn-primary" ID="purchesFood" runat="server" OnClick="BillingOrder" Text="Purches" />
        &nbsp;
        <asp:Button class="btn btn-secondary" ID="viewBackToHome" runat="server" OnClick="BackToHomeBtnClick" Text="Back To Home" />

        <br />
        <br />
    </form>
</body>
</html>
