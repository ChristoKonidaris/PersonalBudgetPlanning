<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="UserInformation.aspx.cs" Inherits="PROG6212_POE_19013888.UserInformation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
        <h1 style="text-align:center">
            User Information
        </h1>
        <p style="text-align:center">
            &nbsp;</p>
        <h4 style="text-align:center">
            Please enter all the necessary information to use the system.
        </h4>
    </div>
    <br />
    <div style="text-align:center">
        <asp:Label ID="Label1" runat="server" Text="Gross Monthly Income:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtIncome" runat="server"></asp:TextBox>
    </div>
    <br />
    <div style="text-align:center">
        <asp:Label ID="Label2" runat="server" Text="Estimated Monthly Tax Deductions:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtTax" runat="server"></asp:TextBox>
    </div>
    <br />
    <div style="text-align:center">
        <asp:Label ID="Label3" runat="server" Text="Groceries:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtGroceries" runat="server"></asp:TextBox>
    </div>
    <br />
    <div style="text-align:center">
        <asp:Label ID="Label4" runat="server" Text="Water and Lights:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtWaterLights" runat="server"></asp:TextBox>
    </div>
    <br />
    <div style="text-align:center">
        <asp:Label ID="Label5" runat="server" Text="Cell-phone and Telephone:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtCellphone" runat="server"></asp:TextBox>
    </div>
    <br />
    <div style="text-align:center">
        <asp:Label ID="Label6" runat="server" Text="Travel Costs (including petrol):"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtTravelCost" runat="server"></asp:TextBox>
    </div>
    <br />
    <div style="text-align:center">
        <asp:Label ID="Label7" runat="server" Text="Other Expenses:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtOther" runat="server"></asp:TextBox>
    </div>
    <br />

    <div style="text-align:center">
        <asp:TextBox ID="txtUserInfoDisplay" runat="server" Height="80px" TextMode="MultiLine" Width="231px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BtnSave" runat="server" Text="Save" Height="26px" Width="55px" OnClick="BtnSave_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
        <br />
        <br />
                ______________________________________________________________________________________________________________________________

        
    </div>
       
    <br />
    <div>
        <h1 style="text-align:center">
            Living Specifications 
        </h1>
        <p style="text-align:center">
            &nbsp;</p>
        <h4 style="text-align:center">
            Please choose whether you would like to rent accommodation or buy a property.
        </h4>
    </div>
    <br />
    <div style="text-align:center">
        <asp:Button ID="btnRent" runat="server" Text="Rent" Height="26px" Width="55px" OnClick="btnRent_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        OR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="btnBuy" runat="server" Text="Buy" Height="26px" Width="55px" OnClick="btnSkip_Click" />
        <br />
        <br />
______________________________________________________________________________________________________________________________        
    </div>

    <br />

    <div>
        <h1 style="text-align:center">
            Vehicle Financing
        </h1>
        <p style="text-align:center">
            &nbsp;</p>
        <h4 style="text-align:center">
            If you choose to purchase a vehicle enter the necessary information, if you choose to not purchase a vehicle leave this section blank.
        </h4>
    </div>
    <br />

     <div style="text-align:center">
        <asp:Label ID="lable6" runat="server" Text="Estimated Insurance Premium:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtInsurance" runat="server"></asp:TextBox>
         <br />
    </div>
    <br />
    <div style="text-align:center">
        <asp:Label ID="Label8" runat="server" Text="Interest Rate (%):"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtInterestRate" runat="server"></asp:TextBox>
         <br />
    </div>
    <br />
    <div style="text-align:center">
        <asp:Label ID="Label9" runat="server" Text="Total Deposit:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtTotalDeposit" runat="server"></asp:TextBox>
         <br />
    </div>
    <br />
    <div style="text-align:center">
        <asp:Label ID="Label10" runat="server" Text="Purchase Price:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtPurchasePrice" runat="server" ></asp:TextBox>
         
    </div>
    <br />
    <div style="text-align:center">
        <asp:Label ID="Label11" runat="server" Text="Model and Make:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtModelMake" runat="server"></asp:TextBox>
         
    </div>
    

    <div style="text-align:center">
        <br />
        <asp:TextBox ID="txtVehicleDisplay" runat="server" Height="103px" TextMode="MultiLine" Width="312px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnVehicleClear" runat="server" Text="Clear" OnClick="btnVehicleClear_Click" /> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="btnVehicleSave" runat="server" Text="Save" Height="26px" Width="55px" OnClick="Button1_Click" />
        <br />
        <br />
______________________________________________________________________________________________________________________________    
        <br />
        <br />
    </div>
    <div>
        <h1 style="text-align:center">
            Available Monthly Money After Deductions
        </h1>
        <p style="text-align:center">
            &nbsp;</p>
        <h4 style="text-align:center">
            Monthly money left over after all deductions from expenses have been made.
        </h4>
    </div>
    <br />
    <div style="text-align:center">
        <asp:TextBox ID="txtAvailableMonthlyAmountDisplay" runat="server" Height="114px" TextMode="MultiLine" Width="550px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAvailableMonthlyAmountClear" runat="server" Text="Clear" Height="23px" Width="72px" OnClick="btnAvailableMonthlyAmountClear_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnCalculateMonthlyAmount" runat="server" Text="Calculate" Height="26px" Width="79px" OnClick="btnCalculateMonthlyAmount_Click" />
        <br />
        <br />
______________________________________________________________________________________________________________________________        
        <br />
        <br />
    </div>
    <div>
        <h1 style="text-align:center">
            Calculate monthly savings to reach end goal
        </h1>
        <p style="text-align:center">
            &nbsp;</p>
        <h4 style="text-align:center">
            Enter theinformation in order to calculate the amount you need to save monthly to reach a specific goal amount.
        </h4>
    </div>
    <br />
    <div style="text-align:center; margin-left: 40px;">
        <div style="text-align:center">
        <asp:Label ID="Label12" runat="server" Text="Specify the amount you would like to save up:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtSpecifiedAmount" runat="server"></asp:TextBox>
         <br />
    </div>
    <br /><div style="text-align:center">
        <asp:Label ID="Label13" runat="server" Text="Specify the number of months you would like it saved up by:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtNumOfMonthsToSave" runat="server"></asp:TextBox>
         <br />
    </div>
    <br /><div style="text-align:center">
        <asp:Label ID="Label14" runat="server" Text="Reason for saving  amount:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtReasonForSave" runat="server"></asp:TextBox>
         <br />
    </div>
    <br /><div style="text-align:center">
        <asp:Label ID="Label15" runat="server" Text="Interest rate that will be earned on the savings:"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtInterestOnSave" runat="server"></asp:TextBox>
         <br />
    </div>
    <br />
        <br />
        <asp:TextBox ID="txtCalcSaveDisplay" runat="server" Height="116px" TextMode="MultiLine" Width="521px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnCalcClear" runat="server" Text="Clear" Height="25px" OnClick="btnCalcClear_Click" Width="60px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <asp:Button ID="Button2" runat="server" Text="Calculate" Height="26px" Width="79px" OnClick="Button2_Click" />
        <br />
        <br />
    </div>

    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
</asp:Content>