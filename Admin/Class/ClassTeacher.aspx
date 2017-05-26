<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ClassTeacher.aspx.cs" Inherits="Admin_ClassTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style53
        {
            width: 100%;
        }
        .style54
        {
        }
        .style55
        {
            width: 186px;
            background-color: #336699;
        }
        .style57
        {
            width: 147px;
        }
        .style58
        {
            width: 142px;
            height: 26px;
            background-color: #336699;
            color: #CCCCCC;
        }
        .style59
        {
            width: 186px;
            height: 26px;
            background-color: #336699;
        }
        .style63
        {            background-color: #669999;
        }
        .style64
        {
            width: 142px;
        }
        .style68
        {
            color: #000000;
        }
        .style69
        {
            height: 33px;
        }
        .style70
        {
            width: 147px;
            height: 33px;
        }
        .style71
        {
            height: 32px;
        }
        .style72
        {
            width: 147px;
            height: 32px;
        }
        .style73
        {
            background-color: #336699;
            color: #CCCCCC;
        }
        .style74
        {
            height: 26px;
            width: 247px;
            background-color: #336699;
            color: #CCCCCC;
        }
        .style75
        {
            width: 294px;
            height: 26px;
            background-color: #336699;
        }
        .style76
        {
            width: 147px;
            background-color: #336699;
        }
        .style77
        {
            width: 186px;
            background-color: #336699;
        }
        .style78
        {
            height: 33px;
            background-color: #336699;
            color: #CCCCCC;
        }
        .style79
        {
            width: 142px;
            background-color: #336699;
            color: #CCCCCC;
        }
        .style81
        {
            height: 28px;
        }
        .style82
        {
            width: 147px;
            height: 28px;
        }
        .style83
        {
            width: 142px;
            background-color: #006666;
            height: 29px;
            color: #CCCCCC;
        }
        .style84
        {
            background-color: #006666;
            height: 29px;
        }
        .style85
        {
            background-color: #006666;
            color: #CCCCCC;
        }
        .style86
        {
            color: #CCCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style53">
        <tr>
            <td align="center">
                <table align="center" style="width: 872px; font-family: Tahoma">
                    <tr>
                        <td align="center" colspan="2">
                            </td>
                        <td align="left" class="style81">
                            </td>
                        <td class="style82" align="right">
                        </td>
                        <td class="style81">
                            </td>
                    </tr>
                    <tr>
                        <td class="style78" align="center" colspan="2">
                            انتخاب آموزگار</td>
                        <td align="left" class="style69">
                            </td>
                        <td class="style70" align="right">
                        </td>
                        <td class="style69">
                            </td>
                    </tr>
                    <tr>
                        <td class="style79" align="left">
                            نام خانوادگی:</td>
                        <td class="style55" align="right">
                            <asp:DropDownList ID="DropDownList7" runat="server" AppendDataBoundItems="True" 
                                AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="family" 
                                DataValueField="family" 
                                onselectedindexchanged="DropDownList7_SelectedIndexChanged" 
                                CssClass="style68">
                                <asp:ListItem>انتخاب کنید ...</asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator runat="server" ForeColor="White" 
                                ControlToValidate="DropDownList7" ErrorMessage="*" ValidationGroup="cc" 
                                ID="RequiredFieldValidator10" InitialValue="انتخاب کنید ..."></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" class="style73">
                            نام :</td>
                        <td class="style76" align="right">
                            <asp:DropDownList ID="DropDownList8" runat="server" 
                                DataSourceID="SqlDataSource8" DataTextField="name" DataValueField="name" 
                                CssClass="style68">
                            </asp:DropDownList>
                        </td>
                        <td class="style73">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style64" align="left">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td class="style57" align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" style="background-color: #336699" 
                            class="style86">
                            جستجوی کلاس</td>
                        <td align="left" class="style71">
                            </td>
                        <td class="style72" align="right">
                        </td>
                        <td class="style71">
                            </td>
                    </tr>
                    <tr>
                        <td class="style79" align="left">
                            مقطع :</td>
                        <td class="style77" align="right">
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="degree" 
                                DataValueField="id_degree" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem>انتخاب کنید ...</asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator runat="server" ForeColor="White" 
                                ControlToValidate="DropDownList1" ErrorMessage="*" ValidationGroup="cc" 
                                ID="RequiredFieldValidator12" InitialValue="انتخاب کنید ..."></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" class="style73">
                            پایه:</td>
                        <td class="style76" align="right">
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                DataSourceID="SqlDataSource4" DataTextField="grade" DataValueField="id_grade">
                            </asp:DropDownList>
                        </td>
                        <td class="style73">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style58" align="left">
                            جنسیت :</td>
                        <td class="style59" align="right">
                            <asp:DropDownList runat="server" CssClass="style115" Height="24px" 
                                Width="125px" ID="DropDownList5" style="font-family: Tahoma">
                                <asp:ListItem>انتخاب کنید ...</asp:ListItem>
                                <asp:ListItem Value="1">دختر</asp:ListItem>
                                <asp:ListItem Value="2">پسر</asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator runat="server" ForeColor="White" 
                                ControlToValidate="DropDownList5" ErrorMessage="*" ValidationGroup="cc" 
                                ID="RequiredFieldValidator13" InitialValue="انتخاب کنید ..."></asp:RequiredFieldValidator>
                        </td>
                        <td class="style74" align="left">
                            سال تحصیلی :</td>
                        <td class="style75" align="right">
                            <asp:DropDownList ID="DropDownList4" runat="server" 
                                DataSourceID="SqlDataSource6" DataTextField="year" 
                                DataValueField="id_years" 
                                onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                                <asp:ListItem>انتخاب کنید ...</asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator runat="server" ForeColor="White" 
                                ControlToValidate="DropDownList4" ErrorMessage="*" ValidationGroup="cc" 
                                ID="RequiredFieldValidator14" InitialValue="انتخاب کنید ..."></asp:RequiredFieldValidator>
                        </td>
                        <td class="style74" align="right">
                            <asp:Button ID="btnSearchClass" runat="server" onclick="Button1_Click1" 
                                Text="جستجوی کلاس" ValidationGroup="cc" style="font-family: Tahoma" 
                                Height="29px" />
                            </td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style85" align="center" colspan="2">
                            انتخاب کلاس</td>
                        <td class="style81" align="left">
                            </td>
                        <td class="style81" align="right">
                        </td>
                        <td class="style81" align="right">
                            </td>
                    </tr>
                    <tr>
                        <td class="style83" align="left">
                            نام کلاس :</td>
                        <td class="style84" align="right" colspan="4">
                            <asp:DropDownList ID="DropDownList3" runat="server" Height="19px" Width="123px">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style63" colspan="5">
                            <asp:Button ID="btnInsert" runat="server" Text="تخصیص کلاس" 
                                onclick="btnInsert_Click" style="font-family: Tahoma" Height="28px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style54" colspan="5" align="center">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="id" 
                                onpageindexchanged="GridView1_PageIndexChanged" 
                                onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
                                Width="614px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="نام">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="فامیل">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("family") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("family") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="نام کلاس">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("class") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:DropDownList ID="DropDownList6" runat="server" 
                                                DataSourceID="SqlDataSource1" DataTextField="degree" DataValueField="id_degree" 
                                                SelectedValue='<%# Eval("degree") %>'>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="پایه">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("grade") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("grade") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="جنسیت">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField DeleteText="حذف اطلاعات" ShowDeleteButton="True" />
                                    <asp:CommandField SelectText="ویرایش" ShowSelectButton="True" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT [family] FROM [Teacher]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT [name] FROM [Teacher] WHERE ([family] = @family)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList7" Name="family" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
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
    </table>
</asp:Content>

