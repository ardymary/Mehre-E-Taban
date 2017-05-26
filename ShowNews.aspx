<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ShowNews.aspx.cs" Inherits="ShowNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

    .style22
    {
        height: 23px;
    }
        .style21
        {
            height: 309px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style2" dir="rtl">
        <tr>
            <td align="right" class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style22">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC0000" 
                    CssClass="style39" style="color: #FF3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style39">
                تاریخ ثبت :<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style39">
                کاربر ثبت کننده :<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style21">
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Height="275px" 
                    ontextchanged="TextBox1_TextChanged" TextMode="MultiLine" Width="737px" 
                    CssClass="style39"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

