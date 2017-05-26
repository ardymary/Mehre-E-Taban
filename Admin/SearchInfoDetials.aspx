<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="SearchInfoDetials.aspx.cs" Inherits="User_SearchInfo" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>




<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=8.1.14.804, Culture=neutral, PublicKeyToken=a9d7983dfcc261be" Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script type="text/javascript">

     
        function ConfirmOnDelete(item) {
            if (confirm("توجه - با حذف خدمات تمامی چک ها و حواله های  مربوطه حذف می گردد. " + item + " حذف گردد  " + " ?") == true)
                return true;
            else
                return false;
        }


        function deleteparent(money) {
            if (confirm("توجه - اطلاعات ولی دانش ۀموز حذف گردد . " +  " ?") == true)
                return true;
            else
                return false;
        }

        function ConfirmOnDeletetakhfif(money) {
            if (confirm("توجه - از حذف تخفیف مطمئن هستید . " + " ?") == true)
                return true;
            else
                return false;
        }

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

        
        .auto-style49 {
            width: 100%;
            height: 43px;
            background-color: #990000;
        }
                                            

        .auto-style28 {
            width: 1002px;
            font-size: 10pt;
            height: 59px;
        }
        .auto-style40 {
            height: 31px;
        }
        .auto-style39 {
            height: 31px;
            width: 103px;
            color: #000000;
            background-color: #CCCC00;
        }
        .auto-style38 {
            width: 103px;
            color: #000000;
            background-color: #CCCC00;
        }
                                            

        .style697
        {
            width: 100%;
            height: 100%;
        }
        .style437
        {
            font-size: 11pt;
            height: 31px;
        }
        .style409
        {
            font-family: Tahoma;
            font-size: 9pt;
        }
                    

        .style639
        {
            height: 144px;
        }
                            

        .style386
        {
            width: 66px;
            height: 81px;
        }
                            

        .style175
    {
        height: 32px;
        font-size: 10pt;
            color: #FFFFFF;
        }
        .style309
        {
            width: 394px;
            height: 30px;
        }
        .style310
        {
            width: 112px;
            height: 30px;
        }
        .style311
        {
            width: 9px;
            height: 30px;
        }
        .style328
        {
            width: 836px;
            height: 30px;
            color: #000000;
        }
        .style212
        {
            height: 35px;
            color: #FFFFFF;
            font-size: 10pt;
            background-color: #CCCCCC;
        }
        .style333
        {
            height: 30px;
            text-align: center;
            width: 9px;
        }
        .style632
        {
            width: 632px;
            height: 30px;
        }
                            

        .style400
        {
            height: 30px;
            width: 73px;
        }
        .style650
        {
            height: 35px;
            color: #FFFFFF;
            font-size: 10pt;
        }
                                    

        .style321
        {
            width: 343px;
            height: 30px;
        }
        .style315
        {
            width: 149px;
            height: 30px;
        }
        .style316
        {
            width: 16px;
            height: 30px;
        }
        .style340
        {
            width: 394px;
            height: 34px;
        }
        .style341
        {
            width: 112px;
            height: 34px;
        }
        .style342
        {
            width: 9px;
            height: 34px;
        }
        .style343
        {
            width: 836px;
            height: 34px;
        }
        .style350
        {
            height: 37px;
        }
        .style344
        {
            height: 34px;
            text-align: center;
            width: 9px;
        }
        .style345
        {
            width: 632px;
            height: 34px;
        }
        .style401
        {
            height: 34px;
            width: 73px;
        }
        .style347
        {
            width: 343px;
            height: 34px;
        }
        .style348
        {
            width: 149px;
            height: 34px;
        }
        .style349
        {
            width: 16px;
            height: 34px;
        }
        .style351
        {
            width: 394px;
            height: 40px;
        }
        .style352
        {
            width: 112px;
            height: 40px;
        }
        .style353
        {
            width: 9px;
            height: 40px;
        }
        .style354
        {
            width: 836px;
            height: 40px;
        }
        .style355
        {
            height: 33px;
            color: #FFFFCC;
            background-color: #CCCCCC;
        }
        .style356
        {
            text-align: center;
            height: 40px;
            width: 9px;
        }
        .style357
        {
            width: 632px;
            height: 40px;
        }
        .style130
    {
        width: 73px;
        height: 40px;
    }
        .style359
        {
            width: 343px;
            height: 40px;
        }
        .style360
        {
            width: 149px;
            height: 40px;
        }
        .style361
        {
            width: 16px;
            height: 40px;
        }
        .style654
        {
            width: 394px;
        }
                            

        .style331
        {
            width: 11px;
        }
        .style299
        {
            height: 26px;
            width: 9px;
        }
        .style335
        {
            width: 836px;
        }
        .style133
    {
        height: 26px;
            width: 259px;
        }
        .style303
        {
            height: 26px;
            text-align: center;
            width: 9px;
        }
        .style336
        {
            width: 632px;
        }
        .style402
        {
            width: 73px;
        }
        .style374
        {
            width: 343px;
        }
        .style308
        {
            width: 16px;
        }
        .style376
        {
            height: 6px;
        }
        .style339
        {
            height: 29px;
        font-size: 10pt;
    }
        .style653
        {
            width: 394px;
            height: 27px;
        }
        .style363
        {
            width: 112px;
            height: 27px;
        }
        .style364
        {
            width: 9px;
            height: 27px;
        }
        .style406
        {
            width: 836px;
            height: 27px;
        }
        .style379
        {
            height: 18px;
        }
        .style395
        {
            text-align: center;
            height: 27px;
            width: 9px;
        }
                                            

        .style651
        {
            width: 632px;
            height: 27px;
        }
        .style403
        {
            height: 27px;
            width: 73px;
        }
        .style652
        {
            width: 343px;
            height: 27px;
        }
        .style405
        {
            width: 149px;
            height: 27px;
        }
        .style370
        {
            width: 16px;
            height: 27px;
        }
        .style387
    {
        width: 394px;
        height: 71px;
    }
        .style407
        {
            height: 71px;
        }
        .style388
    {
        width: 632px;
        height: 71px;
    }
        .style408
        {
            height: 40px;
        }
        .style375
        {
            height: 29px;
        }
                                                    

        .style698
        {
            background-color: #990000;
        }
                                                    

        .style699
        {
            width: 129px;
        }
        .style700
        {
            color: #CCCCCC;
        }
        .style701
        {
            background-color: #990000;
            color: #CCCCCC;
        }
                                                    

        .style702
        {
            width: 97px;
        }
                                                    

        .style703
        {
            height: 25px;
        }
                                                    

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" cellspacing="1" class="style697">
        <tr>
            <td align="center" valign="middle">
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
        Height="703px" Width="1074px" ForeColor="Black" 
        style="font-family: Tahoma; font-size: 10pt; direction: ltr;">
        <asp:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
            <HeaderTemplate>
مشخصات دانش آموز 
</HeaderTemplate>
            <ContentTemplate>
                <br />
                <table align="center" border="0" class="style409" dir="rtl" frame="void" 
                    style="border-width: 0px; color: #000000; ">
                    <tr>
                        <td align="center" bgcolor="#CCCCFF" colspan="12" valign="middle" 
                            class="style639">
                            
                            <div align="center">
                                <img ID="imgDisplay" align="middle" alt="تصویر دانش آموز" 
                            class="style386" dir="rtl" 
                            src="<%=ResolveUrl(TextBox17.Text) %>" +; hspace="1" style="border: medium ridge #CCCCCC; background-color: #006699" vspace="1" name="imgbox" />
                                <br />
                                <asp:Image ID="imgLoader" runat="server" Height="24px" 
                                    ImageUrl="~/Mehr-Design/loader.gif" ImageAlign="Middle" />
                                <br />
                                <asp:AsyncFileUpload ID="AsyncFileUpload1" runat="server" 
                                    CompleteBackColor="#006600" FailedValidation="False" 
                                    OnClientUploadComplete="uploadComplete" OnClientUploadStarted="uploadStarted" 
                                    OnUploadedComplete="AsyncFileUpload1_UploadedComplete" 
                                    ThrobberID="imgLoader" >
                                </asp:AsyncFileUpload>
                            </div>

                            
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style175" colspan="12" 
                            style="border-bottom-style: groove; border-bottom-width: 3px; border-bottom-color: #CC0000; background-color: #336699; color: #FFFFFF;">
                            اطلاعات ضروری</td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CCCCCC" class="style309" colspan="0">
                            نام:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style310" colspan="0">
                            <asp:TextBox ID="txtName" runat="server" CssClass="style36" Height="20px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td bgcolor="#CCCCCC" class="style311" colspan="0">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="student"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style328" colspan="0">
                            نام خانوادگی:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style212" colspan="0">
                            <asp:TextBox ID="txtFamily" runat="server" CssClass="style36" 
                                Height="20px" Width="125px"></asp:TextBox>
                        </td>
                        <td bgcolor="#CCCCCC" class="style333" colspan="0">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txtFamily" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="student"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style632" colspan="0">
                            کد ملی:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style400" colspan="0" 
                            style="border-style: 0;">
                            <asp:TextBox ID="txtCode" runat="server" CssClass="style36" Height="20px" 
                                OnTextChanged="txtCode_TextChanged" Width="125px" ReadOnly="True"></asp:TextBox>
                            <asp:MaskedEditExtender ID="txtCode_MaskedEditExtender" runat="server" 
                                AutoComplete="False" ClearMaskOnLostFocus="False" CultureAMPMPlaceholder="" 
                                CultureCurrencySymbolPlaceholder="" CultureDateFormat="" 
                                CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                InputDirection="RightToLeft" Mask="999-999-999-9" MaskType="Number" 
                                TargetControlID="txtCode">
                            </asp:MaskedEditExtender>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style650" colspan="0">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                ControlToValidate="txtCode" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="student"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style321" colspan="0">
                            وضعیت قبولی:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style315" colspan="0">
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                CssClass="style39">
                                <asp:ListItem Value="0">انتخاب کنید ...</asp:ListItem>
                                <asp:ListItem Value="true">تایید شده</asp:ListItem>
                                <asp:ListItem Value="false">تایید نشده</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style316" colspan="0">
                            <asp:TextBox ID="TextBox17" runat="server" Height="16px" Visible="False" 
                                Width="16px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CCCCCC" class="style340" colspan="0">
                            شماره شناسنامه:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style341" colspan="0">
                            <asp:TextBox ID="txtIdnumber" runat="server" CssClass="style36" Height="22px" 
                                Width="110px"></asp:TextBox>
                        </td>
                        <td bgcolor="#CCCCCC" class="style342" colspan="0">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtIdnumber" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="student"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style343" colspan="0">
                            شماره سریال شناسنامه:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style350" colspan="0">
                            <asp:TextBox ID="txtSh" runat="server" CssClass="style36" Height="20px" 
                                Width="110px"></asp:TextBox>
                        </td>
                        <td bgcolor="#CCCCCC" class="style344" colspan="0">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style345" colspan="0">
                            عدد سری شناسنامه:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style401" colspan="0" 
                            style="border-style: 0;">
                            <asp:TextBox ID="txtAdad" runat="server" CssClass="style36" Height="20px" 
                                Width="110px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style350" colspan="0">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style347" colspan="0">
                            سال تولد:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style348" colspan="0">
                            <asp:TextBox ID="txtBirthday" runat="server" CssClass="style36" Height="20px" 
                                Width="110px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style349" colspan="0">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CCCCCC" class="style351" colspan="0">
                            حرف سری شناسنامه:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style352" colspan="0">
                            <asp:TextBox ID="txtHarf" runat="server" CssClass="style36" Height="20px" 
                                Width="110px"></asp:TextBox>
                        </td>
                        <td bgcolor="#CCCCCC" class="style353" colspan="0">
                            &nbsp;</td>
                        <td align="left" bgcolor="#CCCCCC" class="style354" colspan="0">
                            محل صدور:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style355" colspan="0">
                            <asp:TextBox ID="txtIssued" runat="server" CssClass="style36" Height="20px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td bgcolor="#CCCCCC" class="style356" colspan="0">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style357" colspan="0">
                            محل تولد:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style130" colspan="0" 
                            style="border-style: 0;">
                            <asp:TextBox ID="txtPlace" runat="server" CssClass="style36" Height="20px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style355" colspan="0">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style359" colspan="0">
                            تلفن همراه:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style360" colspan="0">
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="style36" Height="20px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style361" colspan="0">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CCCCCC" class="style654" colspan="0">
                            جنسیت :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style331" colspan="0">
                            <asp:DropDownList ID="DropDownList8" runat="server" CssClass="style115" 
                                Height="24px" style="font-family: Tahoma" Width="125px">
                                <asp:ListItem>انتخاب کنید ...</asp:ListItem>
                                <asp:ListItem Value="1">دختر</asp:ListItem>
                                <asp:ListItem Value="2">پسر</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td bgcolor="#CCCCCC" class="style299" colspan="0">
                            &nbsp;</td>
                        <td align="left" bgcolor="#CCCCCC" class="style335" colspan="0">
                            دین:
                        </td>
                        <td align="right" bgcolor="#CCCCCC" class="style133" colspan="0">
                            <asp:TextBox ID="txtReligion" runat="server" CssClass="style36" Height="20px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td bgcolor="#CCCCCC" class="style303" colspan="0">
                            &nbsp;</td>
                        <td align="left" bgcolor="#CCCCCC" class="style336" colspan="0">
                            تعداد برادر:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style402" colspan="0" 
                            style="border-style: 0;">
                            <asp:TextBox ID="txtBrother" runat="server" CssClass="style36" Height="20px" 
                                Width="84px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" colspan="0">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style374" colspan="0">
                            تعداد خواهر:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style371" colspan="0">
                            <asp:TextBox ID="txtSister" runat="server" CssClass="style36" Height="20px" 
                                Width="100px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style308" colspan="0">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="#CCCCFF" class="style376" colspan="12">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style339" colspan="12" rowspan="0" 
                            style="border-bottom-style: groove; border-bottom-width: 3px; border-bottom-color: #CC0000; background-color: #336699; color: #FFFFFF;">
                            اطلاعات تکمیلی</td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CFC9C0" class="style653" rowspan="0">
                            تلفن ضروری:</td>
                        <td align="right" bgcolor="#CFC9C0" class="style363" rowspan="0">
                            <asp:TextBox ID="txtEmergencytel" runat="server" CssClass="style36" 
                                Height="20px" Width="110px"></asp:TextBox>
                        </td>
                        <td bgcolor="#CFC9C0" class="style364" rowspan="0">
                        </td>
                        <td align="left" bgcolor="#CFC9C0" class="style406" rowspan="0">
                            تلفن منزل:</td>
                        <td bgcolor="#CFC9C0" class="style379" rowspan="0" align="right">
                            <asp:TextBox ID="txtHometel" runat="server" CssClass="style36" Height="20px" 
                                Width="110px"></asp:TextBox>
                        </td>
                        <td bgcolor="#CFC9C0" class="style395" rowspan="0">
                        </td>
                        <td align="left" bgcolor="#CFC9C0" class="style651" rowspan="0">
                            مذهب:
                        </td>
                        <td align="right" bgcolor="#CFC9C0" class="style403" rowspan="0">
                            <asp:TextBox ID="txtMazhab2" runat="server" CssClass="style36" Height="20px" 
                                style="margin-top: 0px" Width="115px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CFC9C0" class="style379" rowspan="0">
                        </td>
                        <td align="left" bgcolor="#CFC9C0" class="style652" rowspan="0">
                            تابعیت:</td>
                        <td align="right" bgcolor="#CFC9C0" class="style405" rowspan="0">
                            <asp:TextBox ID="txtAllegiance" runat="server" CssClass="style36" Height="20px" 
                                Width="107px"></asp:TextBox>
                        </td>
                        <td bgcolor="#CFC9C0" class="style370" rowspan="0">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CFC9C0" class="style653" rowspan="0">
                            پست الکترونیکی:</td>
                        <td align="right" bgcolor="#CFC9C0" class="style363" rowspan="0">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="style36" Height="21px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td bgcolor="#CFC9C0" class="style364" rowspan="0">
                        </td>
                        <td align="left" bgcolor="#CFC9C0" class="style406" rowspan="0">
                            ملیت:</td>
                        <td bgcolor="#CFC9C0" class="style379" rowspan="0" align="right">
                            <asp:TextBox ID="txtNationality" runat="server" CssClass="style36" 
                                Height="20px" Width="124px"></asp:TextBox>
                        </td>
                        <td bgcolor="#CFC9C0" class="style395" rowspan="0">
                        </td>
                        <td align="left" bgcolor="#CFC9C0" class="style651" rowspan="0">
                            سرپرستی با:</td>
                        <td align="right" bgcolor="#CFC9C0" class="style403" rowspan="0">
                            <asp:TextBox ID="txtSarparasti" runat="server" Height="16px" Width="83px"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                CssClass="style115" Height="25px" 
                                OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" 
                                style="font-family: Tahoma" Width="97px">
                                <asp:ListItem>انتخاب کنید ...</asp:ListItem>
                                <asp:ListItem>والدین</asp:ListItem>
                                <asp:ListItem Value="1">پدر</asp:ListItem>
                                <asp:ListItem Value="2">مادر</asp:ListItem>
                                <asp:ListItem Value="3">خانواده پدری</asp:ListItem>
                                <asp:ListItem Value="4">خانواده مادری</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="center" bgcolor="#CFC9C0" class="style379" rowspan="0">
                        </td>
                        <td align="left" bgcolor="#CFC9C0" class="style652" rowspan="0">
                            وضعیت:</td>
                        <td align="right" bgcolor="#CFC9C0" class="style405" rowspan="0">
                            <asp:DropDownList ID="DropDownList7" runat="server" Font-Names="Tahoma" 
                                Width="113px">
                                <asp:ListItem Value="0">انتخاب کنید ...</asp:ListItem>
                                <asp:ListItem Value="true">فعال</asp:ListItem>
                                <asp:ListItem Value="false">غیر فعال</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td bgcolor="#CFC9C0" class="style370" rowspan="0">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CFC9C0" class="style387" rowspan="0">
                            آدرس:</td>
                        <td align="right" bgcolor="#CFC9C0" class="style407" colspan="5" rowspan="0">
                            <asp:TextBox ID="txtAddress" runat="server" EnableTheming="True" Height="51px" 
                                TextMode="MultiLine" Width="305px"></asp:TextBox>
                        </td>
                        <td align="left" bgcolor="#CFC9C0" class="style388" rowspan="0">
                            توضیحات:</td>
                        <td align="right" bgcolor="#CFC9C0" class="style407" colspan="5" rowspan="0">
                            <asp:TextBox ID="txtDescription" runat="server" Height="51px" 
                                TextMode="MultiLine" Width="305px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="#CFC9C0" class="style408" colspan="12">
                            <asp:Button ID="btnEdit" runat="server" CssClass="style39" 
                                OnClick="btnEdit_Click" Text="ویرایش اطلاعات" style="height: 26px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style375" colspan="12" 
                            style="border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #999999" 
                            valign="middle">
                            &nbsp;</td>
                    </tr>
                </table>
            
</ContentTemplate>

</asp:TabPanel>
        <asp:TabPanel runat="server" HeaderText="TabPanel2" ID="TabPanel2">
            <HeaderTemplate>
                مشخصات والدین
            
</HeaderTemplate>
            

<ContentTemplate>
                <br />
                <table align="center" border="0" class="style1" dir="rtl" frame="void">
                    <tr>
                        <td align="center" colspan="12">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="12" bgcolor="#009999" dir="rtl">
                            <table align="center" cellpadding="0" cellspacing="0" class="style622">
                                <tr>
                                    <td class="style700" style="background-color: #990000">
                                        نام و نام خانوادگی دانش آموز : <strong>
                                        <asp:Label ID="lblname" runat="server" CssClass="style630"></asp:Label>
                                        <br />
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: #336699">
                                        <asp:GridView ID="gvParents" runat="server" AutoGenerateColumns="False" 
                                            CellPadding="4" DataKeyNames="id_parents" Font-Names="Tahoma" Font-Size="9pt" 
                                            ForeColor="#333333" GridLines="Horizontal" OnRowCommand="gvParents_RowCommand" 
                                            OnRowDeleting="gvParents_RowDeleting" Width="634px" 
                                            onrowdatabound="gvParents_RowDataBound">
                                            <AlternatingRowStyle BackColor="#D2EBF9" />
                                            <Columns>
                                                <asp:BoundField DataField="name" HeaderText="نام" />
                                                <asp:BoundField DataField="family" HeaderText="نام خانوادگی" />
                                                <asp:BoundField DataField="p_internationalcode" HeaderText="کد ملی" />
                                                <asp:BoundField DataField="mobile" HeaderText="تلفن همراه" />
                                                <asp:BoundField DataField="homephone" HeaderText="تلفن منزل" />
                                                <asp:CommandField SelectText="جزییات" ShowSelectButton="True" 
                                                    ButtonType="Button">
                                                <ControlStyle Font-Size="8pt" ForeColor="#FF3300" />
                                                <ItemStyle Font-Size="10pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:CommandField>
                                                <asp:CommandField DeleteText="حذف اطلاعات" ShowDeleteButton="True">
                                                <ControlStyle Font-Size="10pt" Font-Underline="False" ForeColor="#336600" />
                                                <ItemStyle Font-Size="10pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:CommandField>
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
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style642" colspan="12" dir="rtl" 
                            style="border-bottom-style: groove; border-bottom-width: 3px; border-bottom-color: #CC0000; background-color: #336699; color: #FFFFFF;">
                            اطلاعات ضروری</td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CCCCCC" class="style535" height="22">
                            نام:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style252" colspan="2" height="22">
                            <asp:TextBox ID="txtName1" runat="server" Height="22px" Width="131px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style68" colspan="2" height="22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                                ControlToValidate="txtName1" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="parent"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" bgcolor="#CCCCCC" height="22">
                            نام خانوادگی:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style70" colspan="2" height="22">
                            <asp:TextBox ID="txtFamily1" runat="server" CssClass="style36" Height="22px" 
                                Width="145px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style71" height="22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                                ControlToValidate="txtFamily1" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="parent"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style72" height="22">
                            کد ملی:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style73" height="22">
                            <asp:TextBox ID="txtCode1" runat="server" CssClass="style36" Height="22px" 
                                Width="125px"></asp:TextBox>
                            <asp:MaskedEditExtender ID="txtCode1_MaskedEditExtender" runat="server" 
                                AutoComplete="False" ClearMaskOnLostFocus="False" CultureAMPMPlaceholder="" 
                                CultureCurrencySymbolPlaceholder="" CultureDateFormat="" 
                                CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                InputDirection="RightToLeft" Mask="999-999-999-9" MaskType="Number" 
                                TargetControlID="txtCode1">
                            </asp:MaskedEditExtender>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style204" height="22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                                ControlToValidate="txtCode1" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="parent"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CCCCCC" class="style535" height="22">
                            شماره شناسنامه:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style252" colspan="2" height="22">
                            <asp:TextBox ID="txtIdnumber1" runat="server" CssClass="style36" Height="22px" 
                                Width="110px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style68" colspan="2" height="22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                                ControlToValidate="txtIdnumber1" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="parent"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" bgcolor="#CCCCCC" height="22">
                            شماره سریال شناسنامه :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style70" colspan="2" height="22">
                            <asp:TextBox ID="txtSh1" runat="server" CssClass="style36" Height="22px" 
                                Width="110px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style71" height="22">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style72" height="22">
                            عدد سری شناسنامه:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style73" height="22">
                            <asp:TextBox ID="txtAdad1" runat="server" CssClass="style36" Height="22px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style204" height="22">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CCCCCC" height="22">
                            حرف سری شناسنامه:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style457" colspan="2" height="22">
                            <asp:TextBox ID="txtHarf1" runat="server" CssClass="style36" Height="22px" 
                                Width="110px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style463" colspan="2" height="22">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style463" height="22">
                            محل صدور:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style463" colspan="2" height="22">
                            <asp:TextBox ID="txtIssued1" runat="server" CssClass="style36" Height="22px" 
                                Width="110px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style463" height="22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtIssued1" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="parent"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style463" height="22">
                            محل تولد:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style463" height="22">
                            <asp:TextBox ID="txtPlace1" runat="server" CssClass="style36" Height="22px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style463" height="22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                ControlToValidate="txtPlace1" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="parent"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CCCCCC" class="style644">
                            سال تولد :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style645" colspan="2">
                            <asp:TextBox ID="txtBirthday1" runat="server" CssClass="style36" Height="22px" 
                                Width="110px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style646" colspan="2">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style646">
                            نسبت :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style646">
                            <asp:TextBox ID="txtNesbat" runat="server" Height="22px" Width="106px"></asp:TextBox>
                        </td>
                        <td align="right" bgcolor="#CCCCCC" class="style646">
                            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                                CssClass="style36" Height="24px" 
                                OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" 
                                style="font-family: Tahoma; font-size: 9pt" Width="110px">
                                <asp:ListItem>انتخاب کنید ...</asp:ListItem>
                                <asp:ListItem Value="1">پدر</asp:ListItem>
                                <asp:ListItem Value="2">مادر</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style646">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                                ControlToValidate="txtNesbat" ErrorMessage="*" ForeColor="#CC0000" 
                                InitialValue="انتخاب کنید ..." ValidationGroup="parent"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style646">
                            دین :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style646">
                            <asp:TextBox ID="txtReligion1" runat="server" CssClass="style36" Height="22px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style646">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style647" colspan="12" 
                            
                            style="border-bottom-style: groove; border-bottom-width: 3px; border-bottom-color: #CC0000; background-color: #336699; color: #FFFFFF;">
                            اطلاعات تکمیلی</td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CCCCCC" height="22">
                            مذهب :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style252" colspan="2" height="22">
                            <asp:TextBox ID="txtMazhab1" runat="server" CssClass="style36" Height="22px" 
                                Width="145px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style85" colspan="2" height="22">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" height="22">
                            ملیت :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style87" colspan="2" height="22">
                            <asp:TextBox ID="txtNationality1" runat="server" CssClass="style36" 
                                Height="22px" Width="122px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style88" height="22">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style89" height="22">
                            تابعیت :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style90" height="22">
                            <asp:TextBox ID="txtAllegiance1" runat="server" Height="22px" Width="125px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style91" height="22">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CCCCCC" class="style535" height="22">
                            وضعیت :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style252" height="22">
                            <asp:TextBox ID="txtStatus" runat="server" Height="20px" Width="88px"></asp:TextBox>
                        </td>
                        <td align="right" bgcolor="#CCCCCC" class="style252" height="22">
                            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
                                CssClass="style36" Height="24px" 
                                OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged" 
                                style="font-family: Tahoma; font-size: 9pt" Width="110px">
                                <asp:ListItem>انتخاب کنید ...</asp:ListItem>
                                <asp:ListItem Value="1">در قید حیات</asp:ListItem>
                                <asp:ListItem Value="2">شهید</asp:ListItem>
                                <asp:ListItem Value="3">جانباز</asp:ListItem>
                                <asp:ListItem Value="4">متوفی</asp:ListItem>
                                <asp:ListItem Value="5">سایر</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style94" colspan="2" height="22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtStatus" ErrorMessage="*" ForeColor="#CC0000" 
                                InitialValue="انتخاب کنید ..." ValidationGroup="parent"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" bgcolor="#CCCCCC" height="22">
                            وضعیت تاهل :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style96" height="22">
                            <asp:TextBox ID="txtTaahol" runat="server" Height="23px" Width="86px"></asp:TextBox>
                        </td>
                        <td align="right" bgcolor="#CCCCCC" class="style96" height="22">
                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                                CssClass="style36" Height="24px" 
                                OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" 
                                style="font-size: 9pt; font-family: Tahoma" Width="110px">
                                <asp:ListItem>انتخاب کنید ...</asp:ListItem>
                                <asp:ListItem Value="1">مجرد</asp:ListItem>
                                <asp:ListItem Value="2">متاهل</asp:ListItem>
                                <asp:ListItem Value="3">مطلقه</asp:ListItem>
                                <asp:ListItem Value="5">متکفل</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style97" height="22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                ControlToValidate="txtTaahol" ErrorMessage="*" ForeColor="#CC0000" 
                                InitialValue="انتخاب کنید ..." ValidationGroup="parent"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style98" height="22">
                            تلفن منزل:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style99" height="22">
                            <asp:TextBox ID="txtHometel1" runat="server" CssClass="style36" Height="22px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style205" height="22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                                ControlToValidate="txtHometel1" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="parent"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CCCCCC" class="style535" height="22">
                            تلفن همراه:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style252" colspan="2" height="22">
                            <asp:TextBox ID="txtMobile1" runat="server" CssClass="style36" Height="22px" 
                                Width="145px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style94" colspan="2" height="22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                                ControlToValidate="txtMobile1" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="parent"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" bgcolor="#CCCCCC" height="22">
                            تلفن ضروری :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style96" colspan="2" height="22">
                            <asp:TextBox ID="txtEmergencytel1" runat="server" CssClass="style36" 
                                Height="22px" Width="110px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style97" height="22">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style98" height="22">
                            ایمیل :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style99" height="22">
                            <asp:TextBox ID="txtEmail1" runat="server" CssClass="style36" Height="22px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style205" height="22">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#CCCCCC" class="style535" height="22">
                            شغل :</td>
                        <td align="right" bgcolor="#CCCCCC" colspan="2" height="22">
                            <asp:TextBox ID="txtJob1" runat="server" CssClass="style36" Height="22px" 
                                Width="145px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style103" colspan="2" height="22">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" height="22">
                            مقطع تحصیلی:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style105" colspan="2" height="22">
                            <asp:TextBox ID="txtdegree1" runat="server" CssClass="style36" Height="22px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style106" height="22">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style107" height="22">
                            رشته تحصیلی :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style108" height="22">
                            <asp:TextBox ID="txtField1" runat="server" CssClass="style36" Height="22px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style109" height="22">
                        </td>
                    </tr>
                    <tr valign="top">
                        <td align="left" bgcolor="#CCCCCC" class="style535" height="22">
                            آدرس :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style123" colspan="3" height="22">
                            <asp:TextBox ID="txtAddress1" runat="server" Height="61px" TextMode="MultiLine" 
                                Width="194px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style123" height="22">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                                ControlToValidate="txtAddress1" ErrorMessage="*" ForeColor="#CC0000" 
                                ValidationGroup="parent"></asp:RequiredFieldValidator>
                        </td>
                        <td align="char" bgcolor="#CCCCCC" class="style123" height="22">
                            توضیحات:</td>
                        <td align="right" bgcolor="#CCCCCC" class="style183" colspan="2" height="22">
                            <asp:TextBox ID="txtDescription1" runat="server" CssClass="style36" 
                                Height="62px" TextMode="MultiLine" Width="195px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style188" height="22">
                        </td>
                        <td align="left" bgcolor="#CCCCCC" class="style189" height="22">
                            شماره پرسنلی :</td>
                        <td align="right" bgcolor="#CCCCCC" class="style190" height="22">
                            <asp:TextBox ID="txtStaff" runat="server" CssClass="style36" Height="22px" 
                                Width="125px"></asp:TextBox>
                        </td>
                        <td align="center" bgcolor="#CCCCCC" class="style187" height="22">
                        </td>
                    </tr>
                    <tr valign="top">
                        <td align="center" class="style536" colspan="12" 
                            style="border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #999999" 
                            valign="middle">
                            <asp:Button ID="txtInsertParents" runat="server" CssClass="style36" 
                                Height="24px" OnClick="txtInsertParents_Click" 
                                style="font-family: Tahoma; font-size: 9pt" Text="ثبت اطلاعات" 
                                ValidationGroup="parent" Width="142px" />
                        </td>
                    </tr>
                    <tr valign="top">
                        <td align="center" colspan="12">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style133" colspan="12" valign="middle">
                            &nbsp;</td>
                    </tr>
                </table>
            
</ContentTemplate>
        

</asp:TabPanel>
        <asp:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel4">
            <HeaderTemplate>
                خدمات آموزشی
            
</HeaderTemplate>
            

<ContentTemplate>
                <br />
                <br />
                <table align="center" border="0" cellpadding="0" dir="rtl" frame="box" 
                    style="display: block; table-layout: auto; border-collapse: collapse; width: 1024px; margin-left: 0px;">
                    <tr>
                        <td align="left" bgcolor="#993333" class="style657" valign="middle">
                            <table align="center" cellspacing="1" class="auto-style49" dir="rtl">
                                <tr>
                                    <td class="style699" valign="middle">
                                        <span class="style700">سال تحصیلی:</span>&nbsp; </td>
                                    <td align="right" class="style672" valign="middle">
                                        <asp:DropDownList ID="DropDownList18" runat="server" 
                                            AppendDataBoundItems="True" AutoPostBack="True" CssClass="style18" 
                                            DataSourceID="SqlDataSource6" DataTextField="year" DataValueField="id_years" 
                                            Height="22px" OnSelectedIndexChanged="DropDownList18_SelectedIndexChanged" 
                                            Width="100px">
                                            <asp:ListItem>انتخاب کنید</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" 
                                            ControlToValidate="DropDownList18" ErrorMessage="*" ForeColor="Red" 
                                            InitialValue="انتخاب کنید" ValidationGroup="s"></asp:RequiredFieldValidator>
                                    </td>
                                    <td align="center" class="style660" valign="middle">
                                        &nbsp;</td>
                                    <td align="right" class="style461" valign="middle">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style699" valign="middle">
                                        &nbsp;<span class="style700">کد ملی دانش آموز :&nbsp;</span></td>
                                    <td align="right" class="style672" valign="middle">
                                        <asp:TextBox ID="txtCodeA" runat="server" Height="20px" 
                                            ToolTip="کد ملی دانش آموز مورد نظر را وارد کنید" Width="122px"></asp:TextBox>
                                        <asp:MaskedEditExtender ID="txtCodeA_MaskedEditExtender" runat="server" 
                                            AutoComplete="False" ClearMaskOnLostFocus="False" CultureAMPMPlaceholder="" 
                                            CultureCurrencySymbolPlaceholder="" CultureDateFormat="" 
                                            CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                            CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                            InputDirection="RightToLeft" Mask="999-999-999-9" MaskType="Number" 
                                            TargetControlID="txtCodeA">
                                        </asp:MaskedEditExtender>
                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" 
                                            ControlToValidate="txtCodeA" ErrorMessage="*" ForeColor="Red" 
                                            ValidationGroup="s"></asp:RequiredFieldValidator>
                                    </td>
                                    <td align="center" class="style660" valign="middle">
                                        <asp:Button ID="Button1" runat="server" CssClass="style439" 
                                            OnClick="Button1_Click" style="font-family: Tahoma; font-size: 9pt" 
                                            Text="انتخاب دانش آموز" 
                                            ToolTip="جهت تخصیص خدمات آموزشی ابتدا کد ملی دانش آموز را وارد کرده سپس دکمه انتخاب دانش آموز را فشار دهید" 
                                            ValidationGroup="s" Width="120px" />
                                    </td>
                                    <td align="right" class="style461" valign="middle">
                                        <asp:Label ID="lblMessage" runat="server" CssClass="style574" 
                                            ForeColor="#FFCC99" style="color: #FFFF66" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#CCCCCC" dir="rtl">
                            <table align="center" cellpadding="0" cellspacing="0" dir="rtl" 
                                style="width: 1009px; height: 36px">
                                <tr>
                                    <td valign="middle">
                                        مقطع :</td>
                                    <td align="right" valign="middle">
                                        <asp:DropDownList ID="DropDownList13" runat="server" 
                                            AppendDataBoundItems="True" AutoPostBack="True" CausesValidation="True" 
                                            CssClass="style430" DataSourceID="SqlDataSource5" DataTextField="degree" 
                                            DataValueField="id_degree" Height="22px" 
                                            OnSelectedIndexChanged="DropDownList13_SelectedIndexChanged1" 
                                            style="font-family: Tahoma" Width="128px">
                                            <asp:ListItem Value="0">انتخاب کنید</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                                            ControlToValidate="DropDownList13" ErrorMessage="*" ForeColor="Red" 
                                            InitialValue="انتخاب کنید" ValidationGroup="max"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="style667" valign="middle">
                                        پایه :</td>
                                    <td align="right" valign="middle">
                                        <asp:DropDownList ID="DropDownList9" runat="server" AppendDataBoundItems="True" 
                                            CssClass="style430" DataSourceID="SqlDataSource4" DataTextField="grade" 
                                            DataValueField="id_grade" Height="19px" style="font-family: Tahoma" 
                                            Width="122px">
                                            <asp:ListItem>انتخاب کنید</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td valign="middle">
                                        جنسیت :</td>
                                    <td align="right" valign="middle">
                                        <asp:DropDownList ID="DropDownList10" runat="server" CssClass="style430" 
                                            Height="22px" OnSelectedIndexChanged="DropDownList10_SelectedIndexChanged" 
                                            style="font-family: Tahoma" Width="98px">
                                            <asp:ListItem>انتخاب کنید</asp:ListItem>
                                            <asp:ListItem Value="1">پسر</asp:ListItem>
                                            <asp:ListItem Value="2">دختر</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
                                            ControlToValidate="DropDownList10" ErrorMessage="*" ForeColor="Red" 
                                            InitialValue="انتخاب کنید" ValidationGroup="max"></asp:RequiredFieldValidator>
                                    </td>
                                    <td valign="middle">
                                        نوع درخواست :</td>
                                    <td align="right" valign="middle">
                                        <asp:DropDownList ID="DropDownList14" runat="server" 
                                            AppendDataBoundItems="True" AutoPostBack="True" CausesValidation="True" 
                                            CssClass="style39" DataSourceID="SqlDataSource3" DataTextField="type" 
                                            DataValueField="id_type" Height="22px" 
                                            OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" 
                                            ValidationGroup="max" Width="129px">
                                            <asp:ListItem Value="0">انتخاب کنید</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" 
                                            ControlToValidate="DropDownList14" ErrorMessage="*" ForeColor="Red" 
                                            InitialValue="انتخاب کنید" ValidationGroup="max"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="#CCCCCC" class="style438">
                            مبلغ خدمات فوق : <span class="style437">
                            <asp:Label ID="lblHazine" runat="server" ForeColor="#009933" Text="0"></asp:Label>
                            <strong>&nbsp;</strong>ریال</span></td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="#CCCCCC" class="style438">
                            <asp:Button ID="btnInsertHazine" runat="server" CssClass="style430" 
                                Enabled="False" Height="26px" OnClick="btnInsertHazine_Click" 
                                style="font-family: Tahoma; font-size: 9pt" Text="ثبت خدمات" 
                                ValidationGroup="max" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="#CCCCCC" class="style646">
                            <asp:Label ID="lblMablaghkol" runat="server" Text="0" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="#336699" class="style435" 
                            style="border-bottom-style: groove; border-bottom-width: 3px; border-bottom-color: #CC0000; background-color: #336699; color: #FFFFFF;">
                            <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" 
                                CssClass="style437" OnCheckedChanged="CheckBox3_CheckedChanged" 
                                Text="تخفیف دارد" />
                        </td>
                        <span class="style434"></span>
                    </tr>
                    <tr>
                        <td bgcolor="#CCCCCC">
                            <table align="center" cellpadding="0" cellspacing="0" class="style669" 
                                dir="rtl">
                                <tr>
                                    <td align="left" class="style461">
                                        طرح تخفیف :</td>
                                    <td align="right" class="style461">
                                        <asp:DropDownList ID="DropDownList12" runat="server" CssClass="style430" 
                                            Enabled="False" Height="22px" style="margin-right: 0px; font-family: Tahoma;" 
                                            Width="122px">
                                            <asp:ListItem>انتخاب کنید</asp:ListItem>
                                            <asp:ListItem Value="1">فرهنگی</asp:ListItem>
                                            <asp:ListItem Value="2">شاهد</asp:ListItem>
                                            <asp:ListItem Value="3">رافع</asp:ListItem>
                                            <asp:ListItem Value="4">موسس</asp:ListItem>
                                            <asp:ListItem>بستانکار</asp:ListItem>
                                            <asp:ListItem>حذف خدمات</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" 
                                            ControlToValidate="DropDownList12" ErrorMessage="*" ForeColor="Red" 
                                            InitialValue="انتخاب کنید" ValidationGroup="t"></asp:RequiredFieldValidator>
                                    </td>
                                    <td align="left" class="style461">
                                        مبلغ تخفیف :</td>
                                    <td align="right" class="style461">
                                        <asp:TextBox ID="txtTakhfif" runat="server" CssClass="style430" Enabled="False" 
                                            Height="22px" style="font-family: Tahoma">0</asp:TextBox>
                                        <asp:MaskedEditExtender ID="txtTakhfif_MaskedEditExtender" runat="server" 
                                            AutoCompleteValue=" " ClearTextOnInvalid="True" CultureAMPMPlaceholder="" 
                                            CultureCurrencySymbolPlaceholder="" CultureDateFormat="" 
                                            CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                            CultureThousandsPlaceholder="" CultureTimePlaceholder="" DisplayMoney="Right" 
                                            Enabled="True" InputDirection="RightToLeft" Mask="999,999,999" 
                                            MaskType="Number" TargetControlID="txtTakhfif" 
                                            ClipboardText="به دلایل امنیتی از  CTRL+V به جای کپی استفاده کنید.">
                                        </asp:MaskedEditExtender>
                                    </td>
                                    <td align="right" class="style461">
                                        <asp:Button ID="btnTakhfif" runat="server" CssClass="style430" Enabled="False" 
                                            OnClick="btnTakhfif_Click" style="font-family: Tahoma; font-size: 9pt" 
                                            Text="ثبت تخفیف" ValidationGroup="t" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style703">
                                        توضیحات :</td>
                                    <td align="right" class="style703" colspan="3">
                                        <asp:TextBox ID="TextBox21" runat="server" Width="274px"></asp:TextBox>
                                    </td>
                                    <td align="right" class="style703">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style379" colspan="5">
                                        <span class="style437"><span>
                                        <table align="center" class="style673" dir="rtl">
                                            <tr>
                                                <td align="center" class="style627">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="style627">
                                                    <span class="style437"><span>
                                                    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
                                                        CellPadding="4" DataKeyNames="id_discount" Font-Size="9pt" ForeColor="#333333" 
                                                        GridLines="None" OnRowCommand="GridView7_RowCommand" 
                                                        OnRowDeleting="GridView7_RowDeleting" Width="297px" 
                                                        onrowdatabound="GridView7_RowDataBound">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:BoundField DataField="type" HeaderText="طرح تخفیف" />
                                                            <asp:TemplateField HeaderText="مبلغ تخفیف">
                                                                <EditItemTemplate>
                                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("discount") %>'></asp:TextBox>
                                                                </EditItemTemplate>
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Label1" runat="server" 
                                                                        
                                                                        Text='<%# String.Format("{0:###,###,###}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "discount"))) %>'></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:CommandField DeleteText="حذف اطلاعات" ShowDeleteButton="True">
                                                            <ItemStyle Font-Size="8pt" />
                                                            </asp:CommandField>
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
                                                    </span></span>
                                                </td>
                                            </tr>
                                        </table>
                                        </span></span>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style426">
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style426">
                            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" DataKeyNames="id_financial" OnRowCommand="GridView6_RowCommand" 
                                OnRowDataBound="GridView6_RowDataBound" OnRowDeleting="GridView6_RowDeleting" 
                                PageSize="5" style="font-size: 10pt" Width="626px">
                                <Columns>
                                    <asp:BoundField DataField="year" HeaderText="سال تحصیلی" />
                                    <asp:BoundField DataField="degree" HeaderText="مقطع" />
                                    <asp:BoundField DataField="grade" HeaderText="پایه" />
                                    <asp:BoundField DataField="gender" HeaderText="جنسیت" />
                                    <asp:BoundField DataField="type" HeaderText="نوع درخواست" />
                                    <asp:TemplateField HeaderText="مبلغ پرداختی">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("amount") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label21" runat="server" 
                                                Text='<%# String.Format("{0:###,###,###}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "amount"))) %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField DeleteText="حذف اطلاعات" ShowDeleteButton="True">
                                    <ControlStyle Font-Size="8pt" ForeColor="#FF3300" />
                                    </asp:CommandField>
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style687">
                            <table align="center" cellspacing="1" class="style688" dir="rtl">
                                <tr>
                                    <td class="style689">
                                        <span class="style693">مبلغ تخفیف :</span></td>
                                    <td class="style690">
                                        <span class="style437"><span>
                                        <asp:Label ID="lblTakhfifs" runat="server" ForeColor="#009900" 
                                            style="color: #FF6666" Text="0"></asp:Label>
                                        &nbsp;<span class="style565"><span class="style685"><span class="style692">ریال</span></span></span></span></span></td>
                                    <td class="style674">
                                        &nbsp;</td>
                                    <td class="style691">
                                        <span class="style437"><span class="style692">مبلغ پرداختی :</span></span></td>
                                    <td>
                                        <span class="style437"><span>
                                        <asp:Label ID="lblPardakhti" runat="server" CssClass="style437" 
                                            style="color: #3399FF; " Text="0"></asp:Label>
                                        &nbsp;<span class="style565"><span class="style685"><span class="style692">ریال</span></span></span></span></span></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="middle">
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT * FROM [Degree]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT * FROM [Type_Tuition]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT * FROM [Grade] WHERE ([id_degree] = @id_degree)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList13" Name="id_degree" 
                                        PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT * FROM [School_Years] ORDER BY [year] DESC"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            
</ContentTemplate>
        

</asp:TabPanel>
        <asp:TabPanel ID="TabPanel5" runat="server" HeaderText="TabPanel5">
            <HeaderTemplate>
                مشخصات مالی
            
</HeaderTemplate>
            

<ContentTemplate>
                <br />
                <table class="style634" dir="rtl">
                    <tr>
                        <td align="left" class="style701">
                            سال تحصیلی :</td>
                        <td align="right" class="style698">
                            <table class="style634">
                                <tr>
                                    <td class="style640">
                                        <asp:DropDownList ID="DropDownList16" runat="server" 
                                            AppendDataBoundItems="True" AutoPostBack="True" CssClass="style18" 
                                            DataSourceID="SqlDataSource8" DataTextField="year" DataValueField="id_years" 
                                            Height="22px" OnSelectedIndexChanged="DropDownList16_SelectedIndexChanged" 
                                            style="color: #000066; font-family: Tahoma; font-size: 10pt;" 
                                            Width="119px">
                                            <asp:ListItem>انتخاب کنید</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style641" style="color: #FFFFFF">
                                        <span class="style39">نام و نام خانوادگی :</span></td>
                                    <td class="style702">
                                        <asp:Label ID="Label18" runat="server" CssClass="style648" ForeColor="#FFCC00"></asp:Label>
                                    </td>
                                    <td class="style690">
                                        <span class="style39">
                                        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" 
                                            OnClick="LinkButton1_Click" PostBackUrl="~/Admin/Sinfo.aspx">ثبت چک و حواله</asp:LinkButton>
                                        </span></span>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style638" colspan="2">
                            <table align="center" bgcolor="#006699" cellpadding="0" cellspacing="0" 
                                class="auto-style28" style="color: #CCCCCC; background-color: #006699">
                                <tr>
                                    <td align="center" class="auto-style40" dir="rtl" valign="middle">
                                        <span>مبلغ کل چک ها </span>
                                    </td>
                                    </span><span class="style470">
                                    <td align="center" class="auto-style40" dir="rtl" valign="middle">
                                        <span>مبلغ کل حواله ها </span>
                                    </td>
                                    <td align="center" class="auto-style40" dir="rtl" valign="middle">
                                        مبلغ چک های پاس شده</td>
                                    <td align="center" class="auto-style40" dir="rtl" valign="middle">
                                        مبلغ چک های ثبت شده</td>
                                    <td align="center" class="style695" dir="rtl" valign="middle">
                                        مبلغ کل پرداختی</td>
                                    </span>
                                    <td align="center" class="auto-style39" dir="rtl" valign="middle">
                                        <span class="style39"><font size="2">تخفیف</font></span></td>
                                    <td align="center" class="auto-style39" dir="rtl" valign="middle">
                                        کل مبلغ&nbsp;بدهی </font></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style470" dir="rtl" valign="middle">
                                        <span><strong>
                                        <asp:Label ID="lblkol" runat="server" Text="0"></asp:Label>
                                        </strong></span>
                                    </td>
                                    <td align="center" dir="rtl" valign="middle">
                                        <span><strong>
                                        <asp:Label ID="lblHvale" runat="server" Text="0"></asp:Label>
                                        </strong></span>
                                    </td>
                                    <td align="center" dir="rtl" valign="middle">
                                        <strong>
                                        <asp:Label ID="lblPardakhtshode" runat="server" Text="0"></asp:Label>
                                        </strong>
                                    </td>
                                    <td align="center" dir="rtl" valign="middle">
                                        <strong>
                                        <asp:Label ID="lblPardakhtnashode" runat="server" Text="0"></asp:Label>
                                        </strong>
                                    </td>
                                    <td align="center" dir="rtl" valign="middle">
                                        <asp:Label ID="lbldarJaryan" runat="server" 
                                            style="color: #FFCC00; font-weight: 700" Text="0"></asp:Label>
                                    </td>
                                    <td align="center" class="auto-style38" dir="rtl" valign="middle">
                                        <strong><font size="2">
                                        <asp:Label ID="lblDiscount" runat="server" CssClass="style39" Text="0"></asp:Label>
                                        </font></strong>
                                    </td>
                                    <td align="center" class="auto-style38" dir="rtl" valign="middle">
                                        <span class="style39"><font size="2"><strong>
                                        <asp:Label ID="lblBedehi" runat="server" Text="0"></asp:Label>
                                        </strong></font></span>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style463" colspan="2">
                            <br />
                            <span class="style17" dir="rtl"><span class="style17">
                            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                BorderStyle="Groove" BorderWidth="2px" Caption="چک های ثبت شده" 
                                CaptionAlign="Top" CellPadding="1" CellSpacing="1" DataKeyNames="id_check" 
                                EmptyDataText="چکی به نام این دانش اموز ثبت نشده است" Font-Size="10pt" 
                                ForeColor="Black" Height="19px" HorizontalAlign="Center" 
                                OnPageIndexChanging="GridView4_PageIndexChanging" 
                                OnRowCancelingEdit="GridView4_RowCancelingEdit" 
                                OnRowCommand="GridView4_RowCommand" OnRowDeleting="GridView4_RowDeleting" 
                                OnRowEditing="GridView4_RowEditing" OnRowUpdating="GridView4_RowUpdating" 
                                PageSize="5" ShowHeaderWhenEmpty="True" Width="958px">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:TemplateField HeaderText="نام بانک" SortExpression="namebank">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("namebank") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label20" runat="server" Text='<%# Bind("namebank") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="نام شعبه" SortExpression="Branch">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Branch") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Branch") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="سریال چک" SortExpression="seryal">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("seryal") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("seryal") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="تاریخ چک" SortExpression="datecheck">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("datecheck") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("datecheck") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="شماره حساب" SortExpression="accountnumber">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("accountnumber") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("accountnumber") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="صاحب حساب" SortExpression="accountname">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("accountname") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("accountname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="مبلغ چک" SortExpression="Amount">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" Text='<%#  Bind("Amount")%>' 
                                                Width="118px" Height="20px"></asp:TextBox>
                                            <asp:MaskedEditExtender ID="TextBox7_MaskedEditExtender" runat="server" 
                                                AutoCompleteValue=" " InputDirection="RightToLeft" Mask="999,999,999" 
                                                MaskType="Number" TargetControlID="TextBox7">
                                            </asp:MaskedEditExtender>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# String.Format("{0:###,###,### ریال}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "Amount")))%>' ></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="وضعیت چک" SortExpression="status">
                                        <EditItemTemplate>
                                            <span class="style17">
                                            <asp:DropDownList ID="DropDownList17" runat="server" Height="16px" 
                                                SelectedValue='<%# Eval("status") %>' style="font-family: Tahoma" 
                                                Width="127px">
                                                <asp:ListItem>ثبت شده</asp:ListItem>
                                                <asp:ListItem>در جریان وصول</asp:ListItem>
                                                <asp:ListItem>پاس شده</asp:ListItem>
                                            </asp:DropDownList>
                                            </span>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="تاریخ دریافت" SortExpression="datedaryaft">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("datedaryaft") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("datedaryaft") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="type" HeaderText="بابت" ReadOnly="True" />
                                    <asp:CommandField CancelText="بازگشت" EditText="ویرایش" ShowEditButton="True" 
                                        UpdateText="ذخیره" ButtonType="Button" >
                                    <ControlStyle Font-Names="Tahoma" Font-Size="10pt" />
                                    </asp:CommandField>
                                </Columns>
                                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="#FF6600" Font-Bold="True" Height="25px" 
                                    HorizontalAlign="Center" VerticalAlign="Middle" />
                                <PagerSettings PageButtonCount="5" />
                                <PagerStyle BackColor="#336699" ForeColor="#CCCCCC" HorizontalAlign="Center" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                            </asp:GridView>
                            </span></span>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style631" colspan="2">
                            <span class="style17">
                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                                SelectCommand="SELECT * FROM [School_Years] ORDER BY [year] DESC"></asp:SqlDataSource>
                            </span></td>
                    </tr>
                    <tr>
                        <td align="center" class="style636" colspan="2">
                            <br />
                            <span class="style17">
                            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                BorderStyle="Groove" BorderWidth="2px" Caption="حواله  های ثبت شده" 
                                CaptionAlign="Top" CellPadding="1" CellSpacing="1" DataKeyNames="id_havale" 
                                EmptyDataText="حواله ای به نام این دانش آموز ثبت نشده است" Font-Size="10pt" 
                                ForeColor="Black" Height="18px" HorizontalAlign="Center" 
                                OnPageIndexChanging="GridView5_PageIndexChanging" 
                                OnRowCancelingEdit="GridView5_RowCancelingEdit" 
                                OnRowCommand="GridView5_RowCommand" OnRowDeleting="GridView5_RowDeleting" 
                                OnRowEditing="GridView5_RowEditing" OnRowUpdating="GridView5_RowUpdating" 
                                PageSize="5" ShowHeaderWhenEmpty="True" Width="958px">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:TemplateField HeaderText="شماره فیش" SortExpression="accountnumber">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("accountnumber") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("accountnumber") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="تاریخ حواله" SortExpression="datehavale">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("datehavale") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("datehavale") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="تاریخ دریافت " SortExpression="datedaryaft">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("datedaryaft") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("datedaryaft") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="نام بانک" SortExpression="namebank">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("namebank") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label13" runat="server" Text='<%# Bind("namebank") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="شعبه" SortExpression="Branch">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("Branch") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("Branch") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="مبلغ " SortExpression="Amount">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox15" runat="server" Text='<%#Bind("Amount")%>' 
                                                Width="126px" Height="20px"></asp:TextBox>
                                            <asp:MaskedEditExtender ID="TextBox15_MaskedEditExtender" runat="server" 
                                                AutoCompleteValue=" " InputDirection="RightToLeft" Mask="999,999,999" 
                                                MaskType="Number" TargetControlID="TextBox15">
                                            </asp:MaskedEditExtender>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label15" runat="server" Text='<%# String.Format("{0:###,###,### ریال}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "Amount")))%>'   ></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="بابت">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox16" runat="server" ReadOnly="True" 
                                                Text='<%# Bind("type") %>' Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label16" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="پرداخت کننده">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("payer") %>' 
                                                Width="70px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label17" runat="server" Text='<%# Bind("payer") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField CancelText="بازگشت" EditText="ویرایش" ShowEditButton="True" 
                                        UpdateText="ذخیره" ButtonType="Button" >
                                    <ControlStyle Font-Names="Tahoma" Font-Size="10pt" />
                                    </asp:CommandField>
                                </Columns>
                                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="#FF6600" Font-Bold="True" Height="25px" 
                                    HorizontalAlign="Center" VerticalAlign="Middle" />
                                <PagerSettings PageButtonCount="5" />
                                <PagerStyle BackColor="#336699" ForeColor="#CCCCCC" HorizontalAlign="Center" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                            </asp:GridView>
                            </span>
                            <br />
                        </td>
                    </tr>
                </table>
            
</ContentTemplate>
        

</asp:TabPanel>
        <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
            <HeaderTemplate>
                گزارش 
</HeaderTemplate>
            

<ContentTemplate>
                <br />
                <br />
                <table align="center" cellspacing="1" class="style696">
                    <tr>
                        <td align="center" valign="middle">
                            <telerik:ReportViewer ID="ReportViewer1" runat="server" Height="625px" 
                                Width="801px">
<typereportsource typename="Report.Printf1, Report, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null"></typereportsource>
</telerik:ReportViewer>
                        </td>
                    </tr>
                </table>
            
</ContentTemplate>
        

</asp:TabPanel>
    </asp:TabContainer>
            </td>
        </tr>
    </table>
</asp:Content>

