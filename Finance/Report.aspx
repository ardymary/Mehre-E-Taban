<%@ Page Title="" Language="C#" MasterPageFile="~/Finance/Finance.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Admin_Reports_Report" %>

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
                    Width="1042px" Font-Names="B Traffic" Font-Size="9pt" 
                    ResolvedRenderMode="Classic">
                    <Tabs>
                        <telerik:RadTab runat="server" Text="آمار دانش آموزان" 
                            PageViewID="RadPageView2" Font-Bold="True" Font-Names="B Traffic" 
                            Font-Size="10pt" Selected="True">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Text="گزارش نهار دانش آموزان" 
                            PageViewID="RadPageView4" Font-Bold="True" Font-Names="B Traffic" 
                            Font-Size="10pt">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Text="صورت وضعیت دانش آموزان" 
                            PageViewID="RadPageView5" Font-Bold="True" Font-Names="B Traffic" 
                            Font-Size="10pt">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Text="رسید پرداخت ها" PageViewID="RadPageView1" 
                            Font-Bold="True" Font-Names="B Traffic" Font-Size="10pt">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Text="گزارش تخفیفات" PageViewID="RadPageView3" 
                            Font-Bold="True" Font-Names="B Traffic" Font-Size="10pt">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Text="گزارش بدهکاران" PageViewID="RadPageView6" 
                            Font-Bold="True" Font-Names="B Traffic" Font-Size="10pt">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" PageViewID="RadPageView9" 
                            Text="گزارش کلی بدهکاری" Font-Bold="True" Font-Names="B Traffic" 
                            Font-Size="10pt">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" PageViewID="ReportViewer10" 
                            Text="گزارش بدهی خالص">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" PageViewID="ReportViewer11" Text="گزارش خدمات">
                        </telerik:RadTab>
                    </Tabs>
                </telerik:RadTabStrip>
                <telerik:RadMultiPage ID="RadMultiPage1" Runat="server" Height="750px" 
                    Width="891px" SelectedIndex="1" TabIndex="7" 
                    Font-Names="B Traffic" Font-Size="10pt">
                    <telerik:RadPageView ID="RadPageView1" runat="server" Height="500px" 
                        Selected="True">
                        <telerik:ReportViewer ID="ReportViewer5" runat="server" ForeColor="Black" 
                            Height="560px" Width="778px" ProgressText="در حال آماده سازی ...">
<typereportsource 
    typename="Report.Receipt, Report, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="RadPageView2" runat="server" Height="500px" 
                        Selected="True">
                        <telerik:ReportViewer ID="ReportViewer4" runat="server" Height="560px" 
                            Width="869px" ShowParametersButton="False" ZoomMode="FullPage" 
                            ForeColor="Black" ProgressText="در حال آماده سازی ...">
<typereportsource 
    typename="Report.Student, Report, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="RadPageView3" runat="server" Height="500px">
                        <telerik:ReportViewer ID="ReportViewer3" runat="server" Height="560px" 
                            Width="784px" ShowParametersButton="False" ZoomMode="FullPage" 
                            ForeColor="Black" ProgressText="در حال آماده سازی ...">
<typereportsource 
    typename="Report.Discount, Report, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="RadPageView4" runat="server" ForeColor="#99CCFF">
                        <telerik:ReportViewer ID="ReportViewer1" runat="server" ForeColor="Black" 
                            Height="560px" ProgressText="در حال آماده سازی ..." 
                            ShowParametersButton="False" Skin="WebBlue" Width="818px" 
                            ZoomMode="FullPage">
<Resources ReportParametersSelectAllText="همه موارد"></Resources>

<typereportsource 
    typename="Report.Lunch, Report, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="RadPageView5" runat="server">
                        <telerik:ReportViewer ID="ReportViewer6" runat="server" Height="560px" 
                            Width="865px" ForeColor="Black" ProgressText="در حال آماده سازی ...">
<typereportsource 
    typename="Report.Status, Report, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="RadPageView6" runat="server">
                        <br />
                        <telerik:ReportViewer ID="ReportViewer7" runat="server" ForeColor="Black" 
                            Height="560px" Width="865px" ProgressText="در حال آماده سازی ...">
<typereportsource 
    typename="Report.Bedehi, Report, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="RadPageView9" runat="server" Height="600px">
                        <telerik:ReportViewer ID="ReportViewer9" runat="server" Width="837px" 
                            Height="560px" ProgressText="در حال آماده سازی ..." Font-Names="Tahoma" 
                            Font-Size="10pt" ForeColor="Black">
<Resources ReportParametersNoValueText="مقدار را انتخاب کنید"></Resources>

<typereportsource 
    typename="Report.Balance, Report, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="RadPageView10" runat="server" Height="600px">
                        <telerik:ReportViewer ID="ReportViewer10" runat="server" Font-Names="Tahoma" 
                            Font-Size="10pt" ForeColor="Black" Height="560px" 
                            ProgressText="در حال آماده سازی ..." Width="837px">
<Resources ReportParametersNoValueText="مقدار را انتخاب کنید"></Resources>

<typereportsource 
    typename="Report.Bedehi_khales, Report, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="RadPageView11" runat="server" Height="600px">
                        <telerik:ReportViewer ID="ReportViewer11" runat="server" Font-Names="Tahoma" 
                            Font-Size="10pt" ForeColor="Black" Height="560px" 
                            ProgressText="در حال آماده سازی ..." Width="837px">
<Resources ReportParametersNoValueText="مقدار را انتخاب کنید"></Resources>

<typereportsource 
    
    typename="Report.class_lunch, Report, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
                    </telerik:RadPageView>
                </telerik:RadMultiPage>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

