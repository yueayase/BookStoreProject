<%@ Page Title="購買" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Buy_buy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div style="text-align: center">
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
           DataSourceID="ShoppingList" AutoGenerateColumns="false">
          <Columns>
             <asp:BoundField DataField="BuyId" HeaderText="流水號" />
             <asp:BoundField DataField="ISBN" HeaderText="ISBN"/>
             <asp:BoundField DataField="BookName" HeaderText="書名"/>
             <asp:BoundField DataField="Price" HeaderText="價格" />
             <asp:BoundField DataField="Amount"  HeaderText="數量" />
             <asp:CommandField ShowEditButton="true" />
          </Columns>
       </asp:GridView>
       <br />
       <asp:Label ID="lblTotal" runat="server"></asp:Label>
       <br />
       <br />
       <asp:Button ID="btnPay" runat="server" Text="結帳" Width="60px" 
           onclick="btnPay_Click" />
       <br />
       <br />
       <asp:SqlDataSource ID="ShoppingList" runat="server"
            ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>"
            SelectCommand="SELECT BuyId, Book.ISBN, BookName, Price, Amount
                           FROM Book JOIN Buy ON Book.ISBN=Buy.ISBN
                           JOIN Person ON Person.PersonId=Buy.PersonId"
            UpdateCommand="UPDATE Buy SET Amount=@Amount WHERE ISBN=@ISBN"
       />
       <br />
      <asp:Label ID="lblMessage" runat="server"></asp:Label>
   </div>
</asp:Content>

