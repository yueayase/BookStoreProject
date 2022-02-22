<%@ Page Title="進退貨" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AddOrDeleteProduct.aspx.cs" Inherits="ControlProduct_AddOrDeleteProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div style="text-align: center">
       <asp:ListView ID="ListView1" runat="server" DataSourceID="BookData" 
           DataKeyNames="ISBN" InsertItemPosition="LastItem">
           <ItemTemplate>
               <li style="background-color: #E0FFFF;color: #333333;">ISBN:
                   <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                   <br />
                   BookName:
                   <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                   <br />
                   Author:
                   <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                   <br />
                   PublisherId:
                   <asp:Label ID="PublisherIdLabel" runat="server" 
                       Text='<%# Eval("PublisherId") %>' />
                   <br />
                   TypeId:
                   <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("TypeId") %>' />
                   <br />
                   Price:
                   <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                   <br />
                   Description:
                   <asp:Label ID="DescriptionLabel" runat="server" 
                       Text='<%# Eval("Description") %>' />
                   <br />
                   ImageUrl:
                   <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                   <br />
                   <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
               </li>
           </ItemTemplate>
           <AlternatingItemTemplate>
               <li style="background-color: #FFFFFF;color: #284775;">ISBN:
                   <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                   <br />
                   BookName:
                   <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                   <br />
                   Author:
                   <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                   <br />
                   PublisherId:
                   <asp:Label ID="PublisherIdLabel" runat="server" 
                       Text='<%# Eval("PublisherId") %>' />
                   <br />
                   TypeId:
                   <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("TypeId") %>' />
                   <br />
                   Price:
                   <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                   <br />
                   Description:
                   <asp:Label ID="DescriptionLabel" runat="server" 
                       Text='<%# Eval("Description") %>' />
                   <br />
                   ImageUrl:
                   <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                   <br />
                   <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
               </li>
           </AlternatingItemTemplate>
           <EmptyDataTemplate>
               未傳回資料。
           </EmptyDataTemplate>
           <InsertItemTemplate>
               <li style="">ISBN:
                   <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                   <br />
                   BookName:
                   <asp:TextBox ID="BookNameTextBox" runat="server" 
                       Text='<%# Bind("BookName") %>' />
                   <br />
                   Author:
                   <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                   <br />
                   PublisherId:
                   <asp:TextBox ID="PublisherIdTextBox" runat="server" 
                       Text='<%# Bind("PublisherId") %>' />
                   <br />
                   TypeId:
                   <asp:TextBox ID="TypeIdTextBox" runat="server" Text='<%# Bind("TypeId") %>' />
                   <br />
                   Price:
                   <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                   <br />
                   Description:
                   <asp:TextBox ID="DescriptionTextBox" runat="server" 
                       Text='<%# Bind("Description") %>' />
                   <br />
                   ImageUrl:
                   <asp:TextBox ID="ImageUrlTextBox" runat="server" 
                       Text='<%# Bind("ImageUrl") %>' />
                   <br />
                   <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                   <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
               </li>
           </InsertItemTemplate>
           <LayoutTemplate>
               <ul ID="itemPlaceholderContainer" runat="server" 
                   style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                   <li ID="itemPlaceholder" runat="server" />
                   </ul>
                   <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                       <asp:DataPager ID="DataPager1" runat="server">
                           <Fields>
                               <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                   ShowLastPageButton="True" />
                           </Fields>
                       </asp:DataPager>
                   </div>
               </LayoutTemplate>
               <EditItemTemplate>
                   <li style="background-color: #999999;">ISBN:
                       <asp:Label ID="ISBNLabel1" runat="server" Text='<%# Eval("ISBN") %>' />
                       <br />
                       BookName:
                       <asp:TextBox ID="BookNameTextBox" runat="server" 
                           Text='<%# Bind("BookName") %>' />
                       <br />
                       Author:
                       <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                       <br />
                       PublisherId:
                       <asp:TextBox ID="PublisherIdTextBox" runat="server" 
                           Text='<%# Bind("PublisherId") %>' />
                       <br />
                       TypeId:
                       <asp:TextBox ID="TypeIdTextBox" runat="server" Text='<%# Bind("TypeId") %>' />
                       <br />
                       Price:
                       <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                       <br />
                       Description:
                       <asp:TextBox ID="DescriptionTextBox" runat="server" 
                           Text='<%# Bind("Description") %>' />
                       <br />
                       ImageUrl:
                       <asp:TextBox ID="ImageUrlTextBox" runat="server" 
                           Text='<%# Bind("ImageUrl") %>' />
                       <br />
                       <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                       <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                   </li>
               </EditItemTemplate>
               <ItemSeparatorTemplate>
                   <br />
               </ItemSeparatorTemplate>
               <SelectedItemTemplate>
                   <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">ISBN:
                       <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                       <br />
                       BookName:
                       <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                       <br />
                       Author:
                       <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                       <br />
                       PublisherId:
                       <asp:Label ID="PublisherIdLabel" runat="server" 
                           Text='<%# Eval("PublisherId") %>' />
                       <br />
                       TypeId:
                       <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("TypeId") %>' />
                       <br />
                       Price:
                       <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                       <br />
                       Description:
                       <asp:Label ID="DescriptionLabel" runat="server" 
                           Text='<%# Eval("Description") %>' />
                       <br />
                       ImageUrl:
                       <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                       <br />
                       <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                   </li>
               </SelectedItemTemplate>
       </asp:ListView>
           <br />
           You can reference the following to insert data:<br />
           <br />
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               DataKeyNames="PublisherId" DataSourceID="Publisher" AllowPaging="True">
               <Columns>
                   <asp:BoundField DataField="PublisherId" HeaderText="PublisherId" ReadOnly="True" 
                       SortExpression="PublisherId" InsertVisible="False" />
                   <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" 
                       SortExpression="PublisherName" />
               </Columns>
           </asp:GridView>
           <br />
           <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
               DataKeyNames="TypeId" DataSourceID="BookType">
               <Columns>
                   <asp:BoundField DataField="TypeId" HeaderText="TypeId" InsertVisible="False" 
                       ReadOnly="True" SortExpression="TypeId" />
                   <asp:BoundField DataField="GeneralTypeName" HeaderText="GeneralTypeName" 
                       SortExpression="GeneralTypeName" />
                   <asp:BoundField DataField="DetailedTypeName" HeaderText="DetailedTypeName" 
                       SortExpression="DetailedTypeName" />
               </Columns>
           </asp:GridView>
           <asp:SqlDataSource ID="BookType" runat="server" 
               ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" 
               SelectCommand="SELECT * FROM BookType"></asp:SqlDataSource>
           <asp:SqlDataSource ID="Publisher" runat="server" 
               ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" 
               SelectCommand="SELECT PublisherId, PublisherName FROM Publisher"></asp:SqlDataSource>
           <br />
       <asp:SqlDataSource ID="BookData" runat="server" 
           ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" 
           InsertCommand="INSERT INTO Book
                          VALUES(@ISBN, @BookName, @Author, @PublisherId, 
                          @TypeId, @Price,@Description,@ImageUrl)" 
                          SelectCommand="SELECT * FROM Book" DeleteCommand="DELETE  FROM Book WHERE ISBN=@ISBN"
       >
           <DeleteParameters>
               <asp:Parameter Name="ISBN" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="ISBN" />
               <asp:Parameter Name="BookName" />
               <asp:Parameter Name="Author" />
               <asp:Parameter Name="PublisherId" />
               <asp:Parameter Name="TypeId" />
               <asp:Parameter Name="Price" />
               <asp:Parameter Name="Description" />
               <asp:Parameter Name="ImageUrl" />
           </InsertParameters>
       </asp:SqlDataSource>
   </div>
    
</asp:Content>

