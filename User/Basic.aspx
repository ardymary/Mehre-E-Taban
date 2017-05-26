<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Basic.aspx.cs" Inherits="User_Basic" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

    <script type="text/javascript">

       
        function uploadStarted() {
            $get("imgDisplay").style.display = "none";
        }
        function uploadComplete(sender, args) {
            var imgDisplay = $get("imgDisplay");
            imgDisplay.src = "Mehr-Design/loader.gif";
            imgDisplay.style.cssText = "";
            var img = new Image();
            img.onload = function () {
                imgDisplay.style.cssText = "height:77px;width:66px";
                imgDisplay.src = img.src;
            };
            img.src = "<%=ResolveUrl(UploadFolderPath) %>" + args.get_fileName(); ;
        }
    </script>
    <style type="text/css">
        .auto-style14
        {
            width: 438px;
        }
        .style53
        {
            width: 100%;
            background-color: #CCCCCC;
        }
        .style55
        {
        }
        .style20
        {
            width: 77%;
            font-family: Tahoma;
            font-size: 10pt;
            height: 38px;
        }
        .style47
        {
            width: 99px;
            height: 29px;
        }
        .style57
        {
            font-family: Tahoma;
            height: 29px;
            color: #000000;
        }
        .style72
        {
            height: 29px;
            }
        .style44
        {
            width: 116px;
            height: 32px;
        }
        .style27
        {
            width: 61px;
        }
        .style54
        {
            width: 122px;
            font-size: 9pt;
            font-family: Tahoma;
        }
        .style76
        {
            width: 80px;
        }
        .style79
        {
            font-family: Tahoma;
            font-size: 10pt;
            height: 35px;
        }
        .style80
        {
            width: 59%;
            height: 100%;
        }
        .style81
        {
            width: 80%;
            height: 100%;
        }
        .style86
        {
            width: 151px;
        }
        .style89
        {
            width: 170px;
        }
        .style92
        {
            width: 170px;
            height: 29px;
        }
        .style94
        {
            width: 151px;
            height: 29px;
        }
        .style98
        {
            height: 60px;
        }
        .style103
        {
            width: 100%;
            height: 25px;
        }
        .style104
        {
            width: 384px;
        }
        .style105
        {
            width: 374px;
        }
        .style106
        {
            width: 336px;
        }
        .style107
        {
            width: 379px;
        }
        .style109
        {
            width: 100%;
            height: 100%;
        }
        .style111
        {
            width: 370px;
        }
        .style386
        {
            width: 66px;
            height: 81px;
        }
        .style387
        {
            font-family: Tahoma;
            color: #000000;
        }
        .style389
        {
            text-align: right;
        }
        .style391
        {
            width: 916px;
        }
        .style392
        {
            background-color: #3399FF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p align="center" style="width: 100%; height: 100%">
    <table align="center" cellspacing="1" dir="rtl">
        <tr>
            <td align="center" valign="middle">
                <br />
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
        Height="537px" Width="1076px" ScrollBars="Auto" Font-Names="Tahoma" 
                    ForeColor="#000066" Font-Size="11pt" 
                    style="font-family: Tahoma; font-size: 10pt">
        <asp:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
            <HeaderTemplate>تعریف سال تحصیلی</HeaderTemplate>
            <ContentTemplate><br /><br /><br />
                <table dir="rtl" 
                    bgcolor="#CCCCCC" style="width: 100%; height: 100%"><tr>
                        <td align="center" 
                            valign="middle">
                            <table align="center" cellspacing="1" class="style109">
                                <tr>
                                    <td align="left" class="style111">
                                        سال تحصیلی :</td>
                                    <td align="right">
                                        <asp:TextBox ID="txtYear" runat="server" CssClass="style15" Width="147px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="txtYear" ErrorMessage="*" ForeColor="#CC0000" 
                                            ValidationGroup="y"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        </tr><tr><td align="center" class="style20" valign="middle"><asp:Button ID="btnYears" runat="server" CssClass="style19" 
                                OnClick="btnYears_Click" 
                        style="height: 26px; font-family: Tahoma;" Text="ثبت اطلاعات" 
                                ValidationGroup="y" Width="91px" Height="24px" />
                        <br />
                        <asp:Label ID="Label5" runat="server"></asp:Label></td></tr><tr>
                        <td align="center" class="style6"><asp:GridView ID="GridView1" 
                                runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="id_years" 
                                Width="302px" CellPadding="4" ForeColor="#333333" GridLines="None" 
                        onrowdeleting="GridView1_RowDeleting" 
                        onpageindexchanging="GridView1_PageIndexChanging" 
                        onrowcancelingedit="GridView1_RowCancelingEdit" 
                        onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                        AllowPaging="True" 
                        style="font-family: Tahoma; font-size: 10pt" HorizontalAlign="Center"><AlternatingRowStyle BackColor="White" /><Columns><asp:TemplateField><EditItemTemplate><table class="style49"><tr><td><asp:TextBox ID="txtEYear" runat="server" Text='<%# Eval("year") %>'></asp:TextBox>&#160; &#160; </td></tr></table></EditItemTemplate><FooterTemplate><table class="style49"><tr><td><span ID="GridView1_lblYear_3">Databound</span> </td><td><table class="style49"><tr><td><a ID="GridView1_linDelYear_3" 
                                                                Href="javascript:__doPostBack('GridView1$ctl05$linDelYear','')">حذف اطلاعات</a> </td><td><a ID="GridView1_linEditYear_3" 
                                                                Href="javascript:__doPostBack('GridView1$ctl05$linEditYear','')">ویرایش</a> </td></tr></table></td></tr></table></FooterTemplate><HeaderTemplate><table class="style49"><tr>
                            <td class="style80">سال تحصیلی</td><td class="style76">&#160;</td></tr></table></HeaderTemplate><ItemTemplate><table class="style49"><tr><td class="style52"><asp:Label ID="lblYear" runat="server" Text='<%# Eval("year") %>'></asp:Label></td></tr></table></ItemTemplate></asp:TemplateField><asp:CommandField CancelText="بازگشت" EditText="ویرایش" ShowEditButton="True" 
                                UpdateText="ذخیره" /><asp:CommandField DeleteText="حذف" ShowDeleteButton="True" /></Columns><EditRowStyle BackColor="#2461BF" /><FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" /><HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" /><PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" /><RowStyle BackColor="#EFF3FB" /><SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" /><SortedAscendingCellStyle BackColor="#F5F7FB" /><SortedAscendingHeaderStyle BackColor="#6D95E1" /><SortedDescendingCellStyle BackColor="#E9EBEF" /><SortedDescendingHeaderStyle BackColor="#4870BE" /></asp:GridView></td></tr></table><br /></ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
            <HeaderTemplate>تعریف مقطع</HeaderTemplate>
            <ContentTemplate><br /><br /><table dir="rtl" bgcolor="#CCCCCC" 
                    style="width: 100%; height: 100%"><tr><td align="center">
                    <table align="center" cellspacing="1" class="style103">
                        <tr>
                            <td align="left" class="style104">
                                نام مقطع :</td>
                            <td align="right">
                                <asp:TextBox ID="txtDegree" runat="server" CssClass="style15" Height="19px" 
                                    Width="152px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtDegree" CssClass="style19" ErrorMessage="*" 
                                    ForeColor="#CC0000" ValidationGroup="m"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                    </td></tr><tr><td align="center" class="style98"><asp:Button ID="btnDegree" 
                            runat="server" CssClass="style24" 
                                OnClick="btnDegree_Click" Text="ثبت اطلاعات" Width="88px" 
                                ValidationGroup="m" Height="24px" style="font-family: Tahoma" />
                    <br />
                    <asp:Label ID="Label4" runat="server"></asp:Label></td></tr><tr>
                    <td align="center" class="style6"><asp:GridView ID="GridView2" 
                            runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="id_degree" ForeColor="#333333" 
                        GridLines="Horizontal" onrowdeleting="GridView2_RowDeleting" 
                                Width="353px" 
                        onrowcancelingedit="GridView2_RowCancelingEdit" 
                        onrowediting="GridView2_RowEditing" onrowupdating="GridView2_RowUpdating" 
                        AllowPaging="True" PageSize="7" CaptionAlign="Top" EnableTheming="True" 
                        HorizontalAlign="Center" ShowHeaderWhenEmpty="True" 
                        style="font-size: 10pt; font-family: Tahoma" 
                        onpageindexchanging="GridView2_PageIndexChanging"><AlternatingRowStyle BackColor="White" /><Columns><asp:TemplateField><EditItemTemplate><table class="style49"><tr><td><asp:TextBox ID="txtEDegree" runat="server" Text='<%# Eval("degree") %>'></asp:TextBox></td><td>&#160;&#160;</td></tr></table></EditItemTemplate><HeaderTemplate><table class="style49"><tr>
                        <td class="style81">مقطع تحصیلی</td><td class="style27">&#160;</td></tr></table></HeaderTemplate><ItemTemplate><table class="style49"><tr><td class="style52"><asp:Label ID="lblDegree" runat="server" Text='<%# Eval("degree") %>'></asp:Label></td></tr></table></ItemTemplate><HeaderStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Center" 
                                VerticalAlign="Middle" /></asp:TemplateField><asp:CommandField CancelText="بازگشت" EditText="ویرایش" ShowEditButton="True" 
                                UpdateText="ذخیره" /><asp:CommandField DeleteText="حذف" ShowDeleteButton="True" /></Columns><EditRowStyle BackColor="#2461BF" /><FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" /><HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" /><PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" /><RowStyle BackColor="#EFF3FB" /><SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" /><SortedAscendingCellStyle BackColor="#F5F7FB" /><SortedAscendingHeaderStyle BackColor="#6D95E1" /><SortedDescendingCellStyle BackColor="#E9EBEF" /><SortedDescendingHeaderStyle BackColor="#4870BE" /></asp:GridView></td></tr></table><br /><br /><br /><br /></ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
            <HeaderTemplate>تعریف پایه</HeaderTemplate>
            <ContentTemplate><br /><br />
                <table dir="rtl" 
                    bgcolor="#CCCCCC" style="width: 100%; height: 100%"><tr><td align="left" 
                            class="style105">مقطع :</td>
                        <td align="right"><asp:DropDownList 
                        ID="DropDownList15" runat="server" DataSourceID="SqlDataSourceDegree" DataTextField="degree" 
                                DataValueField="id_degree" Height="19px" Width="137px" 
                                style="font-family: Tahoma"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="DropDownList15" ErrorMessage=" *" ForeColor="#CC0000" 
                            InitialValue="انتخاب کنید ..." ValidationGroup="p"></asp:RequiredFieldValidator>
                        </td></tr><tr><td align="left" class="style105">پایه :</td><td align="right"><asp:TextBox ID="txtGrade" runat="server" Width="136px" CssClass="style24" 
                            style="font-family: Tahoma"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtGrade" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="p"></asp:RequiredFieldValidator>
                        </td></tr><tr><td align="center" class="style35" colspan="2" valign="middle"><asp:Button ID="btnGrade" runat="server" CssClass="style24" Height="25px" 
                                OnClick="btnGrade_Click" Text="ثبت اطلاعات" Width="90px" 
                                ValidationGroup="p" />
                        <br />
                        <asp:Label ID="Label3" runat="server"></asp:Label><asp:GridView ID="GridView6" runat="server" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_grade" 
                        ForeColor="#333333" GridLines="None" 
                        onpageindexchanging="GridView6_PageIndexChanging1" AllowPaging="True" 
                        onrowdeleting="GridView6_RowDeleting1" Width="313px" AllowSorting="True" 
                        onrowediting="GridView6_RowEditing" 
                        onrowcancelingedit="GridView6_RowCancelingEdit" 
                        onrowupdating="GridView6_RowUpdating" PageSize="8"><AlternatingRowStyle BackColor="White" /><Columns><asp:TemplateField><EditItemTemplate><asp:Label ID="Label6" runat="server" Text='<%# Eval("degree") %>'></asp:Label><asp:DropDownList ID="DropDownList8" runat="server" 
                                        DataSourceID="SqlDataSourceDegree" DataTextField="degree" 
                                        DataValueField="id_degree"></asp:DropDownList></EditItemTemplate><HeaderTemplate>مقطع</HeaderTemplate><ItemTemplate><asp:Label ID="lblDP" runat="server" Text='<%# Eval("Degree") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField><EditItemTemplate><asp:TextBox ID="txtDP" runat="server" Text='<%# Eval("grade") %>'></asp:TextBox></EditItemTemplate><HeaderTemplate>پایه</HeaderTemplate><ItemTemplate><asp:Label ID="Label7" runat="server" Text='<%# Eval("grade") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:CommandField CancelText="بازگشت" EditText="ویرایش" ShowEditButton="True" 
                                UpdateText="ذخیره" />
                            <asp:CommandField DeleteText="حذف " ShowDeleteButton="True" />
                        </Columns><EditRowStyle BackColor="#2461BF" /><FooterStyle 
                            BackColor="#507CD1" Font-Bold="True" ForeColor="White" /><HeaderStyle 
                            BackColor="#507CD1" Font-Bold="True" ForeColor="White" /><PagerStyle 
                            BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" /><RowStyle 
                            BackColor="#EFF3FB" /><SelectedRowStyle BackColor="#D1DDF1" 
                            Font-Bold="True" ForeColor="#333333" /><SortedAscendingCellStyle 
                            BackColor="#F5F7FB" /><SortedAscendingHeaderStyle BackColor="#6D95E1" /><SortedDescendingCellStyle 
                            BackColor="#E9EBEF" /><SortedDescendingHeaderStyle BackColor="#4870BE" /></asp:GridView></td></tr><tr>
                        <td align="center" class="style6" colspan="2"><asp:SqlDataSource ID="SqlDataSourceDegree" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                        SelectCommand="SELECT [id_degree], [degree] FROM [Degree]"></asp:SqlDataSource></td></tr></table><br /><br /><br /></ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel5" runat="server" HeaderText="TabPanel5">
            <HeaderTemplate>تعریف شهریه<br /></HeaderTemplate>
            <ContentTemplate><br /><br /><table dir="rtl" bgcolor="#CCCCCC" 
                    style="width: 100%; height: 100%"><tr><td align="left">سال تحصیلی :</td>
                    <td 
                        align="right">
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="style18" 
                                DataTextField="year" DataValueField="id_years" 
                                Height="22px" Width="125px" DataSourceID="SqlDataSource2" 
                    style="font-family: Tahoma; font-size: 10pt"></asp:DropDownList></td>
                    <td align="left">
                    مقطع :</td><td class="style35" 
                    align="right">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style18" 
                                DataTextField="degree" DataValueField="id_degree" 
                                Height="22px" Width="130px" DataSourceID="SqlDataSource1" 
                    style="font-family: Tahoma; font-size: 10pt" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList></td></tr><tr>
                    <td align="left">پایه :</td><td align="right">
                    <asp:DropDownList ID="DropDownList5" runat="server" 
                    DataSourceID="SqlDataSource4" DataTextField="grade" DataValueField="id_grade" 
                    Height="22px" Width="136px" CssClass="style45"></asp:DropDownList></td>
                    <td align="left">
                    جنسیت :</td><td class="style79" 
                    align="right">
                        <asp:DropDownList ID="DropDownList6" runat="server" Height="22px" Width="132px" 
                    CssClass="style45"><asp:ListItem>انتخاب کنید ...</asp:ListItem><asp:ListItem Value="1">پسر</asp:ListItem><asp:ListItem Value="2">دختر</asp:ListItem></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="DropDownList6" ErrorMessage="*" ForeColor="#CC0000" 
                            InitialValue="انتخاب کنید ..." ValidationGroup="c"></asp:RequiredFieldValidator>
                    </td></tr><tr><td align="left">نوع درخواست :</td><td align="right">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="style18" 
                            DataSourceID="SqlDataSource3" DataTextField="type" DataValueField="id_type" 
                            Height="22px" style="font-family: Tahoma; font-size: 10pt" 
                        Width="122px"></asp:DropDownList></td><td align="left">
                    مبلغ (ریال) :</td><td class="style55" align="right"><asp:TextBox ID="txtMablagh" 
                            runat="server" CssClass="style18" 
                            style="font-family: Tahoma; font-size: 10pt" Height="22px"></asp:TextBox><asp:MaskedEditExtender ID="txtMablagh_MaskedEditExtender" runat="server" 
                            AutoCompleteValue=" " DisplayMoney="Right" InputDirection="RightToLeft" 
                            Mask="999,999,999" MaskType="Number" TargetControlID="txtMablagh" 
                            CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                            CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                            CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True"></asp:MaskedEditExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtMablagh" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="c"></asp:RequiredFieldValidator>
                    </td></tr><tr>
                    <td align="center" class="style6" 
                    colspan="4" valign="middle">
                        <br />
                        <asp:Button ID="btnInsert" runat="server" CssClass="style18" 
                                style="font-family: Tahoma; font-size: 10pt" Text="ثبت اطلاعات" 
                                onclick="btnInsert_Click" ValidationGroup="c" /><asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT * FROM [Degree]"></asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT * FROM [Type_Tuition]"></asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                        SelectCommand="SELECT * FROM [Grade] WHERE ([id_degree] = @id_degree)"><SelectParameters><asp:ControlParameter ControlID="DropDownList2" Name="id_degree" 
                                PropertyName="SelectedValue" Type="Int32" /></SelectParameters></asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT * FROM [School_Years]"></asp:SqlDataSource><asp:Label ID="Label1" runat="server"></asp:Label>
                        <asp:GridView ID="GridView7" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_amount" 
                        ForeColor="#333333" GridLines="None" Height="107px" 
                        onpageindexchanging="GridView7_PageIndexChanging" onrowdeleting="GridView7_RowDeleting" 
                        PageSize="8" onrowcancelingedit="GridView7_RowCancelingEdit" 
                        onrowediting="GridView7_RowEditing" onrowupdating="GridView7_RowUpdating" 
                        Width="592px" ShowHeaderWhenEmpty="True"><AlternatingRowStyle BackColor="White" /><Columns><asp:TemplateField><EditItemTemplate><asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("year") %>'></asp:TextBox></EditItemTemplate><HeaderTemplate>سال تحصیلی</HeaderTemplate><ItemTemplate><asp:Label ID="Label8" runat="server" Text='<%# Eval("year") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField><EditItemTemplate><asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("degree") %>'></asp:TextBox></EditItemTemplate><HeaderTemplate>مقطعع</HeaderTemplate><ItemTemplate><asp:Label ID="Label9" runat="server" Text='<%# Eval("degree") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField><EditItemTemplate><asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("grade") %>'></asp:TextBox></EditItemTemplate><HeaderTemplate>پایه</HeaderTemplate><ItemTemplate><asp:Label ID="Label10" runat="server" Text='<%# Eval("grade") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField><EditItemTemplate><asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("gender") %>'></asp:TextBox></EditItemTemplate><HeaderTemplate>جنسیت</HeaderTemplate><ItemTemplate><asp:Label ID="Label11" runat="server" Text='<%# Eval("gender") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField><EditItemTemplate><asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("type") %>'></asp:TextBox></EditItemTemplate><HeaderTemplate>نوع خدمات</HeaderTemplate><ItemTemplate><asp:Label ID="Label12" runat="server" Text='<%# Eval("type") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField><EditItemTemplate><asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("amount") %>'></asp:TextBox></EditItemTemplate><HeaderTemplate>مبلغ</HeaderTemplate><ItemTemplate><asp:Label ID="Label13" runat="server" Text='<%# Eval("amount") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:CommandField CancelText="انصراف" EditText="ویرایش" ShowEditButton="True" 
                                UpdateText="ذخیره" /><asp:CommandField DeleteText="حذف" ShowDeleteButton="True" /></Columns><EditRowStyle BackColor="#2461BF" /><FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" /><HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" /><PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" /><RowStyle BackColor="#EFF3FB" /><SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" /><SortedAscendingCellStyle BackColor="#F5F7FB" /><SortedAscendingHeaderStyle BackColor="#6D95E1" /><SortedDescendingCellStyle BackColor="#E9EBEF" /><SortedDescendingHeaderStyle BackColor="#4870BE" /></asp:GridView></td></tr><tr>
                    <td class="style20" align="center" colspan="4">&nbsp;</td></tr></table></ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel6" runat="server" HeaderText="TabPanel6">
            <HeaderTemplate>تعریف خدمات<br /></HeaderTemplate>
            <ContentTemplate><br /><br /><table bgcolor="#CCCCCC" dir="rtl" 
                    style="width: 100%; height: 100%"><tr><td align="left" class="style106">نوع سرویس آموزشی :</td>
                    <td align="right">
                        <asp:TextBox ID="txtType" runat="server" Height="22px" 
                                ToolTip="تعریف سرویس ارائه شده جدید" Width="217px" CssClass="style15"></asp:TextBox><asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtType" 
                    ErrorMessage="*" ForeColor="#990033" ValidationGroup="dd"></asp:RequiredFieldValidator></td></tr><tr><td align="center" class="auto-style7" colspan="2"><asp:Button 
                        ID="btnInsertType" runat="server" Font-Names="Tahoma" Height="26px" 
                                Text="ثبت اطلاعات" Width="145px" onclick="btnInsertType_Click1" 
                        ValidationGroup="dd" />
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label></td></tr><tr><td align="center" class="auto-style5" colspan="2">
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="id_type" ForeColor="#333333" GridLines="None" 
                        onrowdeleting="GridView5_RowDeleting" AllowPaging="True" 
                        OnPageIndexChanging="GridView5_PageIndexChanging" 
                        onrowediting="GridView5_RowEditing" onrowupdating="GridView5_RowUpdating" 
                        PageSize="6" onrowcancelingedit="GridView5_RowCancelingEdit" Width="285px"><AlternatingRowStyle BackColor="White" /><Columns><asp:TemplateField><EditItemTemplate><table class="style53"><tr><td><asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("type") %>'></asp:TextBox></td><td><table class="style53"><tr><td>&#160;</td><td>&#160;</td></tr></table></td></tr></table></EditItemTemplate><HeaderTemplate>
                            <table class="style53" style="color: #FFFFFF; background-color: #336699"><tr><td class="style54">نوع خدمات آموزشی</td><td>&#160;</td></tr></table></HeaderTemplate><ItemTemplate>
                            <table style="width: 249px"><tr><td><asp:Label ID="Label14" runat="server" Text='<%# Eval("type") %>'></asp:Label></td><td><table class="style53"><tr><td>&#160;</td><td>&#160;</td></tr></table></td></tr></table></ItemTemplate></asp:TemplateField><asp:CommandField ShowEditButton="True" CancelText="بازگشت" EditText="ویرایش" 
                                UpdateText="ذخیره" /><asp:CommandField ShowDeleteButton="True" DeleteText="حذف اطلاعات" /></Columns><EditRowStyle BackColor="#2461BF" /><FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" /><HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" /><PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" /><RowStyle BackColor="#EFF3FB" /><SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" /><SortedAscendingCellStyle BackColor="#F5F7FB" /><SortedAscendingHeaderStyle BackColor="#6D95E1" /><SortedDescendingCellStyle BackColor="#E9EBEF" /><SortedDescendingHeaderStyle BackColor="#4870BE" /></asp:GridView></td></tr></table></ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel7" runat="server" HeaderText="TabPanel7">
            <HeaderTemplate>تعریف کلاس</HeaderTemplate>
            <ContentTemplate><br /><br /><table align="right" class="style53"><tr>
                <td align="left" class="style107"><asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                
                    SelectCommand="SELECT * FROM [Degree]"></asp:SqlDataSource><asp:SqlDataSource 
                    ID="SqlDataSource8" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                    SelectCommand="SELECT * FROM [School_Years]"></asp:SqlDataSource></td><td align="right"><asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                        SelectCommand="SELECT * FROM [Grade] WHERE ([id_degree] = @id_degree)"><SelectParameters><asp:ControlParameter ControlID="DropDownList9" Name="id_degree" 
                                PropertyName="SelectedValue" Type="Int32" /></SelectParameters></asp:SqlDataSource></td></tr><tr>
                    <td align="left" class="style107">نام کلاس :</td><td align="right">
                    <asp:TextBox ID="txtName" runat="server" CssClass="style24" Height="22px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="cc"></asp:RequiredFieldValidator></td></tr><tr>
                    <td align="left" class="style107">مقطع :</td><td align="right">
                    <asp:DropDownList ID="DropDownList9" runat="server" 
                                DataSourceID="SqlDataSource6" DataTextField="degree" DataValueField="id_degree" 
                                Width="120px" AppendDataBoundItems="True" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList9_SelectedIndexChanged" 
                        CssClass="style24" Height="22px"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="DropDownList9" ErrorMessage="*" ForeColor="#CC0000" 
                                InitialValue="انتخاب کنید ..." ValidationGroup="cc"></asp:RequiredFieldValidator></td></tr><tr>
                    <td align="left" class="style107">
                    پایه :</td><td align="right"><asp:DropDownList ID="DropDownList10" runat="server" 
                                Width="120px" AppendDataBoundItems="True" 
                        DataSourceID="SqlDataSource7" DataTextField="grade" DataValueField="id_grade" 
                            CssClass="style24" Height="22px"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="DropDownList10" ErrorMessage="*" ForeColor="#CC0000" 
                                InitialValue="انتخاب کنید ..." ValidationGroup="cc"></asp:RequiredFieldValidator></td></tr><tr>
                    <td align="left" class="style107">جنسیت :</td><td align="right">
                    <asp:DropDownList ID="DropDownList11" runat="server" Width="120px" 
                        CssClass="style24" Height="22px"><asp:ListItem>انتخاب کنید ...</asp:ListItem><asp:ListItem>دختر</asp:ListItem><asp:ListItem>پسر</asp:ListItem></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="DropDownList11" ErrorMessage="*" ForeColor="#CC0000" 
                                InitialValue="انتخاب کنید ..." ValidationGroup="cc"></asp:RequiredFieldValidator></td></tr><tr>
                    <td 
                        align="left" class="style107">سال تحصیلی : </td><td align="right"><asp:DropDownList 
                            ID="DropDownList16" runat="server" DataSourceID="SqlDataSource8" 
                            DataTextField="year" DataValueField="id_years" Height="22px" Width="122px" 
                            CssClass="style24"></asp:DropDownList></td></tr><tr><td align="center" colspan="2">
                    <asp:Button 
                        ID="btnInnsertClass" runat="server" OnClick="btnInnsertClass_Click" 
                        Text="ثبت اطلاعات" ValidationGroup="cc" style="font-family: Tahoma" /></td></tr><tr><td align="center" 
                        colspan="2">
                    <asp:GridView ID="GridView8" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_class" 
                        ForeColor="#333333" GridLines="None" 
                        OnPageIndexChanging="GridView8_PageIndexChanging" 
                        OnRowCancelingEdit="GridView8_RowCancelingEdit" 
                        OnRowDeleting="GridView8_RowDeleting" OnRowEditing="GridView8_RowEditing" 
                        OnRowUpdating="GridView8_RowUpdating" PageSize="7" Width="481px"><AlternatingRowStyle 
                            BackColor="White" /><Columns><asp:TemplateField HeaderText="نام کلاس"><EditItemTemplate><asp:TextBox 
                                ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox></EditItemTemplate><ItemTemplate><asp:Label 
                                    ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField 
                                HeaderText="مقطع"><EditItemTemplate><asp:DropDownList ID="DropDownList18" runat="server" 
                                        DataSourceID="SqlDataSource6" DataTextField="degree" DataValueField="id_degree" 
                                        SelectedValue='<%# Bind("degree") %>'></asp:DropDownList></EditItemTemplate><ItemTemplate><asp:DropDownList 
                                    ID="DropDownList17" runat="server" 
                                        DataSourceID="SqlDataSource6" DataTextField="degree" DataValueField="id_degree" 
                                        SelectedValue='<%# Eval("degree") %>'></asp:DropDownList></ItemTemplate></asp:TemplateField><asp:TemplateField 
                                HeaderText="پایه"><EditItemTemplate><asp:TextBox ID="TextBox3" runat="server" 
                                        Text='<%# Bind("grade") %>'></asp:TextBox></EditItemTemplate><ItemTemplate><asp:Label 
                                        ID="Label3" runat="server" Text='<%# Bind("grade") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField 
                                HeaderText="جنسیت"><EditItemTemplate><asp:TextBox ID="TextBox4" runat="server" 
                                        Text='<%# Bind("gender") %>'></asp:TextBox></EditItemTemplate><ItemTemplate><asp:Label 
                                        ID="Label4" runat="server" Text='<%# Bind("gender") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="سال تحصیلی"><EditItemTemplate><asp:DropDownList ID="DropDownList20" runat="server" 
                                        DataSourceID="SqlDataSource8" DataTextField="year" DataValueField="id_years" 
                                        SelectedValue='<%# Bind("year") %>'></asp:DropDownList></EditItemTemplate><ItemTemplate><asp:DropDownList 
                                    ID="DropDownList19" runat="server" 
                                        DataSourceID="SqlDataSource8" DataTextField="year" DataValueField="id_years" 
                                        SelectedValue='<%# Eval("year") %>'></asp:DropDownList></ItemTemplate></asp:TemplateField><asp:CommandField 
                                DeleteText="حذف" ShowDeleteButton="True" /><asp:CommandField 
                                CancelText="بازگشت" EditText="ویرایش" ShowEditButton="True" 
                                UpdateText="ذخیره" /></Columns><EditRowStyle BackColor="#2461BF" /><FooterStyle 
                            BackColor="#507CD1" Font-Bold="True" ForeColor="White" /><HeaderStyle 
                            BackColor="#507CD1" Font-Bold="True" ForeColor="White" /><PagerStyle 
                            BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" /><RowStyle 
                            BackColor="#EFF3FB" /><SelectedRowStyle BackColor="#D1DDF1" 
                            Font-Bold="True" ForeColor="#333333" /><SortedAscendingCellStyle 
                            BackColor="#F5F7FB" /><SortedAscendingHeaderStyle BackColor="#6D95E1" /><SortedDescendingCellStyle 
                            BackColor="#E9EBEF" /><SortedDescendingHeaderStyle BackColor="#4870BE" /></asp:GridView></td></tr></table></ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel8" runat="server" HeaderText="TabPanel8">
            <HeaderTemplate>تعریف معلم</HeaderTemplate><ContentTemplate><br />
            <table align="center" dir="rtl" bgcolor="#CCCCCC" class="style391"><tr>
                <td align="center" colspan="8" valign="middle">
                    <img ID="imgDisplay" align="middle" alt="تصویر دانش آموز" border="0" 
                            class="style386" dir="rtl" style="background-color: #006699; border: medium ridge #CCCCCC" />
                    <br />
                    <asp:Image ID="imgLoader" runat="server" Height="24px" 
                        ImageUrl="~/Mehr-Design/loader.gif" />
                    <asp:AsyncFileUpload ID="AsyncFileUpload1" runat="server" 
                        CompleteBackColor="#006600" FailedValidation="False" 
                        OnClientUploadComplete="uploadComplete" OnClientUploadStarted="uploadStarted" 
                        OnUploadedComplete="AsyncFileUpload1_UploadedComplete" ThrobberID="imgLoader" />
                </td></tr><tr>
                <td align="left">کد ملی :</span></td><td align="right" class="style89" colspan="2"><asp:TextBox ID="txtCode1" runat="server" CssClass="style56"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="txtCode1" ErrorMessage="*" ForeColor="#CC0000" 
                    ValidationGroup="parents"></asp:RequiredFieldValidator>
                </td><td class="style57" align="left">نام :</span></td><td align="right" 
                    class="style86" colspan="2">
                    <asp:TextBox ID="txtName1" runat="server" CssClass="style56"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                        ControlToValidate="txtName1" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="parents"></asp:RequiredFieldValidator>
                </td>
                <td align="left">&nbsp;&nbsp; نام خانوادگی :</span></td>
                <td align="right" 
                    class="style72">
                    <asp:TextBox ID="txtFamily1" runat="server" CssClass="style56"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                        ControlToValidate="txtFamily1" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="parents"></asp:RequiredFieldValidator>
                </td></tr><tr><td align="left" class="style72">سال تولد :</span></td>
                    <td align="right" class="style92" colspan="2"><asp:TextBox ID="txtBirthday1" runat="server" CssClass="style56"></asp:TextBox></td>
                    <td class="style387" align="left" rowspan="2">
                        سابقه تدریس :</span></td><td align="right" class="style86" colspan="2" 
                        rowspan="2"><asp:TextBox ID="txtExperience" runat="server" CssClass="style56" 
                            Height="57px" TextMode="MultiLine" Width="239px"></asp:TextBox></td>
                    <td align="left" class="style72">سال استخدام :</span></td><td align="right" 
                        class="style72"><asp:TextBox ID="txtYear0" runat="server" CssClass="style56"></asp:TextBox></td></tr>
                <tr>
                    <td align="left" class="style72">
                        پست الکترونیکی :</td>
                    <td align="right" class="style92" colspan="2">
                        <asp:TextBox ID="txtBirthday2" runat="server" CssClass="style56" Width="164px"></asp:TextBox>
                    </td>
                    <td align="left" class="style72">
                        دانشگاه محل تحصیل :</span></td>
                    <td align="right" class="style72">
                        <asp:TextBox ID="txtYear1" runat="server" CssClass="style56"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                <td align="left" class="style72">تلفن همراه :</td>
                    <td align="right" 
                    class="style92" colspan="2"><asp:TextBox ID="txtMobile" runat="server" CssClass="style56"></asp:TextBox></td>
                    <td class="style57" align="left">
                        مدرک تحصیلی :</td><td align="right" class="style94" colspan="2" 
                        valign="middle">
                        <asp:TextBox ID="txtYear2" runat="server" CssClass="style56"></asp:TextBox>
                </td>
                    <td align="left">
                        تلفن ثابت:</td>
                    <td align="right">
                        <asp:TextBox ID="txtMobile0" runat="server" CssClass="style56"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        آدرس :</span></td>
                    <td align="right" colspan="3">
                        <asp:TextBox ID="txtAddress1" runat="server" CssClass="style56" Height="56px" 
                            TextMode="MultiLine" Width="239px"></asp:TextBox>
                    </td>
                    <td align="left">
                        توضیحات :</span></td>
                    <td align="right" class="style389" colspan="3">
                        <asp:TextBox ID="txtDescription1" runat="server" CssClass="style56" 
                            Height="49px" TextMode="MultiLine" Width="263px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" colspan="2">
                        </span>نوع دبیر :</span></td>
                    <td align="right" colspan="6">
                        <asp:DropDownList ID="DropDownList14" runat="server" CssClass="style56" 
                            Height="20px" Width="129px">
                            <asp:ListItem>انتخاب کنید ...</asp:ListItem>
                            <asp:ListItem>فارسی</asp:ListItem>
                            <asp:ListItem>انگلیسی</asp:ListItem>
                            <asp:ListItem>کامپیوتر</asp:ListItem>
                            <asp:ListItem>هنر</asp:ListItem>
                            <asp:ListItem>پرورشی</asp:ListItem>
                            <asp:ListItem>ورزش</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                            ControlToValidate="DropDownList14" ErrorMessage="*" ForeColor="#CC0000" 
                            InitialValue="انتخاب کنید ..." ValidationGroup="parents"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td align="left" colspan="2">
                    &nbsp;</td>
                    <td align="right" colspan="6">
                        &nbsp;</td>
                </tr>
                <tr>
                <td align="center" colspan="4" class="style392">
                    <asp:Button ID="btnInsertTeacher" runat="server" 
                        OnClick="btnInsertTeacher_Click" style="font-family: Tahoma" 
                        Text="ثبت اطلاعات" Width="113px" />
                </td>
                    <td align="center" class="style392" colspan="2">
                        <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" Text="جستجوی آموزگار" 
                            Width="126px" PostBackUrl="~/User/Searchteacher.aspx" />
                    </td>
                    <td align="center" class="style392" colspan="2">
                        <asp:Button ID="Button2" runat="server" Font-Names="Tahoma" 
                            PostBackUrl="~/Admin/TeacherRep.aspx" Text="گزارش آموزگار" Width="126px" />
                    </td>
                </tr><tr><td align="center" colspan="8" style="font-size: xx-small">
                    &nbsp;</td></tr><tr><td align="center" colspan="8"></span>
                    <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" ForeColor="#333333" GridLines="Horizontal" 
                                onpageindexchanging="GridView9_PageIndexChanging" 
                                onrowcancelingedit="GridView9_RowCancelingEdit" 
                                onrowdeleting="GridView9_RowDeleting" onrowediting="GridView9_RowEditing" 
                                onrowupdating="GridView9_RowUpdating" 
                    DataKeyNames="internationalcode" Width="714px" AllowPaging="True" 
                        HorizontalAlign="Center" PageSize="5" CaptionAlign="Top"><AlternatingRowStyle BackColor="White" /><Columns>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" Height="68px" 
                                        ImageUrl='<%# Eval("image","~/Teacher/photo/{0}") %>' Width="59px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="internationalcode" HeaderText="کد ملی " /><asp:TemplateField HeaderText="نام"><EditItemTemplate><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>' 
                                                Width="80px"></asp:TextBox></EditItemTemplate><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="نام خانوادگی"><EditItemTemplate><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("family") %>' 
                                                Width="80px"></asp:TextBox></EditItemTemplate><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Bind("family") %>'></asp:Label></ItemTemplate></asp:TemplateField>
                            <asp:TemplateField HeaderText="سابقه تدریس"><EditItemTemplate><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("experience") %>' 
                                                Width="80px"></asp:TextBox></EditItemTemplate><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Bind("experience") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="نوع دبیر"><EditItemTemplate><asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("teacher") %>' 
                                                Width="80px"></asp:TextBox></EditItemTemplate><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Bind("teacher") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="سال استخدام"><EditItemTemplate><asp:TextBox ID="TextBox5" runat="server" 
                                                Text='<%# Bind("years_of_employment") %>' Width="80px"></asp:TextBox></EditItemTemplate><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Bind("years_of_employment") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="سال تولد"><EditItemTemplate><asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("birthday") %>' 
                                    Width="80px"></asp:TextBox></EditItemTemplate><ItemTemplate><asp:Label ID="Label9" runat="server" Text='<%# Bind("birthday") %>'></asp:Label></ItemTemplate></asp:TemplateField>
                            <asp:TemplateField HeaderText="رشته تحصیلی">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" Height="22px" 
                                        Text='<%# Bind("degree") %>' Width="74px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("degree") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="دانشگاه">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox11" runat="server" Height="21px" 
                                        Text='<%# Bind("university") %>' Width="83px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Bind("university") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="تلفن ثابت">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox12" runat="server" Height="22px" 
                                        Text='<%# Bind("phone") %>' Width="79px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label17" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="پست الکترونیکی">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label18" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="شماره همراه">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("mobile") %>' 
                                        Width="80px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("mobile") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="آدرس"><EditItemTemplate><asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("address") %>' 
                                                TextMode="MultiLine" Width="100px"></asp:TextBox></EditItemTemplate><ItemTemplate><asp:Label ID="Label7" runat="server" Text='<%# Bind("address") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="توضیحات"><EditItemTemplate><asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("description") %>' 
                                                TextMode="MultiLine" Width="110px"></asp:TextBox></EditItemTemplate><ItemTemplate><asp:Label ID="Label8" runat="server" Text='<%# Bind("description") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:CommandField DeleteText="حذف" ShowDeleteButton="True" /><asp:CommandField CancelText="بازگشت" EditText="ویرایش" ShowEditButton="True" 
                                        UpdateText="ذخیره" /></Columns><EditRowStyle BackColor="#2461BF" /><FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                            BorderWidth="0px" Font-Size="8pt" /><PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" /><RowStyle BackColor="#EFF3FB" /><SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" /><SortedAscendingCellStyle BackColor="#F5F7FB" /><SortedAscendingHeaderStyle BackColor="#6D95E1" /><SortedDescendingCellStyle BackColor="#E9EBEF" /><SortedDescendingHeaderStyle BackColor="#4870BE" /></asp:GridView></td></tr></table></ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>
            </td>
        </tr>
</table>
    </asp:Content>

