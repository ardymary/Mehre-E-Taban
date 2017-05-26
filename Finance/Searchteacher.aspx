<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Searchteacher.aspx.cs" Inherits="Searchteacher" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        
        <span class="style12" 
            
            
                style="font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">
            <span class="Apple-converted-space">
                <telerik:RadGrid ID="RadGrid1" runat="server" allowfiltering="True" 
                    AllowFilteringByColumn="True" allowpaging="True" allowsorting="True" 
                    CellSpacing="0" Culture="fa-IR" Font-Names="Tahoma" gridlines="Horizontal" 
                    Height="650px" HorizontalAlign="Center" ShowFooter="True" ShowStatusBar="True" 
                    Skin="Black" style="font-family: Tahoma" Width="100%" PageSize="20" 
                    ShowGroupPanel="True" Font-Size="10pt" DataSourceID="SqlDataSource1" 
                    AutoGenerateColumns="False">
                    <ClientSettings AllowAutoScrollOnDragDrop="False">
                        <KeyboardNavigationSettings CollapseDetailTableKey="RightArrow" />
                        <Scrolling AllowScroll="True" SaveScrollPosition="False" ScrollHeight="500px" 
                            UseStaticHeaders="True" />
                    </ClientSettings>
                    <AlternatingItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <GroupHeaderItemStyle Font-Names="Tahoma" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <MasterTableView 
                        dir="RTL" GroupLoadMode="server" GroupsDefaultExpanded="False" 
                        showfooter="False" ShowGroupFooter="False" 
                        DataKeyNames="internationalcode" DataSourceID="SqlDataSource1">
                        <CommandItemSettings ExportToPdfText="Export to PDF" 
                            ShowExportToExcelButton="True" ShowExportToPdfButton="True" />
                        <RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
                        </RowIndicatorColumn>
                        <ExpandCollapseColumn 
                            FilterControlAltText="Filter ExpandColumn column" Visible="True" 
                            Created="True">
                        </ExpandCollapseColumn>
                        <Columns>
                            <telerik:GridBoundColumn DataField="internationalcode" 
                                FilterControlAltText="Filter internationalcode column" HeaderText="کد ملی" 
                                UniqueName="internationalcode" SortExpression="internationalcode" 
                                ReadOnly="True">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="name" 
                                FilterControlAltText="Filter name column" HeaderText="نام" 
                                UniqueName="name" SortExpression="name">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="family" 
                                FilterControlAltText="Filter family column" HeaderText="نام خانوادگی" 
                                SortExpression="family" UniqueName="family">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="experience" 
                                FilterControlAltText="Filter experience column" HeaderText="سابقه تدریس" 
                                UniqueName="experience" SortExpression="experience">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="birthday" 
                                FilterControlAltText="Filter birthday column" HeaderText="تاریخ تولد" 
                                SortExpression="birthday" UniqueName="birthday">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="teacher" 
                                FilterControlAltText="Filter teacher column" HeaderText="نوع دبیر" 
                                SortExpression="teacher" UniqueName="teacher">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="years_of_employment" 
                                FilterControlAltText="Filter years_of_employment column" HeaderText="سال استخدام" 
                                SortExpression="years_of_employment" UniqueName="years_of_employment">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="phone" 
                                FilterControlAltText="Filter phone column" HeaderText="شماره تماس" 
                                SortExpression="phone" UniqueName="phone">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="mobile" 
                                FilterControlAltText="Filter mobile column" HeaderText="شماره همراه" 
                                SortExpression="mobile" UniqueName="mobile">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="university" 
                                FilterControlAltText="Filter university column" HeaderText="دانشگاه محل تحصیل" 
                                SortExpression="university" UniqueName="university">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="degree" 
                                FilterControlAltText="Filter degree column" HeaderText="مدرک تحصیلی" 
                                SortExpression="degree" UniqueName="degree">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="email" 
                                FilterControlAltText="Filter email column" HeaderText="پست الکترونیکی" 
                                SortExpression="email" UniqueName="email">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="address" 
                                FilterControlAltText="Filter address column" HeaderText="آدرس" 
                                SortExpression="address" UniqueName="address">
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="description" 
                                FilterControlAltText="Filter description column" HeaderText="توضیحات" 
                                SortExpression="description" UniqueName="description">
                            </telerik:GridBoundColumn>
                        </Columns>
                        <EditFormSettings>
                            <EditColumn FilterControlAltText="Filter EditCommandColumn column">
                            </EditColumn>
                        </EditFormSettings>
                        <PagerStyle AlwaysVisible="True" PageSizeControlType="RadComboBox" 
                            HorizontalAlign="Center" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:DBConn %>" 
        DeleteCommand="DELETE FROM [Teacher] WHERE [internationalcode] = @original_internationalcode AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([family] = @original_family) OR ([family] IS NULL AND @original_family IS NULL)) AND (([experience] = @original_experience) OR ([experience] IS NULL AND @original_experience IS NULL)) AND (([birthday] = @original_birthday) OR ([birthday] IS NULL AND @original_birthday IS NULL)) AND (([teacher] = @original_teacher) OR ([teacher] IS NULL AND @original_teacher IS NULL)) AND (([years_of_employment] = @original_years_of_employment) OR ([years_of_employment] IS NULL AND @original_years_of_employment IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL)) AND (([university] = @original_university) OR ([university] IS NULL AND @original_university IS NULL)) AND (([degree] = @original_degree) OR ([degree] IS NULL AND @original_degree IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL))" 
        InsertCommand="INSERT INTO [Teacher] ([internationalcode], [name], [family], [experience], [birthday], [teacher], [years_of_employment], [description], [mobile], [address], [image], [university], [degree], [phone], [email]) VALUES (@internationalcode, @name, @family, @experience, @birthday, @teacher, @years_of_employment, @description, @mobile, @address, @image, @university, @degree, @phone, @email)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Teacher]" 
        UpdateCommand="UPDATE [Teacher] SET [name] = @name, [family] = @family, [experience] = @experience, [birthday] = @birthday, [teacher] = @teacher, [years_of_employment] = @years_of_employment, [description] = @description, [mobile] = @mobile, [address] = @address, [image] = @image, [university] = @university, [degree] = @degree, [phone] = @phone, [email] = @email WHERE [internationalcode] = @original_internationalcode AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([family] = @original_family) OR ([family] IS NULL AND @original_family IS NULL)) AND (([experience] = @original_experience) OR ([experience] IS NULL AND @original_experience IS NULL)) AND (([birthday] = @original_birthday) OR ([birthday] IS NULL AND @original_birthday IS NULL)) AND (([teacher] = @original_teacher) OR ([teacher] IS NULL AND @original_teacher IS NULL)) AND (([years_of_employment] = @original_years_of_employment) OR ([years_of_employment] IS NULL AND @original_years_of_employment IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL)) AND (([university] = @original_university) OR ([university] IS NULL AND @original_university IS NULL)) AND (([degree] = @original_degree) OR ([degree] IS NULL AND @original_degree IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_internationalcode" Type="String" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_family" Type="String" />
                        <asp:Parameter Name="original_experience" Type="String" />
                        <asp:Parameter Name="original_birthday" Type="String" />
                        <asp:Parameter Name="original_teacher" Type="String" />
                        <asp:Parameter Name="original_years_of_employment" Type="String" />
                        <asp:Parameter Name="original_description" Type="String" />
                        <asp:Parameter Name="original_mobile" Type="String" />
                        <asp:Parameter Name="original_address" Type="String" />
                        <asp:Parameter Name="original_image" Type="String" />
                        <asp:Parameter Name="original_university" Type="String" />
                        <asp:Parameter Name="original_degree" Type="String" />
                        <asp:Parameter Name="original_phone" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="internationalcode" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="family" Type="String" />
                        <asp:Parameter Name="experience" Type="String" />
                        <asp:Parameter Name="birthday" Type="String" />
                        <asp:Parameter Name="teacher" Type="String" />
                        <asp:Parameter Name="years_of_employment" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="image" Type="String" />
                        <asp:Parameter Name="university" Type="String" />
                        <asp:Parameter Name="degree" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="family" Type="String" />
                        <asp:Parameter Name="experience" Type="String" />
                        <asp:Parameter Name="birthday" Type="String" />
                        <asp:Parameter Name="teacher" Type="String" />
                        <asp:Parameter Name="years_of_employment" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="image" Type="String" />
                        <asp:Parameter Name="university" Type="String" />
                        <asp:Parameter Name="degree" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="original_internationalcode" Type="String" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_family" Type="String" />
                        <asp:Parameter Name="original_experience" Type="String" />
                        <asp:Parameter Name="original_birthday" Type="String" />
                        <asp:Parameter Name="original_teacher" Type="String" />
                        <asp:Parameter Name="original_years_of_employment" Type="String" />
                        <asp:Parameter Name="original_description" Type="String" />
                        <asp:Parameter Name="original_mobile" Type="String" />
                        <asp:Parameter Name="original_address" Type="String" />
                        <asp:Parameter Name="original_image" Type="String" />
                        <asp:Parameter Name="original_university" Type="String" />
                        <asp:Parameter Name="original_degree" Type="String" />
                        <asp:Parameter Name="original_phone" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                    </UpdateParameters>
    </asp:SqlDataSource>
            </span></span>
        </asp:Content>

