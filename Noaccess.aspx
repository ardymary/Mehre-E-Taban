<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Noaccess.aspx.cs" Inherits="Noaccess" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style41
        {
            font-size: 12pt;
            color: #CCCCCC;
        }
        .style42
        {
            width: 100%;
            height: 215px;
        }
        .auto-style1 {
            width: 98%;
            height: 84%;
        }
        .style43
        {
            font-family: "B Titr";
        }
        .style44
        {
            font-family: "B Traffic";
            font-size: medium;
            color: #FFFF66;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="style41">
        <br class="style39" />
    </p>
    <table align="center" class="style42">
        <tr>
            <td class="style39">
                <asp:Image ID="Image2" runat="server" Height="144px" ImageAlign="Middle" 
                    ImageUrl="~/Mehr-Design/Alert.png" Width="144px" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="style43" 
                    style="font-size: x-large; font-family: 'B Traffic';" 
                    Text="توجه ! دسترسی به این قسمت برای شما مقدور نمی باشد ."></asp:Label>
            &nbsp;<br />
                <br />
                <span class="style44">لطفا با پشتیبانی سامانه تماس بگیرید.<br />
                </span>
            </td>
        </tr>
    </table>
    <table __designer:mapid="317" align="center" cellpadding="0" cellspacing="0" class="auto-style1">
        <tr __designer:mapid="318">
            <td __designer:mapid="319" align="center" valign="middle">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

