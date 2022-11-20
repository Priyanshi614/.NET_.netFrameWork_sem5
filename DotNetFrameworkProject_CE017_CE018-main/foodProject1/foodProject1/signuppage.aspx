<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signuppage.aspx.cs" Inherits="foodProject1.signuppage" %>

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
             <h2>Registration</h2>

         <p><center><h4> <%=checkpass %></center></h4></p>
        </div>
        <div class="input-group" style=" width: 300px; height: 60px;">
            UserName :&nbsp;
            <asp:TextBox ID="usernameid" runat="server" ></asp:TextBox>
         </div>
                  <div class="input-group" style=" width: 300px; height: 60px;">
            Mobile Number :&nbsp;
            <asp:TextBox ID="mobilenumberid" runat="server" ></asp:TextBox>
        </div>
        <div class="input-group" style=" width: 300px; height: 60px;">
            Email Address :&nbsp;
            <asp:TextBox ID="emailaddressid" runat="server" ></asp:TextBox>
        </div>
    
        <div class="input-group" style=" width: 300px; height: 60px;">
            Resident Address :&nbsp;
            <asp:TextBox ID="ResidentAddressid" runat="server" ></asp:TextBox>
        </div>
        <div class="input-group" style=" width: 300px; height: 60px;">
            Password :&nbsp;
            <asp:TextBox ID="passwordid" runat="server" ></asp:TextBox>
        </div>
        <div  class="input-group" style=" width: 300px; height: 60px;"> 
            Confirm Password :&nbsp;
            <asp:TextBox ID="confrimpasswordid" runat="server"></asp:TextBox>
        </div>
              <br />
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/loginpage.aspx">Already Registrated ?? </asp:HyperLink>
        <asp:Button ID="Submitbutton" runat="server" OnClick="done" Text="Submit" class="submit-btn" />

    </form>

    </div>
</body>
</html>
