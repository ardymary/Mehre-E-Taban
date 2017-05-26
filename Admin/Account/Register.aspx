<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Admin_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style15
        {
            font-family: Tahoma;
        }
        .style17
        {
            height: 28px;
            color: #CCCCCC;
            text-align: center;
            line-height: normal;
            width: 1000px;
            font-family: tahoma;
            margin: 0px auto;
            padding-left: 0px;
            padding-right: 0px;
            padding-top: 8px;
            padding-bottom: 0px;
        }
        .style50
        {
            font-size: 10pt;
            width: 371px;
            height: 174px;
            border: 0px solid #999999;
            margin-left: auto;
            margin-right: auto;
            margin-top: 20px;
            margin-bottom: 0px;
        }
        .style52
        {
            height: 32px;
            background-color: #336699;
        }
        .style53
        {
            width: 89px;
        }
        .style54
        {
            height: 32px;
            color: #00CCFF;
            background-color: #336699;
        }
        .style55
        {
            color: #336600;
        }
        .style56
        {
            color: #CCCCCC;
            height: 24px;
            background-color: #666699;
        }
        .style57
        {
            width: 89px;
            color: #CCCCCC;
            background-color: #666699;
        }
        .style58
        {
            height: 60px;
            color: #CCCCCC;
            text-align: center;
            line-height: normal;
            width: 1000px;
            font-family: tahoma;
            margin: 0px auto;
            padding-left: 0px;
            padding-right: 0px;
            padding-top: 8px;
            padding-bottom: 0px;
        }
        .style64
        {
            color: #CCCCCC;
            height: 26px;
            background-color: #666699;
        }
    </style>
    <link href="../Styles/Site.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        oncreateduser="CreateUserWizard1_CreatedUser" Height="288px" 
    Width="1306px" CreateUserButtonText="ایجاد حساب کاربری" CssClass="style15" 
        RequireEmail="False" 
        UnknownErrorMessage="حساب کاربری شما ایجاد نشد - لطفا دوباره سعی کنید">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server">
                <ContentTemplate>
                    <table align="center" class="style50">
                        <tr>
                            <td align="center" colspan="2" class="style54">
                                فرم ثبت نام حساب کاربری</td>
                        </tr>
                        <tr>
                            <td align="left" class="style53">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">نام کاربری :</asp:Label>
                            </td>
                            <td align="right">
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                    ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style53">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">رمز عبور :</asp:Label>
                            </td>
                            <td align="right">
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password" ErrorMessage="Password is required." 
                                    ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style53">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword">تایید رمز عبور :</asp:Label>
                            </td>
                            <td align="right">
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" 
                                    ErrorMessage="Confirm Password is required." 
                                    ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="style55">
                            <td align="left" class="style57" rowspan="2">
                                نوع کاربر :</td>
                            <td align="right" class="style56">
                                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Radiolist" 
                                    Text="حسابدار " />
                                &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" GroupName="Radiolist" 
                                    Text="آموزگار " />
                                &nbsp;
                                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Radiolist" 
                                    Text="کاربر" />
                                &nbsp;&nbsp;
                                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Radiolist" 
                                    Text="مدیر" />
                                </td>
                        </tr>
                        <tr class="style55">
                            <td align="right" class="style64">
                                <asp:RadioButton ID="RadioButton5" runat="server" Text="مشاور" 
                                    GroupName="Radiolist" />
                                <asp:RadioButton ID="RadioButton6" runat="server" Text="بهداشت یار" 
                                    GroupName="Radiolist" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" class="style52">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="رمز عبور و عبارت تایید آن باید یکسان باشند." 
                                    ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color: Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
                <CustomNavigationTemplate>
                    <table border="0" cellspacing="5" style="width:100%;height:100%;">
                        <tr align="right">
                            <td align="center" colspan="0">
                                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" 
                                    CssClass="style19" Height="23px" Text="ایجاد حساب کاربری" 
                                    ValidationGroup="CreateUserWizard1" Width="135px" />
                            </td>
                        </tr>
                    </table>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server" >
                <ContentTemplate>
                    <table style="width:318px; height:193px; font-size: 100%;" align="center">
                        <tr>
                            <td align="center" class="style58">
                                با تشکر</td>
                        </tr>
                        <tr>
                            <td align="center" class="style17">
                                حساب کاربری شما با موفقیت ثبت گردید.</td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                                    CommandName="Continue" CssClass="style15" Text="ادامه" 
                                    ValidationGroup="CreateUserWizard1" Width="60px" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

