<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SignUp.aspx.cs" Inherits="PROG6212_POE_19013888.SignUp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

 <div>
        <h1 style="text-align:center">
            Sign Up
        </h1>
        <p style="text-align:center">
            &nbsp;</p>
    </div>
    
    <div style="text-align:center">
        <asp:Label ID="UserName" runat="server" Text="User Name:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUserNameSignUp" runat="server"></asp:TextBox>
        <br />
        <br />
    </div>

    <div style="text-align:center">
        <asp:Label ID="Password" runat="server" Text="Password:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPasswordSignUp" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        </div>
   <div style="text-align:center">
        <asp:Label ID="CPassword" runat="server" Text="Confirm Password:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCPasswordSignUp" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblSignUpDisplay" runat="server"></asp:Label>
        <br />
        <br />
   </div>
        <div style="text-align:center">
        <asp:Button ID="btnSignUp" runat="server" Text="Sign up" OnClick="btnSignUp_Click"  />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        <br />
    </div> 

</asp:Content>