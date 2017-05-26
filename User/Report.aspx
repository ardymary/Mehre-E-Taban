<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Admin_Reports_Report" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<%@ Register Assembly="Telerik.ReportViewer.WebForms" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" frame="border">
        <tr>
            <td align="center" dir="rtl" valign="middle">
                <telerik:RadTabStrip ID="RadTabStrip1" runat="server" Align="Center" 
                    Height="29px" MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="WebBlue" 
                    Width="1042px" Font-Names="B Traffic" Font-Size="9pt">
                    <Tabs>
                        <telerik:RadTab runat="server" Text="گزارش اطلاعات تماس" 
                            PageViewID="RadPageView7" Font-Bold="True" Font-Names="B Traffic" 
                            Font-Size="10pt" Selected="True">
                        </telerik:RadTab>
                    </Tabs>
                </telerik:RadTabStrip>
                <telerik:RadMultiPage ID="RadMultiPage1" Runat="server" Height="750px" 
                    Width="891px" SelectedIndex="0" TabIndex="7" 
                    Font-Names="B Traffic" Font-Size="10pt">
                    <telerik:RadPageView ID="RadPageView7" runat="server">
                        <telerik:ReportViewer ID="ReportViewer8" runat="server" Width="778px" 
                            Height="564px">
<typereportsource 
    typename="Report.Email, Report, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
                    </telerik:RadPageView>
                </telerik:RadMultiPage>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

