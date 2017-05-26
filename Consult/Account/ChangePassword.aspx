<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/Consult/Consult.master" AutoEventWireup="true"
    CodeFile="ChangePassword.aspx.cs" Inherits="Account_ChangePassword" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style54
        {
            width: 100%;
            height: 100%;
        }
        .style55
        {
            height: 25px;
        }
        .style56
        {
            width: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table align="center" cellspacing="1" class="style54">
        <tr>
            <td align="center">
                <br />
    <table align="center" cellspacing="1">
        <tr>
            <td align="center" valign="middle">
    <p>
        از فرم زیر برای تغییر کلمه عبور استفاده کنید.</p>
    <asp:ChangePassword ID="ChangeUserPassword" runat="server" CancelDestinationPageUrl="~/" 
                    EnableViewState="False" RenderOuterTable="False" 
         SuccessPageUrl="~/Consult/Account/ChangePasswordSuccess.aspx" 
                    ChangePasswordFailureText="کلمه عبور اشتباه می باشد ، دوباره سعی کنید . " 
                    ContinueButtonText="ادامه" Font-Names="Tahoma" style="margin-left: 0px; font-family: Tahoma;" 
                    SuccessText="تغییر با موفقیت انجام شد " SuccessTitleText="">
        <ChangePasswordTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2">
                                    تغییر کلمه عبور</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Label ID="CurrentPasswordLabel" runat="server" 
                                        AssociatedControlID="CurrentPassword">کلمه عبور :</asp:Label>
                                </td>
                                <td class="style56">
                                    <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" 
                                        ControlToValidate="CurrentPassword" ErrorMessage="Password is required." 
                                        ToolTip="Password is required." ValidationGroup="ChangeUserPassword">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="NewPasswordLabel" runat="server" 
                                        AssociatedControlID="NewPassword">کلمه عبور جدید :</asp:Label>
                                </td>
                                <td class="style56">
                                    <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" 
                                        ControlToValidate="NewPassword" ErrorMessage="New Password is required." 
                                        ToolTip="New Password is required." ValidationGroup="ChangeUserPassword">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="ConfirmNewPasswordLabel" runat="server" 
                                        AssociatedControlID="ConfirmNewPassword">تکرار کلمه عبور جدید :</asp:Label>
                                </td>
                                <td class="style56">
                                    <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" 
                                        ControlToValidate="ConfirmNewPassword" 
                                        ErrorMessage="Confirm New Password is required." 
                                        ToolTip="Confirm New Password is required." 
                                        ValidationGroup="ChangeUserPassword">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="NewPasswordCompare" runat="server" 
                                        ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" 
                                        Display="Dynamic" ErrorMessage="کلمه عبور جدید و تکرار آن باید یکسان باشند." 
                                        ValidationGroup="ChangeUserPassword"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Button ID="ChangePasswordPushButton" runat="server" 
                                        CommandName="Change Password" style="font-family: Tahoma" 
                                        Text="تغییر کلمه عبور" ValidationGroup="ChangeUserPassword" />
                                </td>
                                <td class="style56">
                                    <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" style="font-family: Tahoma" Text="انصراف" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ChangePasswordTemplate>
    </asp:ChangePassword>
            </td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
</asp:Content>