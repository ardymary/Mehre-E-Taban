<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="SearchClass.aspx.cs" Inherits="SearchClass" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">


        .style58
        {
            width: 89px;
            height: 26px;
            background-color: #3333CC;
        }
        .style59
        {
            width: 186px;
            height: 26px;
            background-color: #3333CC;
        }
     
        .style45
        {
            font-family: Tahoma;
            font-size: 10pt;
            margin-right: 0px;
        }
     
        .style66
        {
            width: 186px;
            height: 28px;
            background-color: #006666;
        }
        .style72
        {
            height: 28px;
        }
        .style73
        {
            height: 28px;
            background-color: #006666;
        }
        .style76
        {
            width: 147px;
            height: 28px;
        }
        .style77
        {
            width: 147px;
            height: 28px;
            background-color: #006666;
        }
        .style78
        {
            height: 32px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" style="font-family: Tahoma; width: 715px">
    <tr>
        <td align="center" colspan="2">
                            &nbsp;</td>
        <td align="left">
                            &nbsp;</td>
        <td align="right">
            &nbsp;</td>
        <td align="right">
                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style78" align="center" colspan="2" 
            style="background-color: #3333CC">
                            جستجوی کلاس</td>
        <td align="left">
                            </td>
        <td align="right">
        </td>
        <td align="right">
                            </td>
    </tr>
    <tr>
        <td class="style63" align="left" bgcolor="#3333CC">
                            مقطع :</td>
        <td class="style65" align="right" bgcolor="#3333CC">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="degree" 
                                DataValueField="id_degree" AutoPostBack="True" 
                                
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                CssClass="style39">
            </asp:DropDownList>
        </td>
        <td align="left" class="style63" bgcolor="#3333CC">
                            پایه:</td>
        <td class="style64" align="right" bgcolor="#3333CC">
            <asp:DropDownList ID="DropDownList2" runat="server" 
                                DataSourceID="SqlDataSource4" DataTextField="grade" 
                DataValueField="id_grade" CssClass="style39">
            </asp:DropDownList>
        </td>
        <td align="right" class="style63" bgcolor="#3333CC">
                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style58" align="left" bgcolor="#3333CC">
                            جنسیت :</td>
        <td class="style59" align="right" bgcolor="#3333CC">
            <asp:DropDownList runat="server" CssClass="style115" Height="24px" 
                                Width="125px" ID="DropDownList5" 
                style="font-family: Tahoma" 
                onselectedindexchanged="DropDownList5_SelectedIndexChanged">
                <asp:ListItem>انتخاب کنید ...</asp:ListItem>
                <asp:ListItem Value="1">دختر</asp:ListItem>
                <asp:ListItem Value="2">پسر</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ForeColor="White" 
                ControlToValidate="DropDownList1" ErrorMessage="*" ValidationGroup="cc" 
                ID="RequiredFieldValidator12" InitialValue="انتخاب کنید ..."></asp:RequiredFieldValidator>
        </td>
        <td class="style62" align="left" bgcolor="#3333CC">
                            سال تحصیلی :</td>
        <td class="style61" align="right" bgcolor="#3333CC">
            <asp:DropDownList ID="DropDownList4" runat="server" 
                                DataSourceID="SqlDataSource6" DataTextField="year" 
                                DataValueField="id_years" AutoPostBack="True" 
                AppendDataBoundItems="True" 
                onselectedindexchanged="DropDownList4_SelectedIndexChanged" 
                CssClass="style39">
                <asp:ListItem>انتخاب کنید ...</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td align="right" class="style63" bgcolor="#3333CC">
            <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                Text="جستجوی کلاس" style="font-family: Tahoma" Height="29px" />
        </td>
    </tr>
    <tr>
        <td align="left" colspan="5">
                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style73" align="center" colspan="2">
                            انتخاب کلاس</td>
        <td class="style72">
                            </td>
        <td class="style76" align="right">
                            </td>
        <td align="right" class="style72">
                            </td>
    </tr>
    <tr>
        <td class="style73" align="left">
                            نام کلاس :</td>
        <td class="style66" align="right">
            <asp:DropDownList ID="DropDownList3" runat="server" Height="19px" Width="123px" 
                onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                AppendDataBoundItems="True" AutoPostBack="True" 
                style="font-family: Tahoma">
                <asp:ListItem>انتخاب کنید</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style73">
                            </td>
        <td class="style77" align="right">
                            </td>
        <td align="right" class="style73">
                            </td>
    </tr>
    <tr>
        <td align="left" colspan="5">
                            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                    SelectCommand="SELECT * FROM [School_Years]"></asp:SqlDataSource>
            <asp:SqlDataSource runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                    SelectCommand="SELECT * FROM [Degree]" ID="SqlDataSource1">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                    
                    
                    
                    SelectCommand="SELECT id_class, name FROM Class WHERE (degree = @degree2) AND (grade = @grade) AND (gender = @gender) AND (year = @year)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="degree2" 
                            PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="grade" 
                            PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList5" Name="gender" 
                            PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList4" Name="year" 
                            PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                    SelectCommand="SELECT * FROM [Grade] WHERE ([id_degree] = @id_degree)" 
                    ID="SqlDataSource4">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="id_degree" 
                            PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td colspan="5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style54" colspan="5">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="696px" DataKeyNames="id" AllowPaging="True" 
                    AutoGenerateColumns="False" 
                    onpageindexchanging="GridView1_PageIndexChanging" CssClass="style45" BorderColor="#666699" 
                    BorderStyle="Ridge" BorderWidth="3px" Font-Size="10pt" 
                    HorizontalAlign="Center" onrowdeleting="GridView1_RowDeleting" 
                Caption="دانش اموزان این کلاس">
                <AlternatingRowStyle BackColor="Silver" />
                <Columns>
                    <asp:BoundField DataField="internationalcode" HeaderText="کد ملی" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="نام" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="family" HeaderText="نام خانوادگی" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="حذف از کلاس" ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" Wrap="True" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                        Height="28px" HorizontalAlign="Center" VerticalAlign="Middle" 
                        Font-Names="B Nazanin" Font-Size="11pt" />
                <PagerSettings PageButtonCount="20" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                <SortedAscendingCellStyle BackColor="#F5F7FB">
                </SortedAscendingCellStyle>
                <SortedAscendingHeaderStyle BackColor="#6D95E1">
                </SortedAscendingHeaderStyle>
                <SortedDescendingCellStyle BackColor="#E9EBEF">
                </SortedDescendingCellStyle>
                <SortedDescendingHeaderStyle BackColor="#4870BE">
                </SortedDescendingHeaderStyle>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="style54" colspan="5">
            <telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateColumns="False">
                <MasterTableView AllowFilteringByColumn="True" DataKeyNames="id_ST">
                    <Columns>
                        <telerik:GridBoundColumn DataField="id_ST" DataType="System.Int32" FilterControlAltText="Filter column column" UniqueName="column" Visible="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="internationalcode" FilterControlAltText="Filter column1 column" HeaderText="کد ملی" UniqueName="column1">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="name" FilterControlAltText="Filter column2 column" HeaderText="نام" UniqueName="column2">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="family" FilterControlAltText="Filter column3 column" HeaderText="نام خانوادگی" UniqueName="column3">
                        </telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" UniqueName="TemplateColumn" AllowFiltering="False">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox3" runat="server" />
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server"></asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="696px" DataKeyNames="internationalcode" AllowPaging="True" 
                    AutoGenerateColumns="False" 
                    onpageindexchanging="GridView2_PageIndexChanging" CssClass="style45" BorderColor="#666699" 
                    BorderStyle="Ridge" BorderWidth="3px" Font-Size="10pt" 
                    HorizontalAlign="Center" onrowdeleting="GridView1_RowDeleting" 
                Caption="دانش آموزان این مقطع و پایه">
                <AlternatingRowStyle BackColor="Silver" />
                <Columns>
                    <asp:BoundField DataField="internationalcode" HeaderText="کد ملی" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="نام" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="family" HeaderText="نام خانوادگی" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" Wrap="True" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                        Height="28px" HorizontalAlign="Center" VerticalAlign="Middle" 
                        Font-Names="B Nazanin" Font-Size="11pt" />
                <PagerSettings PageButtonCount="20" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                <SortedAscendingCellStyle BackColor="#F5F7FB">
                </SortedAscendingCellStyle>
                <SortedAscendingHeaderStyle BackColor="#6D95E1">
                </SortedAscendingHeaderStyle>
                <SortedDescendingCellStyle BackColor="#E9EBEF">
                </SortedDescendingCellStyle>
                <SortedDescendingHeaderStyle BackColor="#4870BE">
                </SortedDescendingHeaderStyle>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="style54" colspan="5">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="ثبت دانش آموز" CssClass="style39" />
            <br />
            <br />
            <br />
        </td>
    </tr>
</table>
</asp:Content>

