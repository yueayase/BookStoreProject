<%@ Page Title="註冊" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function ValidateEmailAddresses(source, args) {
            var txtEmail1 = document.getElementById('<%= txtEmail1.ClientID %>');
            var txtEmail2 = document.getElementById('<%= txtEmail2.ClientID %>');
            if (txtEmail1.value != '' && txtEmail2.value == '') {
                args.IsValid = false;
            }
            else {
                args.IsValid = true;
            }
        }
    </script>
    <div style="text-align: center">
       <asp:Label ID="Label1" runat="server" Text="帳號: "></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="txtYourID" runat="server" style="text-align: left"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtYourID" ErrorMessage="輸入帳號">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="密碼: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtPassword1" ErrorMessage="輸入密碼">*</asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="確認密碼: "></asp:Label>
        <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtPassword2" ErrorMessage="再次輸入密碼">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtPassword1" ControlToValidate="txtPassword2" 
            ErrorMessage="密碼不一致">密碼不一致</asp:CompareValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="姓名: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="輸入姓名" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="電子郵件: "></asp:Label>
        <asp:TextBox ID="txtEmail1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtEmail1" ErrorMessage="輸入電子郵件">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="電子郵件不符合格式" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ControlToValidate="txtEmail1">電子郵件不符合格式</asp:RegularExpressionValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="再次輸入電子郵件: "></asp:Label>
        <asp:TextBox ID="txtEmail2" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToCompare="txtEmail1" ControlToValidate="txtEmail2" 
            ErrorMessage="再次輸入電子郵件">電子郵件不一致</asp:CompareValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ErrorMessage="電子郵件不符合格式" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ControlToValidate="txtEmail2">電子郵件不符合格式</asp:RegularExpressionValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" 
            ErrorMessage="輸入電子郵件" onservervalidate="CustomValidator1_ServerValidate" 
            ClientValidationFunction="ValidateEmailAddresses" ControlToValidate="txtEmail2" 
            ValidateEmptyText="True">輸入電子郵件</asp:CustomValidator>
        <br />
        <asp:Label ID="Label5" runat="server">家用電話: </asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;<asp:Label ID="Label6" runat="server">行動電話: </asp:Label>
        &nbsp;
        <asp:TextBox ID="txtCellPhone" runat="server"></asp:TextBox>
        <br />
        &nbsp;<asp:Label ID="Label7" runat="server">郵遞區號: </asp:Label>
        <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
        <br />
        地址:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCreate" runat="server" Text="建立" Width="78px" 
            onclick="btnCreate_Click" />
        <br />
        <asp:Label ID="lblSQLError" runat="server" ForeColor="Red"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            HeaderText="錯誤訊息: " ShowMessageBox="True" ShowSummary="False" />
    </div>
    
   
</asp:Content>

