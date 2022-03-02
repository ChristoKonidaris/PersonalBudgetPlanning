<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Default.aspx.cs" Inherits="PROG6212_POE_19013888._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1 style="text-align:center">
            User Login
        </h1>
        <p style="text-align:center">
            &nbsp;</p>
    </div>
    
    <div style="text-align:center">
        <asp:Label ID="UserName" runat="server" Text="User Name:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <br />
        <br />
    </div>

    <div style="text-align:center">
        <asp:Label ID="Password" runat="server" Text="Password:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"  ></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblLoginDisplay" runat="server"></asp:Label>
        <br />
        <br />
        &nbsp;<asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btnSignUp" runat="server" Text="Sign up" OnClick="btnSignUp_Click" />
        <br />
    </div>

</asp:Content>
