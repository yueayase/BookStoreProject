<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Entertainment.aspx.cs" Inherits="LeisureAndLife_Entertainment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <h1 style="text-align: center">
        休閒娛樂</h1>
    <p style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="allProducts" 
            AutoGenerateColumns="False" onrowcommand="GridView1_RowCommand" 
            AllowPaging="True">
            <Columns>
               <asp:BoundField DataField="ISBN" />
               <asp:ButtonField CommandName="Select" ButtonType="Link" DataTextField="BookName" HeaderText="書名" />
               <asp:BoundField DataField="Author" HeaderText="作者" />
               <asp:BoundField DataField="Price" HeaderText="價格" />
               <asp:ButtonField ButtonType="Button" HeaderText="購買" Text="加入購物車" CommandName="AddToCart" />
            </Columns>
        </asp:GridView>
    </p>
    <p style="text-align: center">
        <asp:Label ID="lbInfo" runat="server"></asp:Label>
    </p>
    <p style="text-align: center">
        &nbsp;
    
       <asp:SqlDataSource ID="allProducts" runat="server"
            ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>"
            SelectCommand="SELECT ISBN, BookName, Author, Price FROM Book 
                           JOIN BookType 
                           ON Book.TypeId=BookType.TypeId
                           WHERE DetailedTypeName='休閒'" />
</asp:Content>

