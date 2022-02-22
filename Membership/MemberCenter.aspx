<%@ Page Title="會員中心" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="MemberCenter.aspx.cs" Inherits="Membership_MembershipCenter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="text-align: center">
      <table class="style2">
          <tr>
              <td>
                  <asp:LinkButton ID="lbtnUpdate" runat="server" onclick="lbtnUpdate_Click" 
                      Visible="False">更新商品</asp:LinkButton>
                  <br />
                  <asp:LinkButton ID="lbtnAddOrDelete" runat="server" 
                      onclick="lbtnAddOrDelete_Click" Visible="False">增刪商品</asp:LinkButton>
                  <br />
                  <asp:LinkButton ID="lbtnView" runat="server" onclick="lbtnView_Click" 
                      Visible="False">檢視資料庫</asp:LinkButton>
                  &nbsp;</td>
              <td>
                  <asp:Label ID="Label1" runat="server" Text="姓名: "></asp:Label>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                  <br />
                  <asp:Label ID="Label2" runat="server" Text="電子郵件: "></asp:Label>
                  <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                  <br />
                  <asp:Label ID="Label3" runat="server" Text="家用電話: "></asp:Label>
                  <asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox>
                  <br />
                  <asp:Label ID="Label4" runat="server" Text="手機: "></asp:Label>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="txtCellPhone" runat="server"></asp:TextBox>
                  <br />
                  <asp:Label ID="Label5" runat="server" Text="郵遞區號: "></asp:Label>
                  <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                  <br />
                  <asp:Label ID="Label6" runat="server" Text="住址: "></asp:Label>
                  <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                  <br />
                  <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" Text="更新" 
                      Width="68px" />
                  <br />
                  <br />
                  <asp:Label ID="lblError" runat="server"></asp:Label>
                  &nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="txtRevisePassword" runat="server" 
                      onclick="txtRevisePassword_Click" Text="修改密碼" />
                  <br />
                  <br />
                  <br />
              </td>
          </tr>
      </table>
      <br />
    
  </div>
</asp:Content>

