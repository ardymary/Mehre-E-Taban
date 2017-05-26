<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Tellist.aspx.cs" Inherits="Admin_Reports_tellist" %><%@ Register assembly="Telerik.ReportViewer.WebForms, Version=8.1.14.804, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" namespace="Telerik.ReportViewer.WebForms" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style63
        {
            width: 80%;
            height: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" cellspacing="1" class="style63" dir="rtl">
        <tr>
            <td>
                <br />
                <br />
                <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="500px" 
                    ProgressText="لطفا صبر نمایید ..." Width="80%">
<typereportsource 
                    typename="Report.Tellist, Report, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
            </td>
        </tr>
    </table>
</asp:Content>

