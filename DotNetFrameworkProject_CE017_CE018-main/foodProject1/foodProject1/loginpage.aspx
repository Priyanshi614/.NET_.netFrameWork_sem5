<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="foodProject1.loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="login-wrapper">

          <form id="form1" runat="server" class="form">
        <div>
             <h2>Login</h2><br />
             <p><center><h4> <%=resultMsg %></center></h4></p>
        </div>
        <div class="input-group">
            UserName :&nbsp;
            <asp:TextBox ID="usernameid" runat="server" ></asp:TextBox>
        </div>
        <div  class="input-group"> 
            Password :&nbsp;
            <asp:TextBox ID="passwordid" TextMode="Password" runat="server"></asp:TextBox>
        </div>

         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/signuppage.aspx">New User ??</asp:HyperLink>

        <asp:Button ID="Loginbutton" runat="server" OnClick="Loginbutton_Click" Text="Login" class="submit-btn" />

    </form>
       
    </div>
  
</body>
</html>
