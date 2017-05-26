<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Support.aspx.cs" Inherits="Support" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style41
    {
        height: 165px;
        font-family: "B Traffic";
    }
    .style42
    {
        color: #FF9966;
            font-size: 13pt;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
<br />
<p align="center">
    <table align="center" cellspacing="1" dir="rtl">
        <tr>
            <td align="center" class="style41">
                <span class="style42">سُها رایانه فارس<br />
                </span>
                <br />
                پست الکترونیکی : <a href="mailto:support@sohacomputer.com">
                support@sohacomputer.com</a>
                <br />
                شماره تماس: 2308158<br />
                آدرس : شیراز - کریمخان زند - ساختمان امید - طبقه سوم</td>
        </tr>
        <tr>
            <td>
    <telerik:RadSocialShare ID="RadSocialShare1" runat="server" Skin="Glow">
        <MainButtons>
            <telerik:RadFacebookButton ButtonType="FacebookLike" Font="Tahoma" 
                TitleToShare="سُها رایانه فارس" 
                UrlToShare="https://www.facebook.com/sohacomputer" ButtonLayout="Icon" />
            <telerik:RadGoogleButton AnnotationType="Bubble" 
                TitleToShare="سُها رایانه فارس" 
                UrlToShare="https://plus.google.com/u/0/b/115855499084628559082/" />
        </MainButtons>
    </telerik:RadSocialShare>
            </td>
        </tr>
    </table>
    <br />
</p>
</asp:Content>

