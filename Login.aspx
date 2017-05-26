<%@ Page Title="سامانه تــــــابــــــان" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>



<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 67px;
        font-size: 9pt;
    }
    .style12
    {
        margin-top: 0px;
    }
    .style14
    {
        width: 204px;
        height: 45px;
    }
    .style18
    {
        height: 36px;
    }
        .style38
        {
            height: 36px;
            text-align: center;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 37px;
            color: #CCFFFF;
        }
        .auto-style3 {
            width: 287px;
            color: #CCFFFF;
        }
        .auto-style4 {
            width: 210px;
        }
        .auto-style5 {
            width: 181px;
        }
        .style62
        {
            width: 100%;
            height: 100%;
        }
        .style54
        {
            text-align: center;
            color: #666666;
        }
        .style52
        {
            color: #FFFFFF;
        }
        .style50
        {
            width: 206px;
        }
        .style51
        {
            height: 25px;
            background-color: #1479A5;
        }
        .style63
        {
            height: 34px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </telerik:RadAjaxManager>
    <table align="center" cellspacing="1" class="style62">
        <tr>
            <td>
    <table align="center" dir="ltr" 
                    style="border: thin ridge #3792CB; height: 100%; font-family: Tahoma; font-size: 10pt; width: 1196px;">
    <tr>
        <td align="center" class="style63" colspan="3" 
            valign="middle" bgcolor="#1479A5">
            سیستم ثبت نام و اطلاع رسانی</td>
    </tr>
    <tr>
        <td rowspan="2" valign="middle" dir="rtl" align="center">
            <div class="style54">
            <br />
            <br />
                <span class="style52">اطلاعیه ها<br />
                </span>
            <br />
            </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="nid" 
                onpageindexchanging="GridView1_PageIndexChanging" 
                onrowcommand="GridView1_RowCommand" PageSize="5" Width="362px" 
                HorizontalAlign="Center" BackColor="#1476A5" ShowFooter="True">
                <AlternatingRowStyle BackColor="White" ForeColor="Black" 
                    HorizontalAlign="Center" VerticalAlign="Middle" />
                <Columns>
                    <asp:BoundField DataField="ndate" HeaderText="تاریخ" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="userid" HeaderText="نام کاربر" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="مشاهده ">
                        <HeaderTemplate>
                            <asp:Label ID="Label1" runat="server" ForeColor="White" Text="آخرین اخبار " 
                                CssClass="style52"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" 
                                CommandArgument="<%# Container.DataItemIndex %>" CommandName="select" 
                                Font-Underline="False" ForeColor="#192642" Text='<%# Eval("ntitle") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <ControlStyle Font-Size="9pt" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle Width="160px" Font-Size="9pt" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle HorizontalAlign="Left" />
                <HeaderStyle HorizontalAlign="Center" BackColor="#1479A5" Font-Names="Tahoma" 
                    Font-Size="9pt" ForeColor="#CCCCCC" VerticalAlign="Middle" Height="25px" 
                    Wrap="True" />
                <PagerSettings FirstPageText="" LastPageText="" NextPageText="" 
                    PreviousPageText="" />
                <RowStyle BackColor="#CCCCCC" ForeColor="#333333" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
            </asp:GridView>
            <asp:RoundedCornersExtender ID="GridView1_RoundedCornersExtender" 
                runat="server" BorderColor="ActiveBorder" Color="DarkBlue" Enabled="True" 
                Radius="10" TargetControlID="GridView1">
            </asp:RoundedCornersExtender>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                SelectCommand="SELECT [news], [ndate], [ntitle] FROM [News]">
            </asp:SqlDataSource>
        </td>
        <td rowspan="2" align="center" valign="middle">
            <img alt="Mehr Logo" src="Mehr-Design/card.png" align="middle" 
                style="height: 220px; width: 184px" /></td>
    </tr>
    <tr>
        <td align="center" 
            valign="middle" dir="rtl">
&nbsp;&nbsp;<div align="center" dir="rtl">
            <asp:Login ID="Login1" runat="server" 
                onloggedin="Login1_LoggedIn" 
                    FailureText="تلاش شما نا موفق بود - مجددا سعی کنید" Font-Names="Tahoma" 
                    VisibleWhenLoggedIn="False" Width="362px" 
                    onloggingin="Login1_LoggingIn" Font-Size="9pt" Height="153px" 
                    RememberMeSet="True">
                <LayoutTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                        <tr>
                            <td class="style50" bgcolor="#1476A5" width="362">
                                <table cellpadding="0" dir="rtl">
                                    <tr>
                                        <td align="center" colspan="2" dir="ltr" class="style51" valign="middle" >
                                            &nbsp;&nbsp;&nbsp;&nbsp; ورود به سیستم&nbsp;&nbsp;&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">نام کاربری :</asp:Label>
                                        </td>
                                        <td align="right" valign="middle">
                                            <asp:TextBox ID="UserName" runat="server" Width="110px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">رمز عبور :</asp:Label>
                                        </td>
                                        <td align="right">
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="110px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                ControlToValidate="Password" ErrorMessage="Password is required." 
                                                ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <asp:CheckBox ID="RememberMe" runat="server" Text="مرا به خاطر بسپار  " 
                                                TextAlign="Left" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="font-size: xx-small; color: #00FF00;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <telerik:RadButton ID="RadButton1" runat="server" CommandName="Login" 
                                                Font-Names="Tahoma" Font-Size="10pt" Skin="Web20" Text="ورود به سامانه" 
                                                ButtonType="SkinnedButton" EnableBrowserButtonStyle="True">
                                            </telerik:RadButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
            </div>
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center" valign="middle">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" 
            
            
            style="border-top-style: groove; border-top-width: thin; border-top-color: #FF6600;" 
            align="center" valign="middle">
            <telerik:RadNotification ID="RadNotification1" runat="server" Animation="Fade" 
                ContentScrolling="Auto" 
                EnableTheming="True" Height="65px" LoadContentOn="EveryShow" OffsetX="10" 
                OffsetY="10" oncallbackupdate="RadNotification1_CallbackUpdate" 
                Position="TopLeft" ShowInterval="500" Skin="Metro" Title="آخرین اطلاعیه" 
                VisibleOnPageLoad="True" Width="246px" Opacity="80" EnableShadow="True" 
                Font-Names="Tahoma" ForeColor="#66FFCC" style="color: #000066" 
                TitleMenuToolTip="توجه">
                <ContentTemplate>
                    <asp:Literal ID="lbl" runat="server"></asp:Literal>
                </ContentTemplate>
<NotificationMenu ID="TitleMenu"></NotificationMenu>
            </telerik:RadNotification>
            <br />
            <telerik:RadNotification ID="RadNotification3" runat="server" 
                AutoCloseDelay="0" CloseButtonToolTip="بستن پنجره" ContentScrolling="None" 
                EnableRoundedCorners="True" EnableShadow="True" Font-Names="Tahoma" 
                ForeColor="#66FFCC" Height="83px" LoadContentOn="FirstShow" OffsetX="10" 
                OffsetY="-10" oncallbackupdate="RadNotification3_CallbackUpdate" Opacity="90" 
                Position="Center" Skin="Telerik" Title="قفل سخت افزاری" TitleMenuToolTip="توجه" 
                ToolTip="توجه" UpdateInterval="1000" Visible="False" VisibleOnPageLoad="True" 
                Width="335px">
                <ContentTemplate>
                    <asp:Label ID="lblErr" runat="server" style="font-size: medium"></asp:Label>
                </ContentTemplate>
                <NotificationMenu ID="TitleMenu0">
                </NotificationMenu>
            </telerik:RadNotification>
            <telerik:RadNotification ID="RadNotification2" runat="server" 
                AutoCloseDelay="0" CloseButtonToolTip="بستن پنجره" ContentScrolling="None" 
                EnableRoundedCorners="True" EnableShadow="True" Font-Names="Tahoma" 
                ForeColor="#66FFCC" Height="117px" LoadContentOn="FirstShow" OffsetX="10" 
                OffsetY="-10" Opacity="90" Position="BottomLeft" Skin="Metro" 
                Text="جهت تهیه نسخه پشتیبان با مدیر سامانه هماهنگ کنید" Title="تهیه پشتیبان" 
                TitleMenuToolTip="توجه" ToolTip="توجه" UpdateInterval="1000" Visible="False" 
                VisibleOnPageLoad="True" Width="335px">
            </telerik:RadNotification>
        </td>
    </tr>
</table>
            </td>
        </tr>
    </table>
</asp:Content>

