<%@ Page Title="" Language="C#" MasterPageFile="~/Consult/Consult.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Admin_Search" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">


    <script type="text/javascript">

        function ConfirmOnDelete(item) {
            if (confirm("توجه - تمامی اطللاعات دانش آموز ، ولی دانش آموز ، اطلاعات مالی و چکهای مربوطه حذف می گردد. دانش آموز با شماره پرونده : " + item + " حذف گردد ? ") == true)
                return true;
            else
                return false;
        }

       
    </script>
  
    <style type="text/css">
    
        .style75
        {
            height: 26px;
        }
        .style77
        {
            width: 100%;
            height: 100%;
            background-color: #4D6F91;
        }
        .style79
        {
            width: 238px;
        }
        .style81
        {
            width: 152px;
        }
        .style80
        {
            font-size: 10pt;
            width: 238px;
            height: 23px;
        }
        .style82
        {
            font-size: 10pt;
            width: 152px;
            height: 23px;
        }
        .style83
        {
            background-color: #336699;
            width: 159px;
        }
        .style89
        {
            width: 104px;
            background-color: #336699;
        }
        .style84
        {
            width: 105px;
            background-color: #336699;
        }
        .style85
        {
            width: 66px;
            background-color: #336699;
        }
        .style63
        {
            width: 85px;
            background-color: #336699;
        }
        .style88
        {
            width: 46px;
            background-color: #336699;
        }
        .style70
        {
            width: 126px;
            background-color: #336699;
        }
        .style66
        {
            width: 42px;
            background-color: #336699;
        }
        .style86
        {
            width: 118px;
            background-color: #336699;
        }
        .style67
        {
            width: 77px;
            background-color: #336699;
        }
        .style90
        {
            width: 143px;
            background-color: #336699;
        }
        .style92
        {
            width: 238px;
            height: 25px;
        }
        .style93
        {
            width: 152px;
            height: 25px;
        }
        .style94
        {
            font-size: 10pt;
            height: 25px;
            width: 261px;
        }
        .style96
        {
            width: 261px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <telerik:RadAjaxManager ID="RadAjaxManager2" runat="server">
    </telerik:RadAjaxManager>
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" Align="Center" 
        MultiPageID="RadMultiPage1" Skin="WebBlue" SelectedIndex="0">
            <Tabs>
                <telerik:RadTab runat="server" ScrollButtonsPosition="Middle" 
                    Text="جستجوی اطلاعات فردی" Font-Names="Tahoma" Font-Size="10pt" 
                    Selected="True">
                </telerik:RadTab>
            </Tabs>
    </telerik:RadTabStrip>
    <table align="center" frame="void" style="height: 100%; width: 1044px" 
        dir="ltr">
        <tr>
            <td valign="top" style="width: auto; height: auto">
        <telerik:RadMultiPage ID="RadMultiPage1" Runat="server" 
            SelectedIndex="0" Width="1021px">
            <telerik:RadPageView ID="RadPageView3" runat="server" Height="100%" 
                Width="100%">
                <asp:SqlDataSource ID="Student" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                    
                    
                    SelectCommand="SELECT Students_Personal_Information.name, Students_Personal_Information.family, Students_Personal_Information.birthday, Students_Personal_Information.place_birth, Students_Personal_Information.mobile, Students_Personal_Information.homephone, Students_Personal_Information.emergencyphone, Students_Personal_Information.email, Students_Personal_Information.mazhab, Students_Personal_Information.nationality, Students_Personal_Information.protectorship, Students_Degree.gender, Students_Parents_Information.name AS pname, Students_Parents_Information.family AS pfamily, Students_Parents_Information.relationship, Students_Parents_Information.birthday AS pbirthday, Students_Parents_Information.place_birth AS pbirthplace, Students_Parents_Information.Degrees, Students_Parents_Information.Field, Students_Parents_Information.job, Students_Parents_Information.Status, Students_Parents_Information.marital_status, Students_Parents_Information.mobile AS pmpbile, Students_Parents_Information.email AS pemail, Students_Parents_Information.id_parents, Students_Personal_Information.internationalcode FROM Students_Personal_Information INNER JOIN Students_Parents_Information ON Students_Personal_Information.internationalcode = Students_Parents_Information.s_internationalcode INNER JOIN Students_Degree ON Students_Personal_Information.internationalcode = Students_Degree.internationalcode">
                </asp:SqlDataSource>
                <telerik:RadGrid ID="RadGrid1" runat="server" allowfiltering="True" 
                    AllowFilteringByColumn="True" allowpaging="True" allowsorting="True" 
                    CellSpacing="0" Culture="fa-IR" Font-Names="Tahoma" gridlines="Horizontal" 
                    Height="650px" HorizontalAlign="Center" ShowFooter="True" ShowStatusBar="True" 
                    Skin="Black" style="font-family: Tahoma" Width="100%" PageSize="20" 
                    ShowGroupPanel="True" Font-Size="10pt" DataSourceID="Student">
                    <ClientSettings AllowAutoScrollOnDragDrop="False">
                        <KeyboardNavigationSettings CollapseDetailTableKey="RightArrow" />
                        <Scrolling AllowScroll="True" SaveScrollPosition="False" ScrollHeight="500px" />
                    </ClientSettings>
                    <AlternatingItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <GroupHeaderItemStyle Font-Names="Tahoma" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <MasterTableView 
                        dir="RTL" GroupLoadMode="server" GroupsDefaultExpanded="False" 
                        showfooter="False" ShowGroupFooter="False" 
                        DataKeyNames="internationalcode" DataSourceID="Student">
                        <CommandItemSettings ExportToPdfText="Export to PDF" />
                        <RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
                        </RowIndicatorColumn>
                        <ExpandCollapseColumn 
                            FilterControlAltText="Filter ExpandColumn column" Visible="True" 
                            Created="True">
                        </ExpandCollapseColumn>
                        <Columns>
                            <telerik:GridBoundColumn DataField="internationalcode" 
                                FilterControlAltText="Filter internationalcode column" HeaderText="کد ملی" 
                                UniqueName="internationalcode" SortExpression="internationalcode">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="name" 
                                FilterControlAltText="Filter name column" HeaderText="نام" 
                                UniqueName="name" SortExpression="name">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="family" 
                                FilterControlAltText="Filter family column" HeaderText="نام خانوادگی" 
                                UniqueName="family" SortExpression="family">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="gender" 
                                FilterControlAltText="Filter gender column" HeaderText="جنسیت" 
                                SortExpression="gender" UniqueName="gender">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="birthday" 
                                FilterControlAltText="Filter birthday column" HeaderText="تارخ تولد" 
                                UniqueName="birthday" SortExpression="birthday">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="place_birth" 
                                FilterControlAltText="Filter place_birth column" HeaderText="محل تولد" 
                                SortExpression="place_birth" UniqueName="place_birth">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="mazhab" 
                                FilterControlAltText="Filter mazhab column" HeaderText="مذهب" 
                                SortExpression="mazhab" UniqueName="mazhab">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="nationality" 
                                FilterControlAltText="Filter nationality column" HeaderText="ملیت" 
                                SortExpression="nationality" UniqueName="nationality">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="protectorship" 
                                FilterControlAltText="Filter protectorship column" HeaderText="حضانت" 
                                SortExpression="protectorship" UniqueName="protectorship">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="email" 
                                FilterControlAltText="Filter email column" HeaderText="پست الکترونیکی" 
                                SortExpression="email" UniqueName="email">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="mobile" 
                                FilterControlAltText="Filter mobile column" HeaderText="شماره همراه" 
                                SortExpression="mobile" UniqueName="mobile">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="homephone" 
                                FilterControlAltText="Filter homephone column" HeaderText="تلفن ثابت" 
                                SortExpression="homephone" UniqueName="homephone">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="emergencyphone" 
                                FilterControlAltText="Filter emergencyphone column" HeaderText="تلفن اضطراری" 
                                SortExpression="emergencyphone" UniqueName="emergencyphone">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="pname" 
                                FilterControlAltText="Filter pname column" HeaderText="نام ولی" 
                                SortExpression="pname" UniqueName="pname">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="pfamily" 
                                FilterControlAltText="Filter pfamily column" HeaderText="نام خانوادگی ولی" 
                                SortExpression="pfamily" UniqueName="pfamily">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="pbirthday" 
                                FilterControlAltText="Filter pbirthday column" HeaderText="تاریخ تولد ولی" 
                                SortExpression="pbirthday" UniqueName="pbirthday">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="pbirthplace" 
                                FilterControlAltText="Filter pbirthplace column" HeaderText="محل تولد ولی" 
                                SortExpression="pbirthplace" UniqueName="pbirthplace">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="relationship" 
                                FilterControlAltText="Filter relationship column" HeaderText="پدر / مادر" 
                                SortExpression="relationship" UniqueName="relationship">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Degrees" 
                                FilterControlAltText="Filter Degrees column" HeaderText="تحصیلات ولی" 
                                SortExpression="Degrees" UniqueName="Degrees">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Field" 
                                FilterControlAltText="Filter Field column" HeaderText="رشته تحصیلی ولی" 
                                SortExpression="Field" UniqueName="Field">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="job" 
                                FilterControlAltText="Filter job column" HeaderText="شغل ولی" 
                                SortExpression="job" UniqueName="job">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Status" 
                                FilterControlAltText="Filter Status column" HeaderText="وضعیت ولی" 
                                SortExpression="Status" UniqueName="Status">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="marital_status" 
                                FilterControlAltText="Filter marital_status column" HeaderText="وضعیت تاهل" 
                                SortExpression="marital_status" UniqueName="marital_status">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="pmpbile" 
                                FilterControlAltText="Filter pmpbile column" HeaderText="شماره همراه ولی" 
                                SortExpression="pmpbile" UniqueName="pmpbile">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="pemail" 
                                FilterControlAltText="Filter pemail column" HeaderText="پست الکترونیکی ولی" 
                                SortExpression="pemail" UniqueName="pemail">
                            </telerik:GridBoundColumn>
                        </Columns>
                        <EditFormSettings>
                            <EditColumn FilterControlAltText="Filter EditCommandColumn column">
                            </EditColumn>
                        </EditFormSettings>
                        <PagerStyle AlwaysVisible="True" PageSizeControlType="RadComboBox" />
                    </MasterTableView>
                    <SortingSettings SortedAscToolTip="بزرگ به کوچک" 
                        SortedDescToolTip="کوچک به بزرگ" SortToolTip="مرتب سازی" />
                    <HierarchySettings ExpandTooltip="گسترش" />
                    <ExportSettings FileName="StudentExport" HideStructureColumns="True" 
                        IgnorePaging="True">
                        <Pdf AllowModify="True" PaperSize="A4" />
                    </ExportSettings>
                    <EditItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle Font-Names="Tahoma" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <FilterItemStyle Font-Names="Tahoma" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ActiveItemStyle Font-Names="Tahoma" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemStyle Font-Names="Tahoma" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <PagerStyle AlwaysVisible="True" Mode="Slider" 
                        PageSizeControlType="RadComboBox" ShowPagerText="False" 
                        VerticalAlign="Middle" />
                    <SelectedItemStyle Font-Names="Tahoma" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <StatusBarSettings LoadingText="در حال آماده سازی ..." ReadyText="آماده" />
                    <FilterMenu EnableImageSprites="False">
                    </FilterMenu>
                </telerik:RadGrid>
                <br />
                <br />
                <br />
            </telerik:RadPageView>
        </telerik:RadMultiPage>
                <br />
            </td>
        </tr>
    </table>
    <br />
    </asp:Content>

