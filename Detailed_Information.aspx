<%@ Page Title="商品訊息" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Detailed_Information.aspx.cs" Inherits="Detailed_Information" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-align: left;
        }
        .style3
        {
            width: 100%;
        }
        .style5
        {
            width: 344px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="style2">
      <table class="style3">
          <tr>
              <td class="style5">
                  <asp:Image ID="imgProduct" runat="server" Height="287px" Width="337px" />
              </td>
              <td>
     <asp:Label ID="lblBookName" runat="server"></asp:Label>
                  <br />
      <asp:Label ID="lblAuthor" runat="server"></asp:Label>
                  <br />
      <asp:Label ID="lblPublisher" runat="server"></asp:Label>
                  <br />
                  <asp:Label ID="lblPrice" runat="server"></asp:Label>
                  <br />
      <asp:Label ID="lblISBN" runat="server"></asp:Label>
                  <br />
                  <br />
      <asp:Label ID="lblProductState" runat="server"></asp:Label>
                  <br />
                  <br />
      <asp:Label ID="lblDescription" runat="server"></asp:Label>
                  <br />
                  <br />
      <asp:Label ID="lblCaution" runat="server"></asp:Label>
              </td>
          </tr>
      </table>
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      &nbsp;<br />
      <br />
      <br />
      <br />
  </div>
</asp:Content>

