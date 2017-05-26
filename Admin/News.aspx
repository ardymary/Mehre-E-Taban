<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="User_News" %>

<%@ Register assembly="Heidarpour.WebControlUI" namespace="Heidarpour.WebControlUI" tagprefix="rhp" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style16
        {
            width: 100%;
            height: 100%;
        }
        .style18
        {
            width: 80%;
            height: 312px;
        }
        .style20
        {
            height: 29px;
        }
        .style21
        {
            height: 42px;
        }
        .style22
        {
            font-family: Tahoma;
            font-size: 10pt;
        }
        .style24
        {
            font-size: 10pt;
        }
        .style25
        {
            height: 26px;
            width: 102px;
        }
        .style53
        {
            height: 35px;
            width: 102px;
            color: #33CCFF;
        }
        .style54
        {
            height: 35px;
        }
        .style55
        {
            height: 32px;
            width: 102px;
            color: #33CCFF;
        }
        .style56
        {
            height: 32px;
        }
        .style57
        {
            height: 268px;
            width: 102px;
            color: #33CCFF;
        }
        .style58
        {
            height: 268px;
        }
        .style59
        {
            height: 268px;
            width: 738px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" class="style16">
        <tr>
            <td class="style22" dir="rtl">
                <table align="center" cellspacing="1" class="style18">
                    <tr>
                        <td class="style20" colspan="3">
                            <asp:LoginView ID="LoginView1" runat="server">
                                <AnonymousTemplate>
                                    <asp:LoginName ID="LoginName1" runat="server" />
                                </AnonymousTemplate>
                            </asp:LoginView>
                        </td>
                    </tr>
                    <tr>
                        <td class="style55">
                            عنوان اطلاعیه</td>
                        <td class="style56" align="right" colspan="2">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="style24" Height="22px" 
                                Width="610px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                            <asp:Label ID="Label1" runat="server" style="font-size: 8pt" 
                                Text="(حداکثر 150 کاراکتر)"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style57">
                            متن اطلاعیه</td>
                        <td class="style59" align="right" valign="middle">
                            <asp:TextBox ID="TextBox3" runat="server" Height="228px" TextMode="MultiLine" 
                                Width="627px"></asp:TextBox>
                        </td>
                        <td class="style58" align="right" valign="middle">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style21" colspan="3">
                            <asp:Button ID="Button1" runat="server" Height="22px" Text="ثبت" Width="80px" 
                                onclick="Button1_Click" ValidationGroup="a" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                HorizontalAlign="Center" DataKeyNames="nid" 
                                AutoGenerateColumns="False" onrowcommand="GridView1_RowCommand" 
                                onrowdeleting="GridView1_RowDeleting" Width="531px">
                                <Columns>
                                    <asp:BoundField DataField="nid" HeaderText="شماره" 
                                        SortExpression="nid" ReadOnly="True" >
                                    <ItemStyle Width="30px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="userid" HeaderText="کاربر نویسنده" 
                                        SortExpression="nuser" >
                                    <ItemStyle Width="70px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ndate" HeaderText="تاریخ" SortExpression="ndate" >
                                    <ItemStyle Width="70px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ntitle" HeaderText="عنوان" SortExpression="ntitle" >
                                    <ItemStyle Width="200px" />
                                    </asp:BoundField>
                                    <asp:CommandField DeleteText="حذف" ShowDeleteButton="True" />
                                    <asp:CommandField EditText="" SelectText="ویرایش" ShowSelectButton="True" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                
                                SelectCommand="SELECT * FROM [News] ORDER BY [nid] DESC" 
                                ProviderName="<%$ ConnectionStrings:DBConn.ProviderName %>">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

