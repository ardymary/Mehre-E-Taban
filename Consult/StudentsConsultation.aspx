<%@ Page Title="" Language="C#" MasterPageFile="~/Consult/Consult.master" AutoEventWireup="true" CodeFile="StudentsConsultation.aspx.cs" Inherits="Admin_Consultation_StudentsConsultation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style77
        {
            width: 100%;
            height: 149%;
            background-color: #4D6F91;
        }
        .style45
        {
            font-family: Tahoma;
            font-size: 10pt;
            margin-right: 0px;
        }
        .style78
        {
            font-size: 10pt;
        }
        .style91
        {
            font-size: 10pt;
            width: 366px;
        }
        .style92
        {
            width: 100%;
            height: 357px;
        }
        .style94
    {
        height: 50px;
    }
    .style95
    {
        height: 71px;
    }
    .style96
    {
        height: 40px;
    }
    .style97
    {
        height: 50px;
        width: 173px;
    }
    .style98
    {
        height: 71px;
        width: 173px;
    }
    .style99
    {
        height: 40px;
        width: 173px;
    }
        .style100
        {
            height: 39px;
        }
        .style102
        {
            height: 29px;
        }
        .style104
        {
        }
        .style105
        {
            height: 27px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" dir="rtl" 
        style="font-family: Tahoma; font-size: 10pt;">
        <tr>
            <td align="right" class="style100">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right">
                <table align="center" cellpadding="0" cellspacing="0" class="style77" dir="rtl" 
                    frame="box" style="border: medium ridge #CCCCCC; height: 65px;">
                    <tr>
                        <td class="style105" valign="middle" align="right">
                            جستجو بر اساس :</td>
                        <td class="style91" rowspan="3" valign="middle">
                            <asp:Button ID="btnSaerch" runat="server" 
                    onclick="btnSaerch_Click" Text="جستجو" CssClass="style45" Height="25px" 
                    Width="92px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style102" valign="middle" 
                            style="border-style: groove; border-width: 2px">
                            <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                    GroupName="a" oncheckedchanged="RadioButton1_CheckedChanged" Text="کد ملی" 
                    CssClass="style45" />
                        &nbsp;&nbsp;
                                        <asp:TextBox ID="txtCode" runat="server" CssClass="style45" 
                                Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style104" valign="middle" 
                            style="border-style: groove; border-width: 2px">
                            <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
                    GroupName="a" oncheckedchanged="RadioButton3_CheckedChanged" 
                    Text="نام  " CssClass="style78" />
                        &nbsp;
                            <asp:TextBox ID="txtName" runat="server" Width="109px"></asp:TextBox>
                        &nbsp;&nbsp;
                            نام خانوادگی : 
                            <asp:TextBox ID="txtFamily" runat="server" AutoPostBack="True" Enabled="False" 
                                CssClass="style45" Width="109px"></asp:TextBox>
                   
                        &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                <br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="1040px" DataKeyNames="internationalcode" 
                    onrowcommand="GridView1_RowCommand" 
                    AutoGenerateColumns="False" CssClass="style45" PageSize="20" BorderColor="#666699" 
                    BorderStyle="Ridge" BorderWidth="3px" Font-Size="10pt" 
                    HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="Silver" />
                    <Columns>
                        <asp:TemplateField HeaderText="ردیف">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text="<%# (GridView1.PageIndex * GridView1.PageSize) + (GridView1.Rows.Count + 1)  %>"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#3164C1" />
                            <ItemStyle BorderWidth="0px" ForeColor="#0000CC" HorizontalAlign="Center" 
                                VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="internationalcode" HeaderText="کد ملی" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="نام" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="family" HeaderText="نام خانوادگی" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="address" HeaderText="آدرس" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="homephone" HeaderText="تلفن منزل" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="emergencyphone" HeaderText="تلفن ضروری" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="description" HeaderText="توضیحات" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="degree" HeaderText="مقطع" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="grade" HeaderText="پایه" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" Wrap="True" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                        Height="28px" HorizontalAlign="Center" VerticalAlign="Middle" 
                        Font-Names="B Nazanin" Font-Size="11pt" />
                    <PagerSettings PageButtonCount="20" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#FFCCFF" Font-Bold="True" ForeColor="#333333" />
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
                <br />
                <br />
                <table class="style92" 
                    
                    style="border: thin solid #000099; padding: inherit; margin: inherit; height: 214px;" 
                    border="4">
                    <tr>
                        <td class="style97" align="left" valign="middle">
                            مشکل دانش آموز :</td>
                        <td align="right" class="style94" valign="middle">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="804px" 
                                Height="48px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style98" align="left" valign="middle">
                            راه حل پیشنهادی :</td>
                        <td align="right" class="style95" valign="middle">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="806px" 
                                Height="61px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style99" align="left" valign="middle">
                            توضیحات :</td>
                        <td align="right" class="style96" valign="middle">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="803px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center" valign="middle">
                            <asp:Button ID="btnInsert" runat="server" onclick="btnInsert_Click" 
                                Text="ثبت اطلاعات" Font-Names="Tahoma" />
                        </td>
                    </tr>
                    </table>
                            <br />
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="id" ForeColor="#333333" GridLines="None" 
                                onrowcommand="GridView2_RowCommand" 
                    onrowdeleting="GridView2_RowDeleting" Caption="سوابق دانش آموز" 
                    CaptionAlign="Top" Font-Names="Tahoma" Font-Size="10pt" 
                    HorizontalAlign="Center" PageSize="5" Width="972px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="date" HeaderText="تاریخ مراجعه" />
                                    <asp:BoundField DataField="problem" HeaderText="مشکل دانش آموز">
                                    <ItemStyle Width="400px" />
                                    </asp:BoundField>
                                    <asp:CommandField SelectText="نمایش" ShowSelectButton="True" />
                                    <asp:CommandField DeleteText="حذف" ShowDeleteButton="True" />
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                                    Font-Names="Tahoma" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

