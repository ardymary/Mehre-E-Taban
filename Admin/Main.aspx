<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Admin_Main" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>



<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Charting" tagprefix="telerik" %>




<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=8.1.14.804, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .tabStrip
        {
            text-align: center;
            margin-bottom: 30;
        }
        .style55
        {
            height: 172px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" cellspacing="1" dir="rtl" style="width: 403px">
        <tr>
            <td class="style55">
                <telerik:RadSiteMapDataSource ID="RadSiteMapDataSource1" Runat="server" 
                    SiteMapFile="~/web.sitemap" />
                <telerik:RadSiteMap ID="RadSiteMap1" Runat="server" 
                    DataSourceID="RadSiteMapDataSource1" ShowNodeLines="True" 
                    Skin="Web20" Font-Names="Tahoma" Font-Size="10pt" ForeColor="#66FF33" 
                    Height="463px" Width="326px">
                    <DefaultLevelSettings>
                        <ListLayout AlignRows="True" RepeatDirection="Vertical" />
                    </DefaultLevelSettings>
                </telerik:RadSiteMap>
            </td>
        </tr>
    </table>
    </asp:Content>

