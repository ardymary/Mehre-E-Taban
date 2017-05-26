<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="UserInformation.aspx.cs" Inherits="Administration_UserInformation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" cellspacing="1" class="style54">
        <tr>
            <td>
                <br />
    <h2 align="center">اطلاعات کاربر</h2>
    <p align="center">
        <asp:HyperLink ID="BackLink" runat="server" 
            NavigateUrl="~/Admin/Account/ManageUsers.aspx">بازگشت به صفحه قبل</asp:HyperLink>
    </p>
    <table style="width: 246px; font-family: 'B Nazanin'; font-size: 12pt" 
        align="center">
        <tr>
            <td class="tdLabel">نام کاربری :</td>
            <td><asp:Label runat="server" ID="UserNameLabel"></asp:Label></td>
        </tr>
        <tr>
            <td class="tdLabel">تایید شده :</td>
            <td align="center">
                <asp:CheckBox ID="IsApproved" runat="server" AutoPostBack="true" 
                    oncheckedchanged="IsApproved_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="tdLabel">قفل شده :</td>
            <td>
                <asp:Label runat="server" ID="LastLockoutDateLabel"></asp:Label>
                <br />
                <asp:Button runat="server" ID="UnlockUserButton" Text="لغو قفل کاربری" 
                    onclick="UnlockUserButton_Click" 
                    style="font-family: 'B Mitra'; font-weight: 700; color: #0000FF" />
            </td>
        </tr>
    </table>
    <p align="center">
        <asp:Label ID="StatusMessage" CssClass="Important" runat="server"></asp:Label>
    </p>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .style54
        {
            width: 100%;
            height: 100%;
        }
    </style>
</asp:Content>

