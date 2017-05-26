<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Admin_Search" %>

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
        .style45
        {
            font-family: Tahoma;
            font-size: 10pt;
            margin-right: 0px;
        }
        .style81
        {
            width: 152px;
        }
        .style78
        {
            font-size: 10pt;
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
        .style18
        {
            color: #000066;
            font-family: Tahoma;
            font-size: 10pt;
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
        .style100
        {
            color: #FFFF66;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <telerik:RadAjaxManager ID="RadAjaxManager2" runat="server">
    </telerik:RadAjaxManager>
        <telerik:RadTabStrip ID="RadTabStrip1" runat="server" Align="Center" 
        MultiPageID="RadMultiPage1" Skin="WebBlue" SelectedIndex="1">
            <Tabs>
                <telerik:RadTab runat="server" ScrollButtonsPosition="Middle" 
                    Text="جستجوی پیشرفته" Font-Names="tahoma" Font-Size="10pt">
                </telerik:RadTab>
                <telerik:RadTab runat="server" ScrollButtonsPosition="Middle" 
                    Text="جستجوی اطلاعات فردی" Font-Names="Tahoma" Font-Size="10pt" Selected="True">
                </telerik:RadTab>
            </Tabs>
    </telerik:RadTabStrip>
    <table align="center" frame="void" style="height: 100%; width: 1044px" 
        dir="ltr">
        <tr>
            <td valign="top" style="width: auto; height: auto">
        <telerik:RadMultiPage ID="RadMultiPage1" Runat="server" 
            SelectedIndex="1" Width="1021px">
            <telerik:RadPageView ID="RadPageView2" runat="server">
                <table align="center" dir="rtl" 
                    style="font-family: Tahoma; font-size: 10pt; width: 1023px; height: 100%;">
                    <tr>
                        <td align="center" class="style75">
                            <table align="center" cellpadding="0" cellspacing="0" class="style77" dir="rtl" 
                                frame="box" style="border: medium ridge #CCCCCC; width: 100%;">
                                <tr>
                                    <td class="style92" align="right" valign="middle" 
                                        
                                        
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0">
                                        سال تحصیلی&nbsp;
                                        <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="selectyear" 
                                            DataTextField="year" DataValueField="id_years" 
                                            onselectedindexchanged="DropDownList15_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                    <td valign="middle" class="style93" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0">
                                        &nbsp;</td>
                                    <td class="style94" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0; border-left-style: groove;" 
                                        valign="middle">
                                        <span class="style100">
                                        <asp:SqlDataSource ID="selectyear" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                            SelectCommand="SELECT * FROM [School_Years] ORDER BY [id_years] DESC">
                                        </asp:SqlDataSource>
                                        </span>
                                    </td>
                                    <td align="center" rowspan="4" valign="middle">
                                        <asp:Button ID="btnSaerch" runat="server" CssClass="style45" 
                                            Height="25px" onclick="btnSaerch_Click" Text="جستجو" Width="86px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0" 
                                        valign="middle">
                                        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                                            CssClass="style45" GroupName="a" oncheckedchanged="RadioButton1_CheckedChanged" 
                                            Text="کد ملی" />
                                        &nbsp;
                                        <asp:TextBox ID="txtCode" runat="server" CssClass="style45" Enabled="False"></asp:TextBox>
                                        <asp:MaskedEditExtender ID="txtCode_MaskedEditExtender" runat="server" 
                                            AutoComplete="False" ClearMaskOnLostFocus="False" InputDirection="RightToLeft" 
                                            Mask="999-999-999-9" MaskType="Number" TargetControlID="txtCode">
                                        </asp:MaskedEditExtender>
                                    </td>
                                    <td class="style93" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0" 
                                        valign="middle">
                                        &nbsp;</td>
                                    <td class="style94" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0; border-left-style: groove;" 
                                        valign="middle">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style80" align="right" valign="middle" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0">
                                        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                                            Checked="True" CssClass="style78" GroupName="a" 
                                            oncheckedchanged="RadioButton2_CheckedChanged" Text="نمایش همه دانش آموزان" 
                                            ToolTip="پیش فرض" />
                                    </td>
                                    <td class="style82" valign="middle" colspan="2" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0; border-left-style: groove;">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style79" valign="middle" align="right" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0">
                                        <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
                                            CssClass="style78" GroupName="a" oncheckedchanged="RadioButton3_CheckedChanged" 
                                            Text="نام و نام خانوادگی  " />
                                        </td>
                                    <td class="style81" valign="middle" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0">
                                        &nbsp;نام :
                                        <asp:TextBox ID="txtName" runat="server" Width="109px"></asp:TextBox>
                                    </td>
                                    <td valign="middle" class="style96" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0; border-left-style: groove;">
                                        نام خانوادگی :
                                        <asp:TextBox ID="txtFamily" runat="server" AutoPostBack="True" 
                                            CssClass="style45" Enabled="False" ontextchanged="txtFamily_TextChanged" 
                                            Width="121px"></asp:TextBox>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <table align="center" cellpadding="0" cellspacing="0" dir="rtl" 
                                style="border: medium ridge #C0C0C0; width: 1022px; height: 37px">
                                <tr>
                                    <td class="style83">
                                        <asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="True" 
                                            GroupName="a" oncheckedchanged="RadioButton4_CheckedChanged" 
                                            Text="جستجوی پیشرفته" />
                                    </td>
                                    <td align="left" class="style89">
                                        &nbsp;سال تحصیلی &nbsp;</td>
                                    <td align="right" class="style84">
                                        <asp:DropDownList ID="DropDownList7" runat="server" AppendDataBoundItems="True" 
                                            AutoPostBack="True" CssClass="style18" DataSourceID="SqlDataSource2" 
                                            DataTextField="year" DataValueField="year" Enabled="False" Height="22px" 
                                            onselectedindexchanged="DropDownList7_SelectedIndexChanged" ValidationGroup="a" 
                                            Width="100px">
                                            <asp:ListItem Value="%">کل سال ها</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="left" class="style85">
                                        جنسیت &nbsp;</td>
                                    <td align="right" class="style63">
                                        <asp:DropDownList ID="DropDownList14" runat="server" 
                                            AppendDataBoundItems="True" AutoPostBack="True" Height="23px" 
                                            style="font-family: Tahoma" Width="76px">
                                            <asp:ListItem Value="%">کل</asp:ListItem>
                                            <asp:ListItem>پسر</asp:ListItem>
                                            <asp:ListItem>دختر</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="left" class="style88">
                                        &nbsp;مقطع &nbsp;</td>
                                    <td align="right" class="style70">
                                        <asp:DropDownList ID="DropDownList13" runat="server" 
                                            AppendDataBoundItems="True" AutoPostBack="True" CssClass="style430" 
                                            DataSourceID="SqlDataSource4" DataTextField="degree" DataValueField="id_degree" 
                                            Enabled="False" Height="23px" 
                                            OnSelectedIndexChanged="DropDownList13_SelectedIndexChanged" 
                                            style="font-family: Tahoma; color: #000066; font-size: 10pt;" 
                                            ValidationGroup="a" Width="125px">
                                        </asp:DropDownList>
                                    </td>
                                    <td align="left" class="style66">
                                        &nbsp;پایه &nbsp;</td>
                                    <td align="right" class="style86">
                                        <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" 
                                            CssClass="style430" DataSourceID="SqlDataSource5" DataTextField="grade" 
                                            DataValueField="grade" Enabled="False" Height="22px" 
                                            onselectedindexchanged="DropDownList9_SelectedIndexChanged" 
                                            style="font-family: Tahoma; color: #000066; font-size: 10pt;" 
                                            ValidationGroup="a" Width="115px">
                                        </asp:DropDownList>
                                    </td>
                                    <td align="left" class="style67">
                                        &nbsp; خدمات&nbsp;&nbsp;
                                    </td>
                                    <td align="right" class="style90">
                                        <asp:DropDownList ID="DropDownList10" runat="server" 
                                            AppendDataBoundItems="True" AutoPostBack="True" CssClass="style430" 
                                            DataSourceID="SqlDataSource1" DataTextField="type" DataValueField="type" 
                                            Enabled="False" Height="23px" 
                                            onselectedindexchanged="DropDownList10_SelectedIndexChanged" 
                                            style="font-family: Tahoma; color: #000066; font-size: 10pt; background-color: #FFFFFF;" 
                                            ValidationGroup="a" Width="135px">
                                            <asp:ListItem Value="%">کل خدمات</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="middle">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT [year] FROM [School_Years]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT [type] FROM [Type_Tuition]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT * FROM [Grade] WHERE ([id_degree] = @id_degree)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList13" Name="id_degree" 
                                        PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT [gender] FROM [Students_Amount]"></asp:SqlDataSource>
                            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" BorderColor="#666699" BorderStyle="Ridge" 
                                BorderWidth="3px" CellPadding="4" CssClass="style45" 
                                DataKeyNames="internationalcode" DataSourceID="SqlDataSource6" 
                                EnablePersistedSelection="True" Font-Size="10pt" ForeColor="#333333" 
                                GridLines="None" HorizontalAlign="Center" onrowcommand="GridView3_RowCommand" 
                                onrowdatabound="GridView3_RowDataBound" onrowdeleting="GridView3_RowDeleting" 
                                PageSize="12" ShowFooter="True" Visible="False" Width="1020px">
                                <AlternatingRowStyle BackColor="Silver" HorizontalAlign="Center" 
                                    VerticalAlign="Middle" />
                                <Columns>
                                    <asp:TemplateField HeaderText="ردیف">
                                        <FooterTemplate>
                                         
                                        </FooterTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" 
                                                Text="<%# (GridView3.PageIndex * GridView3.PageSize) + (GridView3.Rows.Count + 1)  %>"></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="#3164C1" />
                                        <ItemStyle BorderWidth="0px" ForeColor="#0000CC" HorizontalAlign="Center" 
                                            VerticalAlign="Middle" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="year" HeaderText="سال تحصیلی" SortExpression="year">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="internationalcode" HeaderText="کد ملی" 
                                        SortExpression="internationalcode">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="gender" HeaderText="جنسیت" SortExpression="gender" />
                                    <asp:BoundField DataField="name" HeaderText="نام" SortExpression="name">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="family" HeaderText="نام خانوادگی" 
                                        SortExpression="family">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="degree" HeaderText="مقطع" SortExpression="degree">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="grade" HeaderText="پایه" SortExpression="grade">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="type" HeaderText="خدمات آموزشی" 
                                        SortExpression="type">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="emergencyphone" HeaderText="شماره تماس ضروری" 
                                        SortExpression="emergencyphone">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:CommandField SelectText="جزئیات" ShowSelectButton="True">
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:CommandField>
                                    <asp:CommandField DeleteText="حذف اطلاعات" ShowDeleteButton="True">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:CommandField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" HorizontalAlign="Left" />
                                <HeaderStyle BackColor="#507CD1" Font-Names="B Nazanin" Font-Size="11pt" 
                                    ForeColor="White" Height="28px" HorizontalAlign="Center" 
                                    VerticalAlign="Middle" />
                                <PagerSettings PageButtonCount="20" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" 
                                    VerticalAlign="Middle" />
                                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:GridView>
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" BorderColor="#666699" BorderStyle="Ridge" 
                                BorderWidth="3px" CellPadding="4" CssClass="style45" 
                                DataKeyNames="internationalcode" Font-Size="10pt" ForeColor="#333333" 
                                GridLines="None" HorizontalAlign="Center" 
                                onpageindexchanging="GridView1_PageIndexChanging" 
                                onrowcommand="GridView1_RowCommand" onrowdatabound="GridView1_RowDataBound" 
                                onrowdeleting="GridView1_RowDeleting" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="12" 
                                Width="1020px">
                                <AlternatingRowStyle BackColor="Silver" />
                                <Columns>
                                    <asp:TemplateField HeaderText="ردیف">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" 
                                                Text="<%# (GridView1.PageIndex * GridView1.PageSize) + (GridView1.Rows.Count + 1)  %>"></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="#3164C1" />
                                        <ItemStyle BorderWidth="0px" ForeColor="#0000CC" HorizontalAlign="Center" 
                                            VerticalAlign="Middle" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="internationalcode" HeaderText="کد ملی">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="name" HeaderText="نام">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="family" HeaderText="نام خانوادگی">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="address" HeaderText="آدرس">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="homephone" HeaderText="تلفن منزل">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="emergencyphone" HeaderText="تلفن ضروری">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="description" HeaderText="توضیحات">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="degree" HeaderText="مقطع">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="grade" HeaderText="پایه">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:CommandField SelectText="جزئیات" ShowSelectButton="True">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:CommandField>
                                    <asp:CommandField DeleteText="حذف اطلاعات" ShowDeleteButton="True">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:CommandField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" Wrap="True" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="B Nazanin" 
                                    Font-Size="11pt" ForeColor="White" Height="28px" HorizontalAlign="Center" 
                                    VerticalAlign="Middle" />
                                <PagerSettings PageButtonCount="20" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT * FROM [Degree]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" EnableViewState="False" 
                                FilterExpression="[type] like '{0}%' and degree like '{1}' and grade like '{2}' and year like '{3}' and gender like'{4}'" 
                                ProviderName="<%$ ConnectionStrings:DBConn.ProviderName %>" 
                                SelectCommand="SELECT Students_Amount.year, Students_Amount.type, Students_Amount.degree, Students_Amount.grade, Students_Personal_Information.name, Students_Personal_Information.family, Students_Personal_Information.emergencyphone, Students_Financial.internationalcode, Students_Amount.gender FROM Students_Amount INNER JOIN Students_Financial ON Students_Amount.id_amount = Students_Financial.id_amount INNER JOIN Students_Personal_Information ON Students_Financial.internationalcode = Students_Personal_Information.internationalcode">
                                <FilterParameters>
                                    <asp:ControlParameter ControlID="DropDownList10" Name="newparameter" 
                                        PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropDownList13" Name="1" 
                                        PropertyName="SelectedItem" />
                                    <asp:ControlParameter ControlID="DropDownList9" Name="2" 
                                        PropertyName="SelectedItem" />
                                    <asp:ControlParameter ControlID="DropDownList7" Name="newparameter" 
                                        PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropDownList14" Name="newparameter" 
                                        PropertyName="SelectedValue" />
                                </FilterParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </telerik:RadPageView>
            <telerik:RadPageView ID="RadPageView3" runat="server" Height="100%" 
                Width="100%">
                <asp:SqlDataSource ID="Student" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                    
                    
                    SelectCommand="SELECT Students_Personal_Information.name, Students_Personal_Information.family, Students_Personal_Information.birthday, Students_Personal_Information.place_birth, Students_Personal_Information.mobile, Students_Personal_Information.homephone, Students_Personal_Information.emergencyphone, Students_Personal_Information.email, Students_Personal_Information.mazhab, Students_Personal_Information.nationality, Students_Personal_Information.protectorship, Students_Degree.gender, Students_Parents_Information.name AS pname, Students_Parents_Information.family AS pfamily, Students_Parents_Information.relationship, Students_Parents_Information.birthday AS pbirthday, Students_Parents_Information.place_birth AS pbirthplace, Students_Parents_Information.Degrees, Students_Parents_Information.Field, Students_Parents_Information.job, Students_Parents_Information.Status, Students_Parents_Information.marital_status, Students_Parents_Information.mobile AS pmpbile, Students_Parents_Information.email AS pemail, Students_Parents_Information.id_parents, Students_Personal_Information.internationalcode, Students_Parents_Information.address AS paddress, Students_Personal_Information.address AS haddress FROM Students_Personal_Information INNER JOIN Students_Parents_Information ON Students_Personal_Information.internationalcode = Students_Parents_Information.s_internationalcode INNER JOIN Students_Degree ON Students_Personal_Information.internationalcode = Students_Degree.internationalcode">
                </asp:SqlDataSource>
                <telerik:RadGrid ID="RadGrid1" runat="server" allowfiltering="True" 
                    AllowFilteringByColumn="True" allowpaging="True" allowsorting="True" 
                    CellSpacing="0" Culture="fa-IR" Font-Names="Tahoma" gridlines="Horizontal" 
                    Height="650px" HorizontalAlign="Center" ShowFooter="True" ShowStatusBar="True" 
                    Skin="Black" style="font-family: Tahoma" Width="100%" PageSize="20" 
                    ShowGroupPanel="True" Font-Size="10pt" DataSourceID="Student" 
                    AutoGenerateColumns="False">
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
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                            <telerik:GridBoundColumn DataField="haddress" FilterControlAltText="Filter haddress column" HeaderText="آدرس منزل" SortExpression="haddress" UniqueName="haddress">
                                <ItemStyle Width="200px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="paddress" FilterControlAltText="Filter paddress column" HeaderText="آدرس محل کار والدین" SortExpression="paddress" UniqueName="paddress">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                            </telerik:GridBoundColumn>
                        </Columns>
                        <EditFormSettings>
                            <EditColumn FilterControlAltText="Filter EditCommandColumn column">
                            </EditColumn>
                        </EditFormSettings>
                        <ItemStyle Wrap="False" />
                        <PagerStyle AlwaysVisible="True" PageSizeControlType="RadComboBox" />
                        <HeaderStyle Wrap="False" />
                        <FooterStyle Wrap="False" />
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

