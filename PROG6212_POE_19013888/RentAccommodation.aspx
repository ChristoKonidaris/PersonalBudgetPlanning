<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="RentAccommodation.aspx.cs" Inherits="PROG6212_POE_19013888.RentAccommodation" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1 style="text-align:center">
            Rent Accommodation
        </h1>
        <p style="text-align:center">
            &nbsp;</p>
        <h4 style="text-align:center">
            Please enter the monthly rental amount.
        </h4>
        <p style="text-align:center">
            &nbsp;</p>
    </div>
    

     <div style="text-align:center">
        <asp:Label ID="lable6" runat="server" Text="Rent Amount:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtRent" runat="server"></asp:TextBox>
         <br />
         <br />
         <asp:TextBox ID="txtRentDisplay" runat="server" Height="82px" TextMode="MultiLine" Width="248px"></asp:TextBox>
         <br />
    </div>
    <br />

    <div style="text-align:center">
        <asp:Button ID="btnBack" runat="server" Text="Back" Height="26px" OnClick="btnBack_Click" Width="54px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnSave" runat="server" Text="Save" Height="26px" Width="55px" OnClick="BtnSave_Click" />
        

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClearRent" runat="server" OnClick="btnClearRent_Click" Text="Clear" />
        

    </div>
    <br />

    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />


    </asp:Content>