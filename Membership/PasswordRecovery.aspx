<%@ Page Title="回復密碼" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="Membership_PasswordRecovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; height: 97px;">
       填寫你的帳號,我們會把密碼寄給你...<br />
       <asp:Label ID="Label1" runat="server" Text="你的帳號: "></asp:Label>
       <br />
       <asp:TextBox ID="txtYourAccount" runat="server" ></asp:TextBox>
       <br />
       <br />
       <asp:Button ID="btnRecover" runat="server" Text="回復" 
            onclick="btnRecover_Click" style="height: 21px" />
    </div>
</asp:Content>

