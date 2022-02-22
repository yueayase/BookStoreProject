<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1 style="text-align: center">
        登入</h1>
    <asp:Panel ID="Panel1" runat="server" style="text-align: center" DefaultButton="btnLogin">
        <asp:Label ID="Label1" runat="server" Text="UserName: "></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br style="text-align: center" />
        <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" Text="登入" 
            Width="86px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCaution" runat="server"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="忘記密碼? 請點以下連結:"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Membership/PasswordRecovery.aspx">回復密碼</asp:HyperLink>
    </asp:Panel>
    </asp:Content>

