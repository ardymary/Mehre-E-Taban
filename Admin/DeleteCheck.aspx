<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="DeleteCheck.aspx.cs" Inherits="User_DeleteCheck" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
 <script type="text/javascript">

     function ConfirmOnDelete(item) {
         if (confirm("توجه - با حذف خدمات تمامی چک های مربوطه حذف می گردد. " + item + " حذف گردد  " + " ?") == true)
             return true;
         else
             return false;
     }


    
    </script>
    <style type="text/css">
    .style53
    {
        width: 100%;
    }
        .auto-style22 {
            width: 1060px;
        }
        .style646
        {
            height: 7px;
            font-family: Tahoma;
        }
        .style470
        {
            color: #FFFFFF;
        }
        .style626
        {
            height: 28px;
            width: 141px;
        }
        .style17
        {
            font-size: 9pt;
        }
            

        .style355
        {
            height: 35px;
        }
        .style535
        {
            width: 128px;
        }
        .style624
        {
            width: 141px;
        }
        .style625
        {
            width: 102px;
        }
        .auto-style21 {
            width: 552px;
        }
        .style569
        {
            font-size: 9pt;
            color: #FFFFFF;
        }
        .style647
        {
            height: 7px;
            font-family: Tahoma;
            color: #FFFFFF;
            width: 128px;
        }
        .style16
        {}
        .style18
        {
            font-family: Tahoma;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
  
   
    <table class="style53">
    <tr>
        <td>
            <table align="center" bgcolor="#3366CC" cellpadding="0" cellspacing="0" 
                class="auto-style22" 
                
                
                style="border-collapse: collapse; border-spacing: 0px; height: 79px; font-family: Tahoma; font-size: 10pt;">
                <tr>
                    <td class="style647" valign="middle" align="left">
                        سال&nbsp; تحصیلی : 
                    </td>
                    <td class="style626" valign="middle" align="right">
                        <asp:DropDownList runat="server" AppendDataBoundItems="True" 
                            AutoPostBack="True" DataTextField="year" DataValueField="year" 
                            DataSourceID="SqlDataSource8" CssClass="style18" Height="22px" Width="119px" 
                            ID="DropDownList16" 
                            OnSelectedIndexChanged="DropDownList16_SelectedIndexChanged">
                            <asp:ListItem>انتخاب کنید</asp:ListItem>
                        </asp:DropDownList>
                        <span class="style17">
                        <asp:RequiredFieldValidator runat="server" InitialValue="انتخاب کنید" ForeColor="White" ControlToValidate="DropDownList16" ErrorMessage="*" ValidationGroup="ff" ID="RequiredFieldValidator45"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td align="center" class="style646" colspan="2" valign="middle">
                        &nbsp;&nbsp;
                    </td>
                    <td align="center" class="style355" rowspan="2" valign="middle">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style535" valign="middle" align="left">
                        <span class="style470">&nbsp;کد ملی دانش آموز :</span>&nbsp;</td>
                    <td align="right" class="style624" valign="middle">
                        <asp:TextBox runat="server" CssClass="style16" Enabled="False" Height="21px" 
                            Width="117px" ID="txtcode3"></asp:TextBox>
                        <asp:MaskedEditExtender ID="txtcode3_MaskedEditExtender" runat="server" 
                            AutoComplete="False" InputDirection="RightToLeft" Mask="999-999-999-9" 
                            MaskType="Number" TargetControlID="txtcode3">
                        </asp:MaskedEditExtender>
                        <span class="style17">
                        <asp:RequiredFieldValidator runat="server" ForeColor="White" ControlToValidate="txtcode3" ErrorMessage="*" ValidationGroup="ff" ID="RequiredFieldValidator44"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td align="right" class="style625" valign="middle">
                        <asp:Button runat="server" Text="جستجو" ValidationGroup="ff" CssClass="style39" 
                            Height="24px" Width="85px" ID="btnSearchMali" 
                            OnClick="btnSearchMali_Click">
                        </asp:Button>
                    </td>
                    <td class="auto-style21" valign="middle" align="right">
                        <span class="style569">&nbsp;</span><span class="style470">نام و نام خانوادگی :</span>&nbsp;
                        <span class="style470"><span class="style17"><strong>
                        <asp:Label runat="server" CssClass="style570" ID="lblMessage0" style="color: #FFFF66"></asp:Label>
                        </strong></span></span>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <span class="style17" dir="rtl"><span class="style17">
            <br />
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderStyle="Groove" BorderWidth="2px" 
                CellPadding="3" DataSourceID="check" 
                AllowSorting="True" Caption="چک های ثبت شده" DataKeyNames="id_check" 
                Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Center" 
                Width="1050px" EmptyDataText="چکی به نام این دانش آموز ثبت نشده است" 
                AllowPaging="True" PageSize="5" onrowdatabound="GridView6_RowDataBound">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:BoundField DataField="namebank" HeaderText="نام بانک" 
                        SortExpression="namebank" />
                    <asp:BoundField DataField="Branch" HeaderText="نام شعبه" 
                        SortExpression="Branch" />
                    <asp:BoundField DataField="ASseryal" HeaderText="سریال چک" 
                        SortExpression="ASseryal" >
                    <HeaderStyle BackColor="#FF9900" />
                    </asp:BoundField>
                    <asp:BoundField DataField="datecheck" HeaderText="تاریخ چک" 
                        SortExpression="datecheck" />
                    <asp:BoundField DataField="accountnumber" HeaderText="شماره حساب" 
                        SortExpression="accountnumber" />
                    <asp:BoundField DataField="ASaccountname" HeaderText="صاحب حساب" 
                        SortExpression="ASaccountname" />
                    <asp:BoundField DataField="Amount" HeaderText="مبلغ چک" 
                        SortExpression="Amount" />
                    <asp:BoundField DataField="status" HeaderText="وضعیت چک" 
                        SortExpression="status" />
                    <asp:BoundField DataField="datedaryaft" HeaderText="تاریخ دریافت" 
                        SortExpression="datedaryaft" >
                    <ControlStyle BackColor="#FFCC00" />
                    <HeaderStyle BackColor="#FF9900" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="usernameadd" HeaderText="ثبت کننده" 
                        SortExpression="usernameadd" />
                    <asp:BoundField DataField="usernamedel" HeaderText="حذف کننده" 
                        SortExpression="usernamedel" />
                    <asp:CommandField DeleteText="حذف چک" ShowDeleteButton="True">
                    <ItemStyle Font-Names="Tahoma" ForeColor="#FF6600" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#FF6600" Font-Bold="True" ForeColor="Black" 
                    Font-Names="Tahoma" Font-Size="10pt" Height="28px" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            </span></span>
            <br />
        </td>
    </tr>
    <tr>
        <td style="color: #006699; background-color: #006699" align="center" 
            valign="middle">
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <br />
            <span class="style17" __designer:mapid="6e2">
            <asp:GridView runat="server" AllowPaging="True" AutoGenerateColumns="False" 
                Caption="حواله  های ثبت شده" CaptionAlign="Top" CellPadding="1" CellSpacing="1" 
                DataKeyNames="id_havale" 
                EmptyDataText="حواله ای به نام این دانش آموز ثبت نشده است" 
                HorizontalAlign="Center" PageSize="5" 
                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="2px" 
                BorderStyle="Groove" Font-Size="10pt" 
                Width="1049px" ID="GridViewhavaleh" 
                style="font-family: Tahoma" DataSourceID="SqlDataSource9" AllowSorting="True" 
                Font-Names="Tahoma" onrowdatabound="GridViewhavaleh_RowDataBound">
                <AlternatingRowStyle BackColor="PaleGoldenrod"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="namebank" HeaderText="نام بانک" 
                        SortExpression="namebank"></asp:BoundField>
                    <asp:BoundField DataField="Branch" HeaderText="شعبه" SortExpression="Branch"></asp:BoundField>
                    <asp:BoundField DataField="accountnumber" HeaderText="شماره فیش" 
                        SortExpression="accountnumber">
                    </asp:BoundField>
                    <asp:BoundField DataField="datehavale" HeaderText="تاریخ حواله" 
                        SortExpression="datehavale">
                    </asp:BoundField>
                    <asp:BoundField DataField="Amount" HeaderText="مبلغ حواله" 
                        SortExpression="Amount" />
                    <asp:BoundField DataField="payer" HeaderText="پرداخت کننده" 
                        SortExpression="payer" />
                    <asp:BoundField DataField="datedaryaft" HeaderText="تاریخ دریافت" 
                        SortExpression="datedaryaft">
                    <HeaderStyle BackColor="#FF9900" />
                    </asp:BoundField>
                    <asp:BoundField DataField="usernameadd" HeaderText="ثبت کننده" 
                        SortExpression="usernameadd" />
                    <asp:BoundField DataField="usernamedel" HeaderText="حذف کننده" 
                        SortExpression="usernamedel" />
                    <asp:CommandField DeleteText="جذف حواله" ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True">
                </EditRowStyle>
                <FooterStyle BackColor="Tan"></FooterStyle>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" 
                    BackColor="#FF6600" Font-Bold="True" Height="25px" ForeColor="Black">
                </HeaderStyle>
                <PagerSettings PageButtonCount="5">
                </PagerSettings>
                <PagerStyle HorizontalAlign="Center" BackColor="#336699" ForeColor="#CCCCCC">
                </PagerStyle>
                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="Black"></RowStyle>
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite">
                </SelectedRowStyle>
                <SortedAscendingCellStyle BackColor="#FAFAE7">
                </SortedAscendingCellStyle>
                <SortedAscendingHeaderStyle BackColor="#DAC09E">
                </SortedAscendingHeaderStyle>
                <SortedDescendingCellStyle BackColor="#E1DB9C">
                </SortedDescendingCellStyle>
                <SortedDescendingHeaderStyle BackColor="#C2A47B">
                </SortedDescendingHeaderStyle>
            </asp:GridView>
            </span>
        </td>
    </tr>
    <tr>
        <td style="background-color: #006699">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <span class="style17">
            <span class="style17" dir="rtl">
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                DeleteCommand="DELETE FROM Students_Havale WHERE (id_havale = @id_havale)" 
                
                
                SelectCommand="SELECT Students_Havale.accountnumber, Students_Havale.datehavale, Students_Havale.datedaryaft, Students_Havale.namebank, Students_Havale.Branch, Students_Havale.Amount, Students_Havale.usernameadd, Students_Havale.usernamedel, Students_Havale.id_havale, Students_Havale.payer FROM Students_Havale LEFT OUTER JOIN Students_Financial ON Students_Havale.id_Financial = Students_Financial.id_Financial LEFT OUTER JOIN Students_Amount ON Students_Financial.id_amount = Students_Amount.id_amount WHERE (Students_Financial.internationalcode = @internationalcode) AND (Students_Amount.year = @year) GROUP BY Students_Havale.accountnumber, Students_Havale.datehavale, Students_Havale.datedaryaft, Students_Havale.namebank, Students_Havale.Branch, Students_Havale.Amount, Students_Havale.usernameadd, Students_Havale.usernamedel, Students_Havale.id_havale, Students_Havale.payer">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridViewhavaleh" Name="id_havale" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtcode3" Name="internationalcode" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList16" Name="year" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="check" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                
                SelectCommand="SELECT Students_Check.datecheck, Students_Check.seryal AS ASseryal, Students_Check.namebank, Students_Check.accountnumber, Students_Check.accountname AS ASaccountname, Students_Check.status, Students_Check.Amount, Students_Check.Branch, Students_Check.datedaryaft, Students_Check.usernameadd, Students_Check.id_Financial, Students_Check.usernamedel, Students_Check.id_check FROM Students_Check LEFT OUTER JOIN Students_Financial ON Students_Check.id_Financial = Students_Financial.id_Financial LEFT OUTER JOIN Students_Amount ON Students_Financial.id_amount = Students_Amount.id_amount WHERE (Students_Financial.internationalcode = @internationalcode) AND (Students_Amount.year = @year) GROUP BY Students_Check.datecheck, Students_Check.seryal, Students_Check.namebank, Students_Check.accountnumber, Students_Check.accountname, Students_Check.status, Students_Check.Amount, Students_Check.Branch, Students_Check.datedaryaft, Students_Check.usernameadd, Students_Check.id_Financial, Students_Check.usernamedel, Students_Check.id_check" 
                DeleteCommand="DELETE FROM Students_Check WHERE (id_check = @id_check)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView6" DefaultValue="" Name="id_check" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtcode3" 
                        Name="internationalcode" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList16" Name="year" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            </span>
            <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:DBConn %>" SelectCommand="SELECT * FROM [School_Years]" ID="SqlDataSource8">
            </asp:SqlDataSource>
            </span>
        </td>
    </tr>
</table>
</asp:Content>

