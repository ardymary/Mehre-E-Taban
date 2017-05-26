<%@ Page Title="" Language="C#" MasterPageFile="~/Finance/Finance.master" AutoEventWireup="true" CodeFile="TeacherRep.aspx.cs" Inherits="Finance_TeacherRep" %>



<%@ Register Assembly="Telerik.ReportViewer.WebForms" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style63
        {
            width: 100%;
            height: 100%;
        }
        .style64
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" cellspacing="1" dir="rtl">
        <tr>
            <td valign="middle" class="style64">
                <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="470px" 
                    Width="1072px" ForeColor="#0000CC" ProgressText="در حال آماده سازی" 
                    Skin="WebBlue">
<typereportsource 
                    typename="Report.Teacher, Report, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
            </td>
        </tr>
    </table>
</asp:Content>

