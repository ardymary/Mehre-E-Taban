<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/Finance/Finance.master" AutoEventWireup="true"
    CodeFile="ChangePasswordSuccess.aspx.cs" Inherits="Account_ChangePasswordSuccess" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style54
        {
            width: 100%;
            height: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table align="center" cellspacing="1" class="style54">
        <tr>
            <td>
    <p align="center">
        <asp:HyperLink ID="BackLink" runat="server" 
            NavigateUrl="~/Admin/Account/ManageUsers.aspx">بازگشت به صفحه قبل</asp:HyperLink>
    </p>
                <p>
        کلمه عبور با موفقیت تغییر یافت.</p>
            </td>
        </tr>
    </table>
</asp:Content>
