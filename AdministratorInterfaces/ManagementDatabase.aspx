<%@ Page Title="管理介面" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="ManagementDatabase.aspx.cs" Inherits="AdministratorInterfaces_ManagementDatabase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style2">Person Table:</h1>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="PersonId" 
        DataSourceID="Person" InsertItemPosition="LastItem" 
        style="text-align: center">
        <ItemTemplate>
            <li style="background-color: #FFFBD6;color: #333333;">PersonId:
                <asp:Label ID="PersonIdLabel" runat="server" Text='<%# Eval("PersonId") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Role:
                <asp:Label ID="RoleLabel" runat="server" 
                    Text='<%# Eval("Role") %>' />
                <br />
                EmailAddress:
                <asp:Label ID="EmailAddressLabel" runat="server" 
                    Text='<%# Eval("EmailAddress") %>' />
                <br />
                HomePhoneNumber:
                <asp:Label ID="HomePhoneNumberLabel" runat="server" 
                    Text='<%# Eval("HomePhoneNumber") %>' />
                <br />
                CellPhoneNumber:
                <asp:Label ID="CellPhoneNumberLabel" runat="server" 
                    Text='<%# Eval("CellPhoneNumber") %>' />
                <br />
                Zip:
                <asp:Label ID="ZipLabel" runat="server" Text='<%# Eval("Zip") %>' />
                <br />
                HomeAddress:
                <asp:Label ID="HomeAddressLabel" runat="server" 
                    Text='<%# Eval("HomeAddress") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
            </li>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <li style="background-color: #FAFAD2;color: #284775;">PersonId:
                <asp:Label ID="PersonIdLabel" runat="server" Text='<%# Eval("PersonId") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Role:
                <asp:Label ID="RoleLabel" runat="server" 
                    Text='<%# Eval("Role") %>' />
                <br />
                EmailAddress:
                <asp:Label ID="EmailAddressLabel" runat="server" 
                    Text='<%# Eval("EmailAddress") %>' />
                <br />
                HomePhoneNumber:
                <asp:Label ID="HomePhoneNumberLabel" runat="server" 
                    Text='<%# Eval("HomePhoneNumber") %>' />
                <br />
                CellPhoneNumber:
                <asp:Label ID="CellPhoneNumberLabel" runat="server" 
                    Text='<%# Eval("CellPhoneNumber") %>' />
                <br />
                Zip:
                <asp:Label ID="ZipLabel" runat="server" Text='<%# Eval("Zip") %>' />
                <br />
                HomeAddress:
                <asp:Label ID="HomeAddressLabel" runat="server" 
                    Text='<%# Eval("HomeAddress") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
            </li>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            未傳回資料。
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">PersonId:
                <asp:TextBox ID="PersonIdTextBox" runat="server" 
                    Text='<%# Bind("PersonId") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" 
                    Text='<%# Bind("Password") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Role:
                <asp:TextBox ID="RoleTextBox" runat="server" 
                    Text='<%# Bind("Role") %>' />
                <br />
                EmailAddress:
                <asp:TextBox ID="EmailAddressTextBox" runat="server" 
                    Text='<%# Bind("EmailAddress") %>' />
                <br />
                HomePhoneNumber:
                <asp:TextBox ID="HomePhoneNumberTextBox" runat="server" 
                    Text='<%# Bind("HomePhoneNumber") %>' />
                <br />
                CellPhoneNumber:
                <asp:TextBox ID="CellPhoneNumberTextBox" runat="server" 
                    Text='<%# Bind("CellPhoneNumber") %>' />
                <br />
                Zip:
                <asp:TextBox ID="ZipTextBox" runat="server" 
                    Text='<%# Bind("Zip") %>' />
                <br />
                HomeAddress:
                <asp:TextBox ID="HomeAddressTextBox" runat="server" 
                    Text='<%# Bind("HomeAddress") %>' />
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
                <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <EditItemTemplate>
                <li style="background-color: #FFCC66;color: #000080;">PersonId:
                    <asp:Label ID="PersonIdLabel1" runat="server" Text='<%# Eval("PersonId") %>' />
                    <br />
                    Password:
                    <asp:TextBox ID="PasswordTextBox" runat="server" 
                        Text='<%# Bind("Password") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Role:
                    <asp:TextBox ID="RoleTextBox" runat="server" 
                        Text='<%# Bind("Role") %>' />
                    <br />
                    EmailAddress:
                    <asp:TextBox ID="EmailAddressTextBox" runat="server" 
                        Text='<%# Bind("EmailAddress") %>' />
                    <br />
                    HomePhoneNumber:
                    <asp:TextBox ID="HomePhoneNumberTextBox" runat="server" 
                        Text='<%# Bind("HomePhoneNumber") %>' />
                    <br />
                    CellPhoneNumber:
                    <asp:TextBox ID="CellPhoneNumberTextBox" runat="server" 
                        Text='<%# Bind("CellPhoneNumber") %>' />
                    <br />
                    Zip:
                    <asp:TextBox ID="ZipTextBox" runat="server" 
                        Text='<%# Bind("Zip") %>' />
                    <br />
                    HomeAddress:
                    <asp:TextBox ID="HomeAddressTextBox" runat="server" 
                        Text='<%# Bind("HomeAddress") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </li>
            </EditItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">PersonId:
                    <asp:Label ID="PersonIdLabel" runat="server" Text='<%# Eval("PersonId") %>' />
                    <br />
                    Password:
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Role:
                    <asp:Label ID="RoleLabel" runat="server" 
                        Text='<%# Eval("Role") %>' />
                    <br />
                    EmailAddress:
                    <asp:Label ID="EmailAddressLabel" runat="server" 
                        Text='<%# Eval("EmailAddress") %>' />
                    <br />
                    HomePhoneNumber:
                    <asp:Label ID="HomePhoneNumberLabel" runat="server" 
                        Text='<%# Eval("HomePhoneNumber") %>' />
                    <br />
                    CellPhoneNumber:
                    <asp:Label ID="CellPhoneNumberLabel" runat="server" 
                        Text='<%# Eval("CellPhoneNumber") %>' />
                    <br />
                    Zip:
                    <asp:Label ID="ZipLabel" runat="server" Text='<%# Eval("Zip") %>' />
                    <br />
                    HomeAddress:
                    <asp:Label ID="HomeAddressLabel" runat="server" 
                        Text='<%# Eval("HomeAddress") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="Person" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" 
            DeleteCommand="DELETE FROM [Person] WHERE [PersonId] = @PersonId" 
            InsertCommand="INSERT INTO [Person] ([PersonId], [Password], [Name], [Role], [EmailAddress], [HomePhoneNumber], [CellPhoneNumber], [Zip], [HomeAddress]) VALUES (@PersonId, @Password, @Name, @Role, @EmailAddress, @HomePhoneNumber, @CellPhoneNumber, @Zip, @HomeAddress)" 
            SelectCommand="SELECT * FROM [Person]" 
            
            UpdateCommand="UPDATE [Person] SET [Password] = @Password, [Name] = @Name, [Role] = @Role, [EmailAddress] = @EmailAddress, [HomePhoneNumber] = @HomePhoneNumber, [CellPhoneNumber] = @CellPhoneNumber, [Zip] = @Zip, [HomeAddress] = @HomeAddress WHERE [PersonId] = @PersonId">
            <DeleteParameters>
                <asp:Parameter Name="PersonId" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="HomePhoneNumber" Type="String" />
                <asp:Parameter Name="CellPhoneNumber" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="HomeAddress" Type="String" />
                <asp:Parameter Name="PersonId" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="PersonId" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="HomePhoneNumber" Type="String" />
                <asp:Parameter Name="CellPhoneNumber" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="HomeAddress" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        
        <h1 style="text-align: center">Book Table:</h1>
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="ISBN" 
            DataSourceID="Book" InsertItemPosition="LastItem" 
            style="text-align: center">
            <ItemTemplate>
                <li style="background-color: #FFFBD6;color: #333333;">ISBN:
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
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                </li>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <li style="background-color: #FAFAD2;color: #284775;">ISBN:
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
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
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
                    <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <EditItemTemplate>
                    <li style="background-color: #FFCC66;color: #000080;">ISBN:
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
                    <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">ISBN:
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
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="Book" runat="server" 
                ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" 
                DeleteCommand="DELETE FROM [Book] WHERE [ISBN] = @ISBN" 
                InsertCommand="INSERT INTO [Book] ([ISBN], [BookName], [Author], [PublisherId], [TypeId], [Price], [Description], [ImageUrl]) VALUES (@ISBN, @BookName, @Author, @PublisherId, @TypeId, @Price, @Description, @ImageUrl)" 
                SelectCommand="SELECT * FROM [Book]" 
                UpdateCommand="UPDATE [Book] SET [BookName] = @BookName, [Author] = @Author, [PublisherId] = @PublisherId, [TypeId] = @TypeId, [Price] = @Price, [Description] = @Description, [ImageUrl] = @ImageUrl WHERE [ISBN] = @ISBN">
                <DeleteParameters>
                    <asp:Parameter Name="ISBN" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="BookName" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="PublisherId" Type="Int32" />
                    <asp:Parameter Name="TypeId" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="ImageUrl" Type="String" />
                    <asp:Parameter Name="ISBN" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="ISBN" Type="String" />
                    <asp:Parameter Name="BookName" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="PublisherId" Type="Int32" />
                    <asp:Parameter Name="TypeId" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="ImageUrl" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <h1 class="style2">Book Type:</h1>
            <asp:ListView ID="ListView3" runat="server" DataKeyNames="TypeId" 
                DataSourceID="BookType" InsertItemPosition="LastItem" 
                style="text-align: center">
                <ItemTemplate>
                    <li style="background-color: #FFFBD6;color: #333333;">TypeId:
                        <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("TypeId") %>' />
                        <br />
                        GeneralTypeName:
                        <asp:Label ID="GeneralTypeNameLabel" runat="server" 
                            Text='<%# Eval("GeneralTypeName") %>' />
                        <br />
                        DetailedTypeName:
                        <asp:Label ID="DetailedTypeNameLabel" runat="server" 
                            Text='<%# Eval("DetailedTypeName") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                    </li>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <li style="background-color: #FAFAD2;color: #284775;">TypeId:
                        <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("TypeId") %>' />
                        <br />
                        GeneralTypeName:
                        <asp:Label ID="GeneralTypeNameLabel" runat="server" 
                            Text='<%# Eval("GeneralTypeName") %>' />
                        <br />
                        DetailedTypeName:
                        <asp:Label ID="DetailedTypeNameLabel" runat="server" 
                            Text='<%# Eval("DetailedTypeName") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                    </li>
                </AlternatingItemTemplate>
                <EmptyDataTemplate>
                    未傳回資料。
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">GeneralTypeName:
                        <asp:TextBox ID="GeneralTypeNameTextBox" runat="server" 
                            Text='<%# Bind("GeneralTypeName") %>' />
                        <br />
                        DetailedTypeName:
                        <asp:TextBox ID="DetailedTypeNameTextBox" runat="server" 
                            Text='<%# Bind("DetailedTypeName") %>' />
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
                        <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>
                    <EditItemTemplate>
                        <li style="background-color: #FFCC66;color: #000080;">TypeId:
                            <asp:Label ID="TypeIdLabel1" runat="server" Text='<%# Eval("TypeId") %>' />
                            <br />
                            GeneralTypeName:
                            <asp:TextBox ID="GeneralTypeNameTextBox" runat="server" 
                                Text='<%# Bind("GeneralTypeName") %>' />
                            <br />
                            DetailedTypeName:
                            <asp:TextBox ID="DetailedTypeNameTextBox" runat="server" 
                                Text='<%# Bind("DetailedTypeName") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                        </li>
                    </EditItemTemplate>
                    <ItemSeparatorTemplate>
                        <br />
                    </ItemSeparatorTemplate>
                    <SelectedItemTemplate>
                        <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">TypeId:
                            <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("TypeId") %>' />
                            <br />
                            GeneralTypeName:
                            <asp:Label ID="GeneralTypeNameLabel" runat="server" 
                                Text='<%# Eval("GeneralTypeName") %>' />
                            <br />
                            DetailedTypeName:
                            <asp:Label ID="DetailedTypeNameLabel" runat="server" 
                                Text='<%# Eval("DetailedTypeName") %>' />
                            <br />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="BookType" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" 
                    DeleteCommand="DELETE FROM [BookType] WHERE [TypeId] = @TypeId" 
                    InsertCommand="INSERT INTO [BookType] ([GeneralTypeName], [DetailedTypeName]) VALUES (@GeneralTypeName, @DetailedTypeName)" 
                    SelectCommand="SELECT * FROM [BookType]" 
                    
                    UpdateCommand="UPDATE [BookType] SET [GeneralTypeName] = @GeneralTypeName, [DetailedTypeName] = @DetailedTypeName WHERE [TypeId] = @TypeId">
                    <DeleteParameters>
                        <asp:Parameter Name="TypeId" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="GeneralTypeName" Type="String" />
                        <asp:Parameter Name="DetailedTypeName" Type="String" />
                        <asp:Parameter Name="TypeId" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="GeneralTypeName" Type="String" />
                        <asp:Parameter Name="DetailedTypeName" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <h1 class="style2">Publisher Table:</h1>
                <asp:ListView ID="ListView4" runat="server" DataKeyNames="PublisherId" 
                    DataSourceID="Publisher" 
                    style="text-align: center">
                    <ItemTemplate>
                        <li style="background-color: #FFFBD6;color: #333333;">PublisherId:
                            <asp:Label ID="PublisherIdLabel" runat="server" 
                                Text='<%# Eval("PublisherId") %>' />
                            <br />
                            PublisherName:
                            <asp:Label ID="PublisherNameLabel" runat="server" 
                                Text='<%# Eval("PublisherName") %>' />
                            <br />
                            Address:
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            <br />
                            Decription:
                            <asp:Label ID="DecriptionLabel" runat="server" 
                                Text='<%# Eval("Decription") %>' />
                            <br />
                        </li>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <li style="background-color: #FAFAD2;color: #284775;">PublisherId:
                            <asp:Label ID="PublisherIdLabel" runat="server" 
                                Text='<%# Eval("PublisherId") %>' />
                            <br />
                            PublisherName:
                            <asp:Label ID="PublisherNameLabel" runat="server" 
                                Text='<%# Eval("PublisherName") %>' />
                            <br />
                            Address:
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            <br />
                            Decription:
                            <asp:Label ID="DecriptionLabel" runat="server" 
                                Text='<%# Eval("Decription") %>' />
                            <br />
                        </li>
                    </AlternatingItemTemplate>
                    <EmptyDataTemplate>
                        未傳回資料。
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <li style="">PublisherName:
                            <asp:TextBox ID="PublisherNameTextBox" runat="server" 
                                Text='<%# Bind("PublisherName") %>' />
                            <br />
                            Address:
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                            <br />
                            Decription:
                            <asp:TextBox ID="DecriptionTextBox" runat="server" 
                                Text='<%# Bind("Decription") %>' />
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
                            <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                            </div>
                        </LayoutTemplate>
                        <EditItemTemplate>
                            <li style="background-color: #FFCC66;color: #000080;">PublisherId:
                                <asp:Label ID="PublisherIdLabel1" runat="server" 
                                    Text='<%# Eval("PublisherId") %>' />
                                <br />
                                PublisherName:
                                <asp:TextBox ID="PublisherNameTextBox" runat="server" 
                                    Text='<%# Bind("PublisherName") %>' />
                                <br />
                                Address:
                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                                <br />
                                Decription:
                                <asp:TextBox ID="DecriptionTextBox" runat="server" 
                                    Text='<%# Bind("Decription") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                            </li>
                        </EditItemTemplate>
                        <ItemSeparatorTemplate>
                            <br />
                        </ItemSeparatorTemplate>
                        <SelectedItemTemplate>
                            <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">PublisherId:
                                <asp:Label ID="PublisherIdLabel" runat="server" 
                                    Text='<%# Eval("PublisherId") %>' />
                                <br />
                                PublisherName:
                                <asp:Label ID="PublisherNameLabel" runat="server" 
                                    Text='<%# Eval("PublisherName") %>' />
                                <br />
                                Address:
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                <br />
                                Decription:
                                <asp:Label ID="DecriptionLabel" runat="server" 
                                    Text='<%# Eval("Decription") %>' />
                                <br />
                            </li>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="Publisher" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" 
                        DeleteCommand="DELETE FROM [Publisher] WHERE [PublisherId] = @PublisherId" 
                        InsertCommand="INSERT INTO [Publisher] ([PublisherName], [Address], [Decription]) VALUES (@PublisherName, @Address, @Decription)" 
                        SelectCommand="SELECT * FROM [Publisher]" 
                        
                        UpdateCommand="UPDATE [Publisher] SET [PublisherName] = @PublisherName, [Address] = @Address, [Decription] = @Decription WHERE [PublisherId] = @PublisherId">
                        <DeleteParameters>
                            <asp:Parameter Name="PublisherId" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="PublisherName" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Decription" Type="String" />
                            <asp:Parameter Name="PublisherId" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="PublisherName" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Decription" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <h1 class="style2">Buy Table:</h1>
                    <asp:ListView ID="ListView5" runat="server" DataKeyNames="BuyId" 
                        DataSourceID="Buy" InsertItemPosition="LastItem" 
                        style="text-align: center">
                        <ItemTemplate>
                            <li style="background-color: #FFFBD6;color: #333333;">BuyId:
                                <asp:Label ID="BuyIdLabel" runat="server" Text='<%# Eval("BuyId") %>' />
                                <br />
                                PersonId:
                                <asp:Label ID="PersonIdLabel" runat="server" Text='<%# Eval("PersonId") %>' />
                                <br />
                                ISBN:
                                <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                                <br />
                                Amount:
                                <asp:Label ID="AmountLabel" runat="server" 
                                    Text='<%# Eval("Amount") %>' />
                                <br />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                            </li>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <li style="background-color: #FAFAD2;color: #284775;">BuyId:
                                <asp:Label ID="BuyIdLabel" runat="server" Text='<%# Eval("BuyId") %>' />
                                <br />
                                PersonId:
                                <asp:Label ID="PersonIdLabel" runat="server" Text='<%# Eval("PersonId") %>' />
                                <br />
                                ISBN:
                                <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                                <br />
                                Amount:
                                <asp:Label ID="AmountLabel" runat="server" 
                                    Text='<%# Eval("Amount") %>' />
                                <br />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                            </li>
                        </AlternatingItemTemplate>
                        <EmptyDataTemplate>
                            未傳回資料。
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <li style="">PersonId:
                                <asp:TextBox ID="PersonIdTextBox" runat="server" 
                                    Text='<%# Bind("PersonId") %>' />
                                <br />
                                ISBN:
                                <asp:TextBox ID="ISBNTextBox" runat="server" 
                                    Text='<%# Bind("ISBN") %>' />
                                <br />
                                Amount:
                                <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
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
                                <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                                ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>
                            </LayoutTemplate>
                            <EditItemTemplate>
                                <li style="background-color: #FFCC66;color: #000080;">BuyId:
                                    <asp:Label ID="BuyIdLabel1" runat="server" Text='<%# Eval("BuyId") %>' />
                                    <br />
                                    PersonId:
                                    <asp:TextBox ID="PersonIdTextBox" runat="server" 
                                        Text='<%# Bind("PersonId") %>' />
                                    <br />
                                    ISBN:
                                    <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                                    <br />
                                    Amount:
                                    <asp:TextBox ID="AmountTextBox" runat="server" 
                                        Text='<%# Bind("Amount") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                                </li>
                            </EditItemTemplate>
                            <ItemSeparatorTemplate>
                                <br />
                            </ItemSeparatorTemplate>
                            <SelectedItemTemplate>
                                <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">BuyId:
                                    <asp:Label ID="BuyIdLabel" runat="server" Text='<%# Eval("BuyId") %>' />
                                    <br />
                                    PersonId:
                                    <asp:Label ID="PersonIdLabel" runat="server" Text='<%# Eval("PersonId") %>' />
                                    <br />
                                    ISBN:
                                    <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                                    <br />
                                    Amount:
                                    <asp:Label ID="AmountLabel" runat="server" 
                                        Text='<%# Eval("Amount") %>' />
                                    <br />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                                </li>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="Buy" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" 
                            DeleteCommand="DELETE FROM [Buy] WHERE [BuyId] = @BuyId" 
                            InsertCommand="INSERT INTO [Buy] ([PersonId], [ISBN], [Amount]) VALUES (@PersonId, @ISBN, @Amount)" 
                            SelectCommand="SELECT * FROM [Buy]" 
                            
                            UpdateCommand="UPDATE [Buy] SET [PersonId] = @PersonId, [ISBN] = @ISBN, [Amount] = @Amount WHERE [BuyId] = @BuyId">
                            <DeleteParameters>
                                <asp:Parameter Name="BuyId" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="PersonId" Type="String" />
                                <asp:Parameter Name="ISBN" Type="String" />
                                <asp:Parameter Name="Amount" Type="Int32" />
                                <asp:Parameter Name="BuyId" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="PersonId" Type="String" />
                                <asp:Parameter Name="ISBN" Type="String" />
                                <asp:Parameter Name="Amount" Type="Int32" />
                            </InsertParameters>
                        </asp:SqlDataSource>
</asp:Content>

