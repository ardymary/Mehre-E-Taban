<%@ Page Title="" Language="C#" MasterPageFile="~/Finance/Finance.master" AutoEventWireup="true" CodeFile="SearchChecks.aspx.cs" Inherits="User_ManageChecks" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>



<%@ Register assembly="Heidarpour.WebControlUI" namespace="Heidarpour.WebControlUI" tagprefix="rhp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    
    <style type="text/css">
        .style53
        {
            background-color: #006699;
        }
        .style54
        {
            color: #000066;
        }
        .style54
        {
            color: #000066;
        }
        .style85
        {
            color: #FFFFCC;
            text-align: center;
        }
        .style90
        {
            color: #000035;
        }
        .style96
        {
            width: 100%;
            height: 77px;
        }
        .style98
        {
            height: 33px;
            color: #FFCC00;
            font-size: 11pt;
            width: 103px;
        }
        .style99
        {
            width: 100%;
        }
        .style112
        {
            height: 33px;
            color: #FFCC00;
            font-size: 11pt;
            width: 703px;
        }
        .style113
        {
            width: 703px;
            height: 73px;
        }
        .style114
        {
            width: 103px;
            height: 73px;
        }
        .style115
        {
        }
        .style117
        {
        }
        .style135
        {
            width: 198px;
            height: 32px;
        }
        .style139
        {
            width: 227px;
            height: 32px;
        }
        .style17
        {
            font-size: 9pt;
        }
        .style141
        {
            height: 22px;
            width: 109px;
        }
        .style142
        {
            height: 22px;
            width: 705px;
        }
        .style143
        {
            height: 20px;
            width: 109px;
        }
        .style144
        {
            height: 20px;
            width: 705px;
        }
        .style147
        {
            height: 75px;
            width: 109px;
        }
        .style148
        {
            height: 75px;
            width: 705px;
        }
        .style149
        {
            color: #FFCC66;
        }
        .style150
        {
            color: #000066;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style49" align="center" 
        style="font-family: Tahoma; font-size: 10pt; height: 100%;">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
                    Width="1002px" ForeColor="#000066" style="color: #000000">
                    <asp:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
                        <HeaderTemplate>جستجوی چک</HeaderTemplate>
                        <ContentTemplate>
                            <br />
                            <table class="style49" style="height: 100%; width: 100%"><tr><td align="right" class="style53" dir="rtl" style="color: #000000"><table align="center" cellpadding="0" cellspacing="0" dir="rtl" 
                                            frame="box" style="border: medium ridge #C0C0C0; width: 974px;"><tr>
                                    <td class="style141" valign="middle" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0"><asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                                                        GroupName="a" OnCheckedChanged="RadioButton1_CheckedChanged" 
                                                        style="color: #FFFFCC" Text="شماره چک" /></td>
                                    <td class="style142" valign="middle" 
                                        style="border-left-style: groove; border-width: medium; border-color: #C0C0C0; border-bottom-style: groove;">
                                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" 
                                                        style="color: #000066" ValidationGroup="c"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                        ControlToValidate="TextBox1" Enabled="False" ErrorMessage="*" 
                                                        ForeColor="#CC0000" ValidationGroup="c"></asp:RequiredFieldValidator>
                                        <span class="style17">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                            SelectCommand="SELECT type FROM Type_Tuition">
                                        </asp:SqlDataSource>
                                        </span></td>
                                    <td class="style117" align="center" rowspan="3" valign="middle">
                                        <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" 
                                            onclick="Button1_Click1" Text="جستجو" />
                                    </td></tr>
                                <tr style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0">
                                <td valign="middle" class="style147" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0"><asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                                                        GroupName="a" OnCheckedChanged="RadioButton2_CheckedChanged" 
                                                        style="color: #FFFFCC" Text="وضعیت چک" /></td>
                                <td valign="middle" class="style148" 
                                        style="border-left-style: groove; border-width: medium; border-color: #C0C0C0; border-bottom-style: groove;">
                                    <table class="style99">
                                        <tr>
                                            <td class="style135">
                                                <span class="style17">
                                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="style150" 
                                                    Enabled="False" Height="23px" style="font-family: Tahoma; margin-right: 0px;" 
                                                    Width="127px" ValidationGroup="c">
                                                    <asp:ListItem>انتخاب کنید ...</asp:ListItem>
                                                    <asp:ListItem>ثبت شده</asp:ListItem>
                                                    <asp:ListItem>در جریان وصول</asp:ListItem>
                                                    <asp:ListItem>پاس شده</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                    ControlToValidate="DropDownList3" CssClass="style54" Enabled="False" 
                                                    ErrorMessage="*" ForeColor="#CC0000" InitialValue="انتخاب کنید ..." 
                                                    ValidationGroup="c"></asp:RequiredFieldValidator>
                                                <br />
                                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="style149" 
                                                    DataSourceID="SqlDataSource1" DataTextField="type" DataValueField="type" 
                                                    Height="19px" Width="155px" AppendDataBoundItems="True" 
                                                    AutoPostBack="True">
                                                </asp:CheckBoxList>
                                                </span>
                                            </td>
                                            <td align="left" class="style139">
                                                <rhp:DatePicker ID="DatePicker5" runat="server" CssClass="style54" 
                                                    DatePersian="" LabelText="" ShowOthers="False" ShowWeekNumbers="False"></rhp:DatePicker>
                                                <span class="style85">&nbsp; الی</span></td>
                                            <td class="style135">
                                                <span class="style54">
                                                <rhp:DatePicker ID="DatePicker6" runat="server" DatePersian="" LabelText="" 
                                                    ShowOthers="False" ShowWeekNumbers="False"></rhp:DatePicker>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </td></tr><tr><td class="style143" valign="middle" 
                                        style="border: medium none #C0C0C0;"><asp:RadioButton ID="RadioButton6" runat="server" AutoPostBack="True" 
                                                        GroupName="a" OnCheckedChanged="RadioButton6_CheckedChanged" 
                                                        style="color: #FFFFCC" Text="تاریخ چک از" /></td>
                                    <td class="style144" valign="middle" 
                                        style="border-left-style: groove; border-width: medium; border-color: #C0C0C0"><rhp:DatePicker ID="DatePicker3" runat="server" CssClass="style54" 
                                                        DatePersian="" LabelText="" ShowOthers="False" ShowWeekNumbers="False"></rhp:DatePicker><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                        ControlToValidate="DatePicker3" CssClass="style54" Enabled="False" 
                                                        ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="c"></asp:RequiredFieldValidator><span class="style85">&nbsp;الی </span>&nbsp;<span class="style54"><rhp:DatePicker 
                                                        ID="DatePicker4" runat="server" DatePersian="" LabelText="" ShowOthers="False" 
                                                        ShowWeekNumbers="False"></rhp:DatePicker><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                        ControlToValidate="DatePicker4" CssClass="style54" Enabled="False" 
                                                        ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="c"></asp:RequiredFieldValidator></span></td></tr></table></td></tr><tr><td align="center" dir="rtl"><asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
                                            AutoGenerateColumns="False" BorderColor="Silver" BorderStyle="Ridge" 
                                            BorderWidth="3px" Caption="جستجوی چک" CaptionAlign="Top" CellPadding="4" 
                                            DataKeyNames="id_check" EmptyDataText="اطلاعاتی با این مشخصات ثبت نشده است" 
                                            ForeColor="#333333" GridLines="None" HorizontalAlign="Center" 
                                            OnPageIndexChanging="GridView5_PageIndexChanging1" 
                                            OnRowCommand="GridView5_RowCommand" 
                                            OnSelectedIndexChanged="GridView5_SelectedIndexChanged" PageSize="15" 
                                            ShowHeaderWhenEmpty="True" style="border-style: none; padding: 1px 4px" 
                                            Width="979px" ShowFooter="True"><AlternatingRowStyle BackColor="Silver" /><Columns>
                                        <asp:TemplateField HeaderText="ردیف">
                                            <ItemTemplate>
                                                <span class="style17">
                                                <asp:Label ID="Label4" runat="server" 
                                                    Text="<%# (GridView5.PageIndex * GridView5.PageSize) + (GridView5.Rows.Count + 1) %>"></asp:Label>
                                                </span>
                                            </ItemTemplate>
                                            <ControlStyle ForeColor="Blue" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="name" HeaderText="نام" /><asp:BoundField DataField="family" HeaderText="نام خانوادگی" /><asp:BoundField DataField="datecheck" HeaderText="تاریخ چک" /><asp:BoundField DataField="datedaryaft" HeaderText="تاریخ دریافت" /><asp:BoundField DataField="accountnumber" HeaderText="شماره چک" /><asp:BoundField DataField="seryal" HeaderText="شماره سریال " />
                                        <asp:BoundField DataField="namebank" HeaderText="نام بانک" 
                                            FooterText="جمع مبلغ:" >
                                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Bottom" Width="120px" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="صاحب حساب"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Bind("accountname") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="مبلغ"><EditItemTemplate><asp:TextBox ID="TextBox2" runat="server" Text='<%# String.Format("{0:###,###,### ریال}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "amount")))%>'></asp:TextBox></EditItemTemplate><FooterTemplate><table class="style99"><tr><td align="center">
                                        <asp:Label ID="Label1" runat="server" style="font-size: 8pt"></asp:Label></td></tr></table></FooterTemplate><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# String.Format("{0:###,###,### ریال}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "amount")))%>'></asp:Label></ItemTemplate><ItemStyle Width="85px" /></asp:TemplateField><asp:TemplateField HeaderText="وضعیت چک"><FooterTemplate>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ریال</FooterTemplate><ItemTemplate><span class="style17">
                                            <asp:DropDownList ID="DropDownList4" runat="server" Height="25px" 
                                                            SelectedValue='<%# Eval("status") %>' style="font-family: Tahoma; font-size: 10pt;" 
                                                            Width="107px"><asp:ListItem>ثبت شده</asp:ListItem><asp:ListItem>در جریان وصول</asp:ListItem><asp:ListItem>پاس شده</asp:ListItem></asp:DropDownList></span></ItemTemplate></asp:TemplateField><asp:BoundField DataField="type" HeaderText="بابت" /><asp:BoundField HeaderText="ثبت کننده" /><asp:CommandField SelectText="ثبت" ShowSelectButton="True" ButtonType="Button" ><ControlStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="#009933" /></asp:CommandField></Columns><EditRowStyle BackColor="#2461BF" /><FooterStyle BackColor="#666699" Font-Bold="True" ForeColor="White" 
                                                HorizontalAlign="Center" VerticalAlign="Middle" /><HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="Tahoma" 
                                                Font-Size="10pt" ForeColor="White" Height="28px" /><PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" /><RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" /><SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" /><SortedAscendingCellStyle BackColor="#F5F7FB" /><SortedAscendingHeaderStyle BackColor="#6D95E1" /><SortedDescendingCellStyle BackColor="#E9EBEF" /><SortedDescendingHeaderStyle BackColor="#4870BE" /></asp:GridView></td></tr></table></ContentTemplate>
                    </asp:TabPanel>
                    <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
                        <HeaderTemplate><span class="style90">جستجوی حواله</span></HeaderTemplate>
                        <ContentTemplate>
                            <br />
                            <table class="style49" style="width: 971px"><tr><td align="right" class="style53" dir="rtl" style="color: #000000"><table align="center" cellpadding="0" cellspacing="0" class="style96" dir="rtl" 
                                            frame="box" style="border: medium ridge #C0C0C0">
                                <tr style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0">
                                    <td class="style98" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0"><asp:RadioButton ID="RadioButton7" runat="server" AutoPostBack="True" 
                                                        GroupName="hh" OnCheckedChanged="RadioButton7_CheckedChanged" 
                                                        style="color: #FFFFFF" Text="شماره فیش" /></td>
                                    <td class="style112" 
                                        style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0; border-left-style: groove;"><asp:TextBox ID="txtFish" runat="server" Enabled="False" style="color: #000066"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ControlToValidate="txtFish" Enabled="False" ErrorMessage="*" 
                                                        ForeColor="#CC0000" ValidationGroup="h"></asp:RequiredFieldValidator></td><td align="center" rowspan="2" valign="middle" class="style115">
                                        <asp:Button ID="Button2" runat="server" Font-Names="Tahoma" 
                                            onclick="Button2_Click" Text="جستجو" />
                                    </td></tr>
                                <tr style="border-bottom-style: groove; border-width: medium; border-color: #C0C0C0"><td class="style114"><asp:RadioButton ID="RadioButton8" runat="server" AutoPostBack="True" 
                                                        GroupName="hh" OnCheckedChanged="RadioButton8_CheckedChanged" 
                                                        style="color: #FFFFCC" Text="تاریخ حواله از" /></td>
                                    <td class="style113" 
                                        style="border-left-style: groove; border-width: medium; border-color: #C0C0C0"><rhp:DatePicker ID="DatePicker1" runat="server" DatePersian="" LabelText="" 
                                                        ShowOthers="False" ShowWeekNumbers="False" style="color: #000066"></rhp:DatePicker><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ControlToValidate="DatePicker1" Enabled="False" ErrorMessage="*" 
                                                        ForeColor="#CC0000" ValidationGroup="h"></asp:RequiredFieldValidator><span class="style85">&nbsp;الی</span> <rhp:DatePicker ID="DatePicker2" runat="server" DatePersian="" LabelText="" 
                                                        ShowOthers="False" ShowWeekNumbers="False" style="color: #000066"></rhp:DatePicker><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                        ControlToValidate="DatePicker2" Enabled="False" ErrorMessage="*" 
                                                        ForeColor="#CC0000" ValidationGroup="h"></asp:RequiredFieldValidator>
                                        <br />
                                        <span class="style17">
                                        <asp:CheckBoxList ID="CheckBoxList2" runat="server" AppendDataBoundItems="True" 
                                            AutoPostBack="True" CssClass="style149" DataSourceID="SqlDataSource2" 
                                            DataTextField="type" DataValueField="type" Height="19px" ValidationGroup="c" 
                                            Width="155px">
                                        </asp:CheckBoxList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                            SelectCommand="SELECT * FROM [Type_Tuition]"></asp:SqlDataSource>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                            ControlToValidate="DatePicker1" Enabled="False" ErrorMessage="*" 
                                            ForeColor="#CC0000" ValidationGroup="h"></asp:RequiredFieldValidator>
                                        </span>
                                        <br />
                                    </td></tr></table></td></tr><tr><td align="center" dir="rtl" style="color: #000000" valign="middle"><span class="style17"><asp:GridView ID="GridView6" runat="server" AllowPaging="True" 
                                            AutoGenerateColumns="False" Caption="حواله  های ثبت شده" CaptionAlign="Top" 
                                            CellPadding="4" DataKeyNames="id_havale" 
                                            EmptyDataText="اطلاعاتی با این مشخصات ثبت نشده است" Font-Size="10pt" 
                                            ForeColor="#333333" GridLines="None" Height="41px" HorizontalAlign="Center" 
                                            OnPageIndexChanging="GridView6_PageIndexChanging" 
                                            OnRowCommand="GridView6_RowCommand" OnRowDeleting="GridView6_RowDeleting" 
                                            ShowHeaderWhenEmpty="True" Width="962px" BorderColor="#999999" 
                                            BorderStyle="Ridge" BorderWidth="3px" PageSize="15" ShowFooter="True"><AlternatingRowStyle BackColor="Silver" /><Columns>
                                        <asp:TemplateField HeaderText="ردیف">
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" 
                                                    Text="<%# (GridView6.PageIndex * GridView6.PageSize) + (GridView6.Rows.Count + 1) %>"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle ForeColor="Blue" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="name" HeaderText="نام" /><asp:BoundField DataField="family" HeaderText="نام خانوادگی" /><asp:BoundField DataField="accountnumber" HeaderText="شماره فیش" 
                                                    SortExpression="accountnumber" /><asp:BoundField DataField="datehavale" HeaderText="تاریخ حواله" 
                                                    SortExpression="datehavale" /><asp:BoundField DataField="datedaryaft" HeaderText="تاریخ دریافت " 
                                                    SortExpression="datedaryaft" />
                                        <asp:BoundField DataField="namebank" HeaderText="نام بانک" 
                                                    SortExpression="namebank" FooterText="جمع مبالغ : " >
                                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="شعبه" SortExpression="Branch"><ItemTemplate><span class="style17"><asp:Label ID="Label2" runat="server" Text='<%# Bind("branch") %>'></asp:Label></span></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="مبلغ " SortExpression="Amount"><EditItemTemplate><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Amount") %>'></asp:TextBox></EditItemTemplate><FooterTemplate><span class="style17">
                                        <asp:Label ID="Label2" runat="server" style="font-size: 8pt"></asp:Label></span></FooterTemplate><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# String.Format("{0:###,###,### ریال}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "Amount")))%>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField HeaderText="پرداخت کننده" SortExpression="Branch"><EditItemTemplate><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("payer") %>'></asp:TextBox></EditItemTemplate><FooterTemplate>
                                        &nbsp;&nbsp;&nbsp;&nbsp; ریال</FooterTemplate><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Bind("payer") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:BoundField DataField="type" HeaderText="بابت" /></Columns><EditRowStyle BackColor="#2461BF" HorizontalAlign="Center" 
                                                VerticalAlign="Middle" Wrap="True" /><FooterStyle BackColor="#666699" Font-Bold="True" ForeColor="White" 
                                                HorizontalAlign="Center" VerticalAlign="Middle" /><HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Size="10pt" 
                                                ForeColor="White" Height="28px" HorizontalAlign="Center" 
                                                VerticalAlign="Middle" /><PagerSettings PageButtonCount="5" /><PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" /><RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" /><SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" /><SortedAscendingCellStyle BackColor="#F5F7FB" /><SortedAscendingHeaderStyle BackColor="#6D95E1" /><SortedDescendingCellStyle BackColor="#E9EBEF" /><SortedDescendingHeaderStyle BackColor="#4870BE" /></asp:GridView></span></td></tr><tr><td align="right" dir="rtl" 
                                        style="color: #000000; " class="style56">&nbsp;</td></tr></table></ContentTemplate>
                    </asp:TabPanel>
                </asp:TabContainer>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

