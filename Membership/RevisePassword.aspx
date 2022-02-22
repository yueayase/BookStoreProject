<%@ Page Title="修改密碼" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="RevisePassword.aspx.cs" Inherits="Membership_RevisePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="text-align: center">
    <asp:Label ID="Label1" runat="server" Text="舊密碼: "></asp:Label>
    <br />
    <asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="新密碼: "></asp:Label>
    <br />
    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btbUpdate" runat="server" Text="更改" onclick="btbUpdate_Click" 
        Width="56px" />
    <br />
    <br />
    <asp:Label ID="lblError" runat="server"></asp:Label>
</div>
    
    
</asp:Content>

