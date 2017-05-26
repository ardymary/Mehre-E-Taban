<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="Administration_ManageUsers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" cellspacing="1" class="style54">
        <tr>
            <td style="z-index: 1">
                <br />
    <table align="center" cellspacing="1" class="style54">
        <tr>
            <td>
    <table align="center" cellspacing="1">
        <tr>
            <td align="center" style="z-index: 1; font-family: Tahoma;">
    <p align="center" dir="rtl">
        <table align="center" cellspacing="1" class="style54">
            <tr>
                <td>
    <p align="center">
        <asp:Repeater ID="FilteringUI" runat="server" 
            onitemcommand="FilteringUI_ItemCommand">
            <ItemTemplate>
                <asp:LinkButton runat="server" ID="lnkFilter" 
                                Text='<%# Container.DataItem %>' 
                                CommandName='<%# Container.DataItem %>'></asp:LinkButton>
            </ItemTemplate>
            
            <SeparatorTemplate>|</SeparatorTemplate>
        </asp:Repeater>
    </p>
    <h2 align="center">
        مدیریت کاربران</h2>
        <asp:GridView ID="UserAccounts" runat="server"
            AutoGenerateColumns="False" HorizontalAlign="Center" 
            style="font-family: Tahoma; font-size: 10pt" Width="599px">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="UserName" 
                    DataNavigateUrlFormatString="UserInformation.aspx?user={0}" 
                    Text="مدیریت " >
                    <ControlStyle Font-Names="B Homa" Font-Size="11pt" ForeColor="#66CCFF" />
                    <ItemStyle ForeColor="#FF6600" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                </asp:HyperLinkField>
                <asp:BoundField DataField="UserName" HeaderText="نام کاربری" />
                <asp:BoundField DataField="Email" HeaderText="پست الکترونیکی" />
                <asp:CheckBoxField DataField="IsApproved" HeaderText="تایید شده؟" />
                <asp:CheckBoxField DataField="IsLockedOut" HeaderText="قفل شده؟" />
                <asp:CheckBoxField DataField="IsOnline" HeaderText="آنلاین؟" />
                <asp:BoundField DataField="Comment" HeaderText="توضیحات" />
            </Columns>
        </asp:GridView>
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="lnkLast" runat="server" onclick="lnkLast_Click">آخرین</asp:LinkButton>
        |
        <asp:LinkButton ID="lnkNext" runat="server" onclick="lnkNext_Click">بعدی </asp:LinkButton> |<asp:LinkButton ID="lnkPrev" runat="server" onclick="lnkPrev_Click">قبلی</asp:LinkButton> &nbsp;|
        <asp:LinkButton ID="lnkFirst" runat="server" onclick="lnkFirst_Click">اولین</asp:LinkButton> 
    </p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DBConn %>" 
    DeleteCommand="DELETE FROM [aspnet_Membership] WHERE [UserId] = @UserId" 
    InsertCommand="INSERT INTO [aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (@ApplicationId, @UserId, @Password, @PasswordFormat, @PasswordSalt, @MobilePIN, @Email, @LoweredEmail, @PasswordQuestion, @PasswordAnswer, @IsApproved, @IsLockedOut, @CreateDate, @LastLoginDate, @LastPasswordChangedDate, @LastLockoutDate, @FailedPasswordAttemptCount, @FailedPasswordAttemptWindowStart, @FailedPasswordAnswerAttemptCount, @FailedPasswordAnswerAttemptWindowStart, @Comment)" 
    ProviderName="<%$ ConnectionStrings:ASPNETDBConnectionString1.ProviderName %>" 
    SelectCommand="SELECT aspnet_Membership.Password, aspnet_Membership.PasswordSalt, aspnet_Membership.IsApproved, aspnet_Membership.IsLockedOut, aspnet_Membership.CreateDate, aspnet_Membership.LastLoginDate, aspnet_Membership.LastPasswordChangedDate, aspnet_Membership.LastLockoutDate, aspnet_Membership.FailedPasswordAttemptCount, aspnet_Users.UserName, aspnet_Membership.UserId FROM aspnet_Membership INNER JOIN aspnet_Users ON aspnet_Membership.UserId = aspnet_Users.UserId" 
    
        UpdateCommand="UPDATE [aspnet_Membership] SET [ApplicationId] = @ApplicationId, [Password] = @Password, [PasswordFormat] = @PasswordFormat, [PasswordSalt] = @PasswordSalt, [MobilePIN] = @MobilePIN, [Email] = @Email, [LoweredEmail] = @LoweredEmail, [PasswordQuestion] = @PasswordQuestion, [PasswordAnswer] = @PasswordAnswer, [IsApproved] = @IsApproved, [IsLockedOut] = @IsLockedOut, [CreateDate] = @CreateDate, [LastLoginDate] = @LastLoginDate, [LastPasswordChangedDate] = @LastPasswordChangedDate, [LastLockoutDate] = @LastLockoutDate, [FailedPasswordAttemptCount] = @FailedPasswordAttemptCount, [FailedPasswordAttemptWindowStart] = @FailedPasswordAttemptWindowStart, [FailedPasswordAnswerAttemptCount] = @FailedPasswordAnswerAttemptCount, [FailedPasswordAnswerAttemptWindowStart] = @FailedPasswordAnswerAttemptWindowStart, [Comment] = @Comment WHERE [UserId] = @UserId">
    <DeleteParameters>
        <asp:ControlParameter ControlID="GridView1" Name="UserId" 
            PropertyName="SelectedValue" Type="Object" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ApplicationId" Type="Object" />
        <asp:Parameter Name="UserId" Type="Object" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="PasswordFormat" Type="Int32" />
        <asp:Parameter Name="PasswordSalt" Type="String" />
        <asp:Parameter Name="MobilePIN" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="LoweredEmail" Type="String" />
        <asp:Parameter Name="PasswordQuestion" Type="String" />
        <asp:Parameter Name="PasswordAnswer" Type="String" />
        <asp:Parameter Name="IsApproved" Type="Boolean" />
        <asp:Parameter Name="IsLockedOut" Type="Boolean" />
        <asp:Parameter Name="CreateDate" Type="DateTime" />
        <asp:Parameter Name="LastLoginDate" Type="DateTime" />
        <asp:Parameter Name="LastPasswordChangedDate" Type="DateTime" />
        <asp:Parameter Name="LastLockoutDate" Type="DateTime" />
        <asp:Parameter Name="FailedPasswordAttemptCount" Type="Int32" />
        <asp:Parameter Name="FailedPasswordAttemptWindowStart" Type="DateTime" />
        <asp:Parameter Name="FailedPasswordAnswerAttemptCount" Type="Int32" />
        <asp:Parameter Name="FailedPasswordAnswerAttemptWindowStart" Type="DateTime" />
        <asp:Parameter Name="Comment" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ApplicationId" Type="Object" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="PasswordFormat" Type="Int32" />
        <asp:Parameter Name="PasswordSalt" Type="String" />
        <asp:Parameter Name="MobilePIN" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="LoweredEmail" Type="String" />
        <asp:Parameter Name="PasswordQuestion" Type="String" />
        <asp:Parameter Name="PasswordAnswer" Type="String" />
        <asp:Parameter Name="IsApproved" Type="Boolean" />
        <asp:Parameter Name="IsLockedOut" Type="Boolean" />
        <asp:Parameter Name="CreateDate" Type="DateTime" />
        <asp:Parameter Name="LastLoginDate" Type="DateTime" />
        <asp:Parameter Name="LastPasswordChangedDate" Type="DateTime" />
        <asp:Parameter Name="LastLockoutDate" Type="DateTime" />
        <asp:Parameter Name="FailedPasswordAttemptCount" Type="Int32" />
        <asp:Parameter Name="FailedPasswordAttemptWindowStart" Type="DateTime" />
        <asp:Parameter Name="FailedPasswordAnswerAttemptCount" Type="Int32" />
        <asp:Parameter Name="FailedPasswordAnswerAttemptWindowStart" Type="DateTime" />
        <asp:Parameter Name="Comment" Type="String" />
        <asp:Parameter Name="UserId" Type="Object" />
    </UpdateParameters>
</asp:SqlDataSource>
                <hr />
                <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="UserId" DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display." AllowPaging="True" 
                    AllowSorting="True" PageSize="20" Font-Names="Tahoma" Font-Size="10pt" 
                    ForeColor="White" style="z-index: 1; font-size: 12pt;" Width="918px">
        <AlternatingRowStyle BackColor="#0099CC" />
    <Columns>
        <asp:BoundField DataField="UserName" HeaderText="نام کاربری" 
            SortExpression="UserName" />
        <asp:BoundField DataField="Password" HeaderText="کلمه عبور" 
            SortExpression="Password" />
        <asp:CheckBoxField DataField="IsApproved" HeaderText="تایید شده" 
            SortExpression="IsApproved" />
        <asp:CheckBoxField DataField="IsLockedOut" HeaderText="وضعیت قفل" 
            SortExpression="IsLockedOut" />
        <asp:BoundField DataField="FailedPasswordAttemptCount" 
            HeaderText="تعداد تلاشهای ناموفق" 
            SortExpression="FailedPasswordAttemptCount" />
        <asp:BoundField DataField="CreateDate" HeaderText="تاریخ ساخت حساب" 
            SortExpression="CreateDate" />
        <asp:BoundField DataField="LastLoginDate" HeaderText="تاریخ آخرین ورود" 
            SortExpression="LastLoginDate" />
        <asp:BoundField DataField="LastPasswordChangedDate" HeaderText="تاریخ آخرین تغییر کلمع عبور" 
            SortExpression="LastPasswordChangedDate" />
        <asp:CommandField DeleteText="حذف کاربر" ShowDeleteButton="True" >
        <HeaderStyle BackColor="#FF9900" />
        <ItemStyle BackColor="#0066FF" />
        </asp:CommandField>
    </Columns>
        <HeaderStyle BackColor="#336699" Font-Names="Tahoma" Font-Size="12pt" 
            ForeColor="#FFCC66" Height="28px" Font-Overline="False" 
            Font-Underline="False" />
</asp:GridView>
                <br />
            </td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .style54
        {
            width: 100%;
            height: 100%;
        }
    </style>
</asp:Content>

