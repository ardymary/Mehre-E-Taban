<%@ Page Title="" Language="C#" MasterPageFile="~/Finance/Finance.master" AutoEventWireup="true" CodeFile="Sinfo.aspx.cs" Inherits="Sinfo" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<%@ Register assembly="Heidarpour.WebControlUI" namespace="Heidarpour.WebControlUI" tagprefix="rhp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">



    <script type="text/javascript">

        function ConfirmOnDelete(item) {
            if (confirm("توجه - با حذف خدمات تمامی چک ها و حواله های  مربوطه حذف می گردد. " + item + " حذف گردد  " + " ?") == true)
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


        function ConfirmOnDeletecheck(money) {
            if (confirm("توجه - حذف شما موقت می باشد ،جهت حذف نهایی مدیر سیستم را مطلع فرمایید . " + " حذف گردد  " + " ?") == true)
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
    

        .style194
        {
            height: 35px;
            width: 209px;
        }
        .style25
        {
            font-size: 9pt;
            height: 10px;
        }
            

    .style1
    {
        width: 1030px;
            font-family: Tahoma;
            font-size: 9pt;
        margin-left: 0px;
            height: 217px;
            color: #000000;
        }
        .style130
    {
        width: 59px;
        height: 40px;
    }
        .style133
    {
        width: 88px;
        }
        .style175
    {
        height: 32px;
        font-size: 10pt;
            color: #FFFFFF;
        }
        .style17
        {
            font-size: 9pt;
        }
            

        .style212
        {
            height: 15px;
            font-size: 11pt;
        }
        .style299
        {
            height: 26px;
            width: 9px;
        }
        .style303
        {
            height: 26px;
            text-align: center;
            }
        .style308
        {
            width: 16px;
        }
        .style309
        {
            width: 586px;
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
        .style315
        {
            width: 149px;
            height: 30px;
        }
        .style316
        {
            width: 16px;
            height: 31px;
        }
        .style321
        {
            width: 328px;
            height: 30px;
        }
        .style326
        {
            width: 733px;
            height: 30px;
        }
        .style328
        {
            width: 819px;
            height: 30px;
        }
        .style330
        {
            width: 586px;
        }
        .style331
        {
            width: 82px;
        }
        .style333
        {
            height: 30px;
            text-align: center;
            }
        .style335
        {
            width: 819px;
        }
        .style336
        {
            width: 733px;
        }
        .style339
        {
            height: 29px;
        font-size: 10pt;
    }
        .style340
        {
            width: 586px;
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
            width: 819px;
            height: 34px;
        }
        .style344
        {
            height: 34px;
            text-align: center;
            }
        .style345
        {
            width: 733px;
            height: 34px;
        }
        .style347
        {
            width: 328px;
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
            height: 32px;
        }
        .style350
        {
            height: 37px;
        }
        .style351
        {
            width: 586px;
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
            width: 819px;
            height: 40px;
        }
        .style355
        {
            height: 35px;
        }
        .style356
        {
            text-align: center;
            height: 40px;
            }
        .style357
        {
            width: 733px;
            height: 40px;
        }
        .style359
        {
            width: 328px;
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
        .style370
        {
            width: 16px;
            height: 29px;
        }
        .style371
        {
            width: 143px;
            height: 33px;
        }
        .style374
        {
            width: 328px;
        }
        .style376
        {
            height: 6px;
        }
        .style379
        {
            height: 27px;
            font-size: 10pt;
        }
        .style386
        {
            width: 66px;
            height: 81px;
        }
        .style387
    {
        width: 586px;
        height: 71px;
    }
    .style388
    {
        width: 733px;
        height: 71px;
    }
        .style400
        {
            height: 30px;
            width: 59px;
        }
        .style401
        {
            height: 34px;
            width: 59px;
        }
        .style402
        {
            width: 59px;
        }
        .style405
        {
            width: 149px;
            height: 27px;
        }
        .style407
        {
            height: 71px;
        }
        .style50
        {
            height: 32px;
        }
        .style20
        {
            height: 34px;
            background-color: #999999;
        }
        .style426
        {
            font-family: Tahoma;
            height: 32px;
            }
        .style434
        {
            font-size: 12pt;
        }
        .style435
        {
            font-family: Tahoma;
            height: 28px;
            font-size: 12pt;
        }
        .style438
        {
            font-family: Tahoma;
            height: 33px;
            font-size: 10pt;
        }
        .style457
        {
            width: 65px;
            height: 28px;
        }
        .style461
        {
            height: 33px;
        }
        .style463
        {
            height: 28px;
            width: 132px;
        }
        .style470
        {
            color: #FFFFFF;
        }
        .style489
        {
            font-size: xx-small;
            height: 224px;
        }
        .style208
        {
            width: 12px;
            height: 30px;
        }
        .style535
        {
            width: 141px;
        }
        .style536
        {
            height: 38px;
        }
        .style538
        {
            width: 586px;
            height: 27px;
        }
        .style539
        {
            width: 733px;
            height: 27px;
        }
        .style540
        {
            width: 819px;
            height: 27px;
        }
        .style541
        {
            height: 30px;
            width: 88px;
        }
        .style542
        {
            height: 37px;
            width: 88px;
        }
        .style543
        {
            height: 35px;
            width: 88px;
        }
        .style544
        {
            height: 27px;
            width: 88px;
        }
        .style545
        {
            text-align: center;
            height: 27px;
        }
        .style546
        {
            height: 27px;
            width: 59px;
        }
        .style547
        {
            width: 328px;
            height: 27px;
        }
            

        .style475
        {
            font-size: xx-small;
            color: #CCCCCC;
            width: 109px;
            height: 30px;
        }
        .style437
        {
            font-size: 11pt;
            height: 31px;
        }
        .style565
        {
            font-size: 11pt;
        }
        .style569
        {
            font-size: 9pt;
            color: #FFFFFF;
        }
        .style622
        {
            width: 98%;
            height: 100%;
            table-layout: auto;
        }
        .style624
        {
            width: 143px;
        }
        .style625
        {
            width: 102px;
        }
        .style626
        {
            height: 28px;
            width: 143px;
        }
        .style627
        {
            background-color: #C0C0C0;
        }
        .style628
        {
            width: 139px;
            height: 33px;
        }
        .style629
        {
            width: 10px;
        }
        .style646
        {
            height: 7px;
            font-family: Tahoma;
        }
        .auto-style1 {
            width: 98%;
            height: 135%;
        }
        .auto-style2 {
            height: 330px;
        }
        .auto-style3 {
            width: 1012px;
        }
        .auto-style6 {
            font-size: xx-small;
            color: #CCCCCC;
            height: 13px;
            width: 109px;
        }
        .auto-style7 {
            width: 1px;
            height: 13px;
        }
        .auto-style8 {
            width: 94px;
            font-size: 10pt;
        }
        .auto-style9 {
            height: 12px;
            width: 94px;
            font-size: 10pt;
        }
        .auto-style10 {
            width: 94px;
            height: 14px;
            font-size: 10pt;
        }
        .auto-style11 {
            height: 34px;
            width: 94px;
            font-size: 10pt;
        }
        .auto-style12 {
            color: #000000;
            height: 30px;
            width: 93px;
            font-size: 10pt;
        }
        .auto-style13 {
            color: #000000;
            height: 12px;
            width: 93px;
            font-size: 10pt;
        }
        .auto-style14 {
            font-size: 10pt;
            font-family: Tahoma;
            width: 93px;
        }
        .auto-style21 {
            width: 552px;
        }
        .auto-style22 {
            width: 1002px;
        }
        .auto-style28 {
            width: 1002px;
            font-size: 10pt;
            height: 59px;
        }
        .auto-style38 {
            width: 103px;
            color: #000000;
            background-color: #CCCC00;
        }
        .auto-style39 {
            height: 31px;
            width: 103px;
            color: #000000;
            background-color: #CCCC00;
        }
        .auto-style40 {
            height: 31px;
        }
        .auto-style41 {
            width: 103px;
            color: #FFFFFF;
            background-color: #CC0000;
        }
        .auto-style42 {
            height: 31px;
            width: 103px;
            color: #FFFFFF;
            background-color: #CC0000;
        }
        .auto-style44 {
            height: 23px;
            width: 74px;
        }
        .auto-style45 {
            width: 74px;
            height: 12px;
        }
        .auto-style46 {
            height: 30px;
            width: 74px;
        }
        .auto-style47 {
            color: #000000;
            height: 32px;
            font-size: 10pt;
        }
        .auto-style48 {
            height: 34px;
            font-size: 10pt;
        }
        .auto-style49 {
            width: 100%;
            height: 43px;
        }
        .auto-style50 {
            height: 33px;
            background-color: #006699;
        }
        .auto-style51 {
            height: 298px;
        }
        .style657
        {
        }
        .style658
        {
            color: #CCCCCC;
        }
        .style660
        {
            width: 132px;
            height: 33px;
        }
        .style667
        {
            width: 50px;
        }
        .style669
        {
            width: 71%;
            height: 48px;
        }
        .style671
        {
            width: 139px;
            height: 33px;
            color: #CCCCCC;
        }
        .style672
        {
            width: 154px;
            height: 33px;
        }
        .style673
        {
            width: 100%;
            height: 34px;
        }
        .style674
        {
            width: 4px;
        }
        .style676
        {
            font-size: xx-small;
            color: #CCCCCC;
            width: 109px;
            height: 31px;
        }
        .style677
        {
            height: 30px;
            width: 94px;
            font-size: 10pt;
        }
        .style678
        {
            width: 16px;
            height: 30px;
        }
        .style679
        {
            height: 30px;
        }
        .style681
        {
            font-size: xx-small;
            color: #CCCCCC;
            width: 84px;
            height: 30px;
        }
        .style682
        {
            height: 31px;
            width: 94px;
            font-size: 10pt;
        }
        .style683
        {
            font-size: xx-small;
            color: #CCCCCC;
            width: 84px;
            height: 31px;
        }
        .style684
        {
            font-size: 10pt;
            font-family: Tahoma;
            width: 93px;
            height: 30px;
        }
        .style685
        {
            font-size: 10pt;
            height: 31px;
        }
        .style687
        {
            height: 34px;
            color: #003366;
            background-color: #003366;
        }
        .style688
        {
            width: 55%;
            height: 100%;
        }
        .style689
        {
            width: 113px;
        }
        .style690
        {
            width: 149px;
        }
        .style691
        {
            width: 121px;
        }
        .style692
        {
            color: #FFFFCC;
        }
        .style693
        {
            font-size: 11pt;
            height: 31px;
            color: #FFFFCC;
        }
        .style694
        {
            height: 144px;
        }
        .style695
        {
            height: 31px;
            color: #FFFF00;
        }
        .style697
        {
            width: 65px;
        }
        .style699
        {
            width: 15px;
        }
        .style700
        {
            height: 28px;
            width: 15px;
        }
        .style702
        {
            height: 28px;
        }
        .style703
        {
            width: 170px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" cellspacing="1" style="height: 688px">
        <tr>
            <td align="center" class="auto-style2">
                <br />
                <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
    Height="606px" ScrollBars="Auto" Width="1074px" ForeColor="Black" 
    Font-Names="Tahoma" EnableTheming="True" Font-Size="11pt" onload="TabContainer1_Load" 
                    style="text-align: center">
    <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1">
        <HeaderTemplate>مشخصات دانش آموز</HeaderTemplate>
        <ContentTemplate><br /><br /><table align="center" class="style17" dir="rtl" 
                frame="border" border="0" 
                style="table-layout: auto; border-collapse: collapse"><tr><td 
                    colspan="12" valign="middle" align="center" bgcolor="#CCCCFF" 
                    class="style694"><div align="center"><img ID="imgDisplay" align="middle" alt="تصویر دانش آموز" border="0" 
                            class="style386" dir="rtl" style="background-color: #006699; border: medium ridge #CCCCCC" /><br /><asp:Image ID="imgLoader" runat="server" ImageUrl="~/Mehr-Design/loader.gif" 
                             Height="24px" /><br /><asp:AsyncFileUpload ID="AsyncFileUpload1" runat="server"  FailedValidation="False" 
                         onclientuploadcomplete="uploadComplete"   onclientuploadstarted="uploadStarted" 
                    onuploadedcomplete="AsyncFileUpload1_UploadedComplete" ThrobberID="imgLoader" 
                         CompleteBackColor="#006600" /></div></td></tr><tr><td colspan="12" 
                        
                    
                    style="border-bottom-style: groove; border-bottom-width: 3px; border-bottom-color: #CC0000; background-color: #336699; color: #FFFFFF;" 
                    align="center" class="style175">اطلاعات ضروری</td></tr><tr><td align="left" 
                    class="style309" bgcolor="#CCCCCC" colspan="0" height="22">نام :</td><td align="right" 
                    class="style310" bgcolor="#CCCCCC" colspan="0" height="22"><asp:TextBox ID="txtName" runat="server" 
                        CssClass="style36" Height="20px" 
                            Width="125px"></asp:TextBox></td><td class="style311" 
                    bgcolor="#CCCCCC" colspan="0" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtName" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="student"></asp:RequiredFieldValidator></td><td 
                    class="style328" bgcolor="#CCCCCC" align="left" colspan="0" height="22">نام 
                    خانوادگی :</td><td class="style541" 
                    align="right" bgcolor="#CCCCCC" colspan="0" height="22"><asp:TextBox ID="txtFamily" runat="server" 
                    CssClass="style36" Height="20px" 
                            Width="125px"></asp:TextBox></td><td class="style333" 
                    bgcolor="#CCCCCC" colspan="0" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtFamily" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="student"></asp:RequiredFieldValidator></td><td 
                    class="style326" bgcolor="#CCCCCC" align="left" colspan="0" height="22">کد ملی :</td><td align="right" 
                    class="style400" bgcolor="#CCCCCC" colspan="0" height="22"><asp:TextBox ID="txtCode" runat="server" 
                    CssClass="style36" Height="20px" 
                            Width="125px" AutoPostBack="True"></asp:TextBox><asp:MaskedEditExtender ID="txtCode_MaskedEditExtender" runat="server" 
                        AutoComplete="False" Mask="999-999-999-9" MaskType="Number" 
                        TargetControlID="txtCode" CultureAMPMPlaceholder="" 
                        CultureCurrencySymbolPlaceholder="" CultureDateFormat="" 
                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                        CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                        InputDirection="RightToLeft" ClearMaskOnLostFocus="False"></asp:MaskedEditExtender></td><td class="style212" 
                    align="center" bgcolor="#CCCCCC" colspan="0" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="txtCode" ErrorMessage="*" ForeColor="#CC0000" 
                        ValidationGroup="student" style="font-size: 10pt"></asp:RequiredFieldValidator></td><td 
                    bgcolor="#CCCCCC" class="style321" align="left" colspan="0" height="22">سرپرستی 
                    با :</td><td align="right" bgcolor="#CCCCCC" class="style315" colspan="0" height="22"><asp:DropDownList ID="DropDownList1" runat="server" CssClass="style115" 
                            Height="24px" style="font-family: Tahoma" Width="101px" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged"><asp:ListItem>انتخاب کنید ...</asp:ListItem><asp:ListItem>والدین</asp:ListItem><asp:ListItem Value="1">پدر</asp:ListItem><asp:ListItem Value="2">مادر</asp:ListItem><asp:ListItem Value="3">خانواده پدری</asp:ListItem><asp:ListItem Value="4">خانواده مادری</asp:ListItem></asp:DropDownList></td><td align="center" bgcolor="#CCCCCC" class="style316" colspan="0" height="22">&nbsp;</td></tr><tr><td align="left" class="style340" bgcolor="#CCCCCC" colspan="0" height="22">
            شماره شناسنامه :</td><td align="right" class="style341" bgcolor="#CCCCCC" colspan="0" height="22"><asp:TextBox ID="txtIdnumber" 
                        runat="server" CssClass="style36" Height="22px" 
                            Width="110px"></asp:TextBox></td><td class="style342" 
                    bgcolor="#CCCCCC" colspan="0" height="22">&nbsp;</td><td 
                    class="style343" bgcolor="#CCCCCC" align="left" colspan="0" height="22">شماره سریال شناسنامه :</td><td class="style542" align="right" bgcolor="#CCCCCC" colspan="0" height="22"><asp:TextBox ID="txtSh" 
                        runat="server" CssClass="style36" Height="20px" 
                            Width="110px"></asp:TextBox></td><td class="style344" 
                    bgcolor="#CCCCCC" colspan="0" height="22"></td><td class="style345" bgcolor="#CCCCCC" 
                        align="left" colspan="0" height="22">عدد سری شناسنامه :</td><td 
                    align="right" class="style401" bgcolor="#CCCCCC" colspan="0" height="22"><asp:TextBox ID="txtAdad" 
                        runat="server" CssClass="style36" Height="20px" 
                            Width="110px"></asp:TextBox></td><td class="style350" 
                    align="center" bgcolor="#CCCCCC" colspan="0" height="22"></td><td bgcolor="#CCCCCC" 
                    class="style347" align="left" colspan="0" height="22">سال تولد :</td><td align="right" 
                        bgcolor="#CCCCCC" class="style348" colspan="0" height="22"><asp:TextBox ID="txtBirthday" runat="server" CssClass="style36" Height="20px" 
                        Width="110px"></asp:TextBox></td><td align="center" bgcolor="#CCCCCC" 
                        class="style349" colspan="0" height="22">&nbsp;</td></tr><tr><td align="left" class="style351" bgcolor="#CCCCCC" colspan="0" height="22">
                حرف سری شناسنامه :</td><td align="right" class="style352" bgcolor="#CCCCCC" colspan="0" height="22"><asp:TextBox ID="txtHarf" 
                        runat="server" CssClass="style36" Height="20px" 
                            Width="110px"></asp:TextBox></td><td class="style353" 
                    bgcolor="#CCCCCC" colspan="0" height="22">&nbsp;</td><td class="style354" bgcolor="#CCCCCC" 
                    align="left" colspan="0" height="22">محل صدور :</td><td class="style543" align="right" 
                        bgcolor="#CCCCCC" colspan="0" height="22"><asp:TextBox ID="txtIssued" 
                        runat="server" CssClass="style36" Height="20px" 
                            Width="125px"></asp:TextBox></td><td class="style356" 
                    bgcolor="#CCCCCC" colspan="0" height="22"></td><td class="style357" bgcolor="#CCCCCC" 
                        align="left" colspan="0" height="22">محل تولد :</td><td align="right" class="style130" bgcolor="#CCCCCC" colspan="0" height="22"><asp:TextBox ID="txtPlace" 
                        runat="server" CssClass="style36" Height="20px" 
                            Width="125px"></asp:TextBox></td><td class="style355" 
                    align="center" bgcolor="#CCCCCC" colspan="0" height="22"></td><td bgcolor="#CCCCCC" 
                    class="style359" align="left" colspan="0" height="22">تلفن همراه :</td><td align="right" 
                        bgcolor="#CCCCCC" class="style360" colspan="0" height="22"><asp:TextBox ID="txtMobile" runat="server" CssClass="style36" Height="20px" 
                        Width="125px"></asp:TextBox></td><td align="center" bgcolor="#CCCCCC" 
                        class="style361" colspan="0" height="22">&nbsp;</td></tr><tr><td align="left" class="style330" bgcolor="#CCCCCC" colspan="0" height="22">جنسیت :</td><td align="right" class="style331" bgcolor="#CCCCCC" colspan="0" height="22"><asp:DropDownList ID="DropDownList2" runat="server" CssClass="style115" 
                        Height="24px" Width="125px" style="font-family: Tahoma"><asp:ListItem>انتخاب کنید ...</asp:ListItem><asp:ListItem Value="1">دختر</asp:ListItem><asp:ListItem Value="2">پسر</asp:ListItem></asp:DropDownList></td><td class="style299" bgcolor="#CCCCCC" colspan="0" height="22"><asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="#CC0000" 
                        Operator="NotEqual" ValidationGroup="student" 
                        ValueToCompare="انتخاب کنید ..."></asp:CompareValidator></td><td 
                    class="style335" bgcolor="#CCCCCC" align="left" colspan="0" height="22">دین: </td><td class="style133" 
                    align="right" bgcolor="#CCCCCC" colspan="0" height="22"><asp:TextBox ID="txtReligion" runat="server" CssClass="style36" Height="20px" 
                    Width="125px"></asp:TextBox></td><td class="style303" bgcolor="#CCCCCC" 
                        colspan="0" height="22">&nbsp;</td><td 
                    class="style336" bgcolor="#CCCCCC" align="left" colspan="0" height="22">تعداد برادر:</td><td align="right" 
                    class="style402" bgcolor="#CCCCCC" colspan="0" height="22"><asp:TextBox ID="txtBrother" runat="server" CssClass="style36" Height="20px" 
                    Width="84px"></asp:TextBox></td><td align="center" bgcolor="#CCCCCC" 
                        colspan="0" height="22"></td><td 
                    bgcolor="#CCCCCC" class="style374" align="left" colspan="0" height="22">تعداد 
                    خواهر :</td><td align="right" bgcolor="#CCCCCC" class="style371" colspan="0" height="22"><asp:TextBox ID="txtSister" runat="server" CssClass="style36" Height="20px" 
                        Width="100px"></asp:TextBox></td><td align="center" bgcolor="#CCCCCC" 
                        class="style308" colspan="0" height="22"></td></tr><tr><td align="center" class="style376" colspan="12" bgcolor="#CCCCFF"></td></tr><tr><td 
                align="center" class="style339" colspan="12" 
                    
                    
                style="border-bottom-style: groove; border-bottom-width: 3px; border-bottom-color: #CC0000; background-color: #336699; color: #FFFFFF;" 
                rowspan="0">اطلاعات تکمیلی</td></tr><tr><td align="left" class="style538" 
                    bgcolor="#CFC9C0" rowspan="0">تلفن ضروری :</td><td align="right" 
                    class="style363" bgcolor="#CFC9C0" rowspan="0"><asp:TextBox ID="txtEmergencytel" 
                            runat="server" CssClass="style36" 
                        Height="20px" Width="110px"></asp:TextBox></td><td class="style364" 
                    bgcolor="#CFC9C0" rowspan="0"></td><td class="style540" 
                    bgcolor="#CFC9C0" align="left" rowspan="0">تلفن منزل :</td><td 
                    class="style544" bgcolor="#CFC9C0" rowspan="0"><asp:TextBox ID="txtHometel" 
                            runat="server" CssClass="style36" Height="20px" 
                        Width="110px"></asp:TextBox></td><td class="style545" bgcolor="#CFC9C0" 
                    rowspan="0"></td><td class="style539" 
                    bgcolor="#CFC9C0" align="left" rowspan="0"></td><td align="right" 
                    class="style546" bgcolor="#CFC9C0" rowspan="0"></td><td class="style379" 
                    align="center" bgcolor="#CFC9C0" rowspan="0"></td><td bgcolor="#CFC9C0" 
                    class="style547" align="left" rowspan="0">تابعیت :</td><td align="right" 
                    bgcolor="#CFC9C0" class="style405" rowspan="0"><asp:TextBox ID="txtAllegiance" runat="server" CssClass="style36" Height="21px" 
                        Width="83px"></asp:TextBox></td><td bgcolor="#CFC9C0" class="style370" 
                    rowspan="0"></td></tr><tr><td align="left" class="style538" 
                    bgcolor="#CFC9C0" rowspan="0">پست الکترونیکی :</td><td align="right" 
                    class="style363" bgcolor="#CFC9C0" rowspan="0"><asp:TextBox ID="txtEmail" runat="server" CssClass="style36" Height="21px" 
                        Width="125px"></asp:TextBox></td><td class="style364" bgcolor="#CFC9C0" 
                    rowspan="0"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ValidationGroup="student"></asp:RegularExpressionValidator></td><td class="style540" 
                    bgcolor="#CFC9C0" align="left" rowspan="0">ملیت :</td><td class="style544" 
                    bgcolor="#CFC9C0" rowspan="0"><asp:TextBox ID="txtNationality" runat="server" CssClass="style36" 
                        Height="20px" Width="99px"></asp:TextBox></td><td class="style545" 
                    bgcolor="#CFC9C0" rowspan="0"></td><td class="style539" 
                    bgcolor="#CFC9C0" align="left" rowspan="0">&nbsp;</td><td 
                    align="right" class="style546" 
                    bgcolor="#CFC9C0" rowspan="0">&nbsp;</td><td 
                    class="style379" align="center" bgcolor="#CFC9C0" rowspan="0"></td><td 
                    bgcolor="#CFC9C0" class="style547" align="left" rowspan="0">مذهب :</td><td 
                    align="right" bgcolor="#CFC9C0" class="style405" rowspan="0"><asp:TextBox ID="txtMazhab" runat="server" CssClass="style36" Height="20px" 
                        style="margin-top: 0px" Width="115px"></asp:TextBox></td><td 
                    bgcolor="#CFC9C0" class="style370" rowspan="0"></td></tr><tr><td 
                    align="left" class="style387" bgcolor="#CFC9C0" rowspan="0">آدرس :</td><td 
                    align="right" bgcolor="#CFC9C0" colspan="5" class="style407" rowspan="0"><asp:TextBox ID="txtAddress" runat="server" Height="51px" TextMode="MultiLine" 
                        Width="305px" EnableTheming="True"></asp:TextBox></td><td class="style388" bgcolor="#CFC9C0" 
                    align="left" rowspan="0">توضیحات :</td><td align="right" 
                    class="style407" bgcolor="#CFC9C0" colspan="5" rowspan="0"><asp:TextBox ID="txtDescription" runat="server" Height="51px" 
                    TextMode="MultiLine" Width="305px"></asp:TextBox></td></tr><tr><td align="center" colspan="12" 
                        
                        
                
                    style="border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #999999" 
                    class="style461" valign="middle"><asp:Button ID="btnInsertStudents" runat="server" CssClass="style22" 
                    Height="24px" OnClick="btnInsertStudents_Click" 
                    style="font-family: Tahoma; font-size: 9pt; margin-top: 0px;" 
                    Text="ثبت اطلاعات" ValidationGroup="student" Width="143px" /></td></tr></table><br /></ContentTemplate>
    </asp:TabPanel>
    <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
        <HeaderTemplate>مشخصات والدین</HeaderTemplate>
        <ContentTemplate><br /><table class="style1" dir="rtl" border="0" frame="void"><tr><td class="style20" align="center" colspan="10"><table align="center" cellpadding="0" cellspacing="0" class="style622"><tr><td class="style627">&nbsp;کد ملی دانش آموز :</td><td class="style371"><asp:TextBox ID="txtCodeSP" runat="server" ValidationGroup="sp"></asp:TextBox><asp:MaskedEditExtender ID="txtCodeSP_MaskedEditExtender" runat="server" 
                AutoComplete="False" Mask="999-999-999-9" MaskType="Number" 
                TargetControlID="txtCodeSP" CultureAMPMPlaceholder="" 
                CultureCurrencySymbolPlaceholder="" CultureDateFormat="" 
                CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                ClearMaskOnLostFocus="False"></asp:MaskedEditExtender></td><td class="style628"><asp:Button ID="btnSP" runat="server" OnClick="btnSP_Click" Text="جستجو" 
                                        ValidationGroup="sp" Width="115px" /></td><td class="style629"><asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
                                        ControlToValidate="txtCodeSP" ErrorMessage="*" ForeColor="#CC0000" 
                                        ValidationGroup="sp"></asp:RequiredFieldValidator></td><td>نام و نام خانوادگی دانش آموز : <strong><asp:Label ID="lblname" runat="server" CssClass="style630"></asp:Label></strong></td></tr></table></td></tr><tr><td align="center" class="style20" colspan="10" 
                        style="border-bottom-style: groove; border-bottom-width: 3px; border-bottom-color: #CC0000; background-color: #336699; color: #FFFFFF;">اطلاعات ضروری</td></tr><tr><td align="left" bgcolor="#CCCCCC" class="style535" height="22">
                نام :</td><td align="right" bgcolor="#CCCCCC" class="style697" height="22"><asp:TextBox ID="txtName1" runat="server" Height="22px" Width="131px"></asp:TextBox></td><td align="center" bgcolor="#CCCCCC" class="style68" colspan="2" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                            ControlToValidate="txtName1" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="parent"></asp:RequiredFieldValidator></td><td align="left" bgcolor="#CCCCCC" height="22">
                    نام خانوادگی :</td><td align="right" bgcolor="#CCCCCC" class="style70" height="22"><asp:TextBox ID="txtFamily1" runat="server" CssClass="style36" Height="22px" 
                            Width="110px"></asp:TextBox></td><td align="center" 
                    bgcolor="#CCCCCC" class="style699" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                            ControlToValidate="txtFamily1" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="parent"></asp:RequiredFieldValidator></td><td align="left" bgcolor="#CCCCCC" class="style72" height="22">
                    کد ملی :</td><td align="right" bgcolor="#CCCCCC" class="style73" height="22"><asp:TextBox ID="txtCode1" runat="server" CssClass="style36" Height="22px" 
                            Width="125px"></asp:TextBox><asp:MaskedEditExtender ID="txtCode1_MaskedEditExtender" runat="server" 
                    AutoComplete="False" Mask="999-999-999-9" MaskType="Number" 
                    TargetControlID="txtCode1" CultureAMPMPlaceholder="" 
                    CultureCurrencySymbolPlaceholder="" CultureDateFormat="" 
                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    InputDirection="RightToLeft" ClearMaskOnLostFocus="False"></asp:MaskedEditExtender></td>
                <td align="center" bgcolor="#CCCCCC" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                            ControlToValidate="txtCode1" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="parent"></asp:RequiredFieldValidator></td></tr><tr><td class="style535" align="left" bgcolor="#CCCCCC" height="22">
                شماره شناسنامه :</td><td align="right" class="style697" bgcolor="#CCCCCC" 
                    height="22"><asp:TextBox ID="txtIdnumber1" runat="server" CssClass="style36" Height="22px" 
                            Width="110px"></asp:TextBox></td><td align="center" class="style68" bgcolor="#CCCCCC" colspan="2" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                            ControlToValidate="txtIdnumber1" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="parent"></asp:RequiredFieldValidator></td><td align="left" bgcolor="#CCCCCC" height="22">شماره سریال شناسنامه :</td><td class="style70" align="right" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtSh1" runat="server" CssClass="style36" Height="22px" 
                            Width="110px"></asp:TextBox></td><td align="center" 
                    class="style699" bgcolor="#CCCCCC" height="22"></td><td class="style72" align="left" bgcolor="#CCCCCC" height="22">
                    عدد سری شناسنامه :</td><td align="right" class="style73" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtAdad1" runat="server" CssClass="style36" Height="22px" 
                            Width="125px"></asp:TextBox></td><td align="center" 
                    bgcolor="#CCCCCC" height="22"></td></tr><tr><td align="left" bgcolor="#CCCCCC" height="22">
                حرف سری شناسنامه :&nbsp;&nbsp;&nbsp; </td><td align="right" class="style457" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtHarf1" runat="server" CssClass="style36" Height="22px" 
                            Width="110px"></asp:TextBox></td><td align="center" 
                    bgcolor="#CCCCCC" colspan="2" height="22"></td><td align="left" bgcolor="#CCCCCC" class="style463" height="22">
                    محل صدور :</td><td class="style463" align="right" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtIssued1" runat="server" CssClass="style36" Height="22px" 
                            Width="110px"></asp:TextBox></td><td align="center" 
                    class="style700" bgcolor="#CCCCCC" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtIssued1" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="parent"></asp:RequiredFieldValidator></td><td class="style463" align="left" bgcolor="#CCCCCC" height="22">
                    محل تولد :</td><td align="right" class="style463" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtPlace1" runat="server" CssClass="style36" Height="22px" 
                            Width="125px"></asp:TextBox></td><td align="center" 
                    class="style702" bgcolor="#CCCCCC" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                            ControlToValidate="txtPlace1" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="parent"></asp:RequiredFieldValidator></td></tr><tr><td class="style535" align="left" bgcolor="#CCCCCC" height="22">سال تولد :</td>
                <td align="right" class="style697" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtBirthday1" runat="server" CssClass="style36" Height="22px" 
                            Width="110px"></asp:TextBox></td><td align="center" 
                    bgcolor="#CCCCCC" colspan="2" height="22"></td><td align="left" bgcolor="#CCCCCC" height="22">نسبت :</td><td class="style70" align="right" bgcolor="#CCCCCC" height="22"><asp:DropDownList ID="DropDownList5" runat="server" CssClass="style36" 
                            Height="24px" style="font-family: Tahoma; font-size: 9pt" Width="110px"><asp:ListItem>انتخاب کنید ...</asp:ListItem><asp:ListItem Value="1">پدر</asp:ListItem><asp:ListItem Value="2">مادر</asp:ListItem></asp:DropDownList></td>
                <td align="center" class="style699" bgcolor="#CCCCCC" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                            ControlToValidate="DropDownList5" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="parent" InitialValue="انتخاب کنید ..."></asp:RequiredFieldValidator></td><td class="style72" align="left" bgcolor="#CCCCCC" height="22">دین :</td><td align="right" class="style73" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtReligion1" runat="server" CssClass="style36" Height="22px" 
                            Width="125px"></asp:TextBox></td><td align="center" 
                    bgcolor="#CCCCCC" height="22"></td></tr><tr><td class="style50" colspan="10" 
                        
                        style="border-bottom-style: groove; border-bottom-width: 3px; border-bottom-color: #CC0000; background-color: #336699; color: #FFFFFF;" 
                        align="center">اطلاعات تکمیلی</td></tr><tr><td align="left" bgcolor="#CCCCCC" height="22">
                &nbsp;&nbsp; مذهب : &nbsp;</td><td align="right" class="style697" bgcolor="#CCCCCC" 
                    height="22"><asp:TextBox ID="txtMazhab1" runat="server" CssClass="style36" Height="22px" 
                            Width="145px"></asp:TextBox></td><td align="center" class="style85" bgcolor="#CCCCCC" colspan="2" height="22"></td><td align="left" bgcolor="#CCCCCC" height="22">ملیت :</td><td class="style87" align="right" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtNationality1" runat="server" CssClass="style36" 
                            Height="22px" Width="122px"></asp:TextBox></td><td align="center" 
                    class="style699" bgcolor="#CCCCCC" height="22"></td><td class="style89" align="left" bgcolor="#CCCCCC" height="22">تابعیت :</td><td align="right" class="style90" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtAllegiance1" runat="server" Height="22px" Width="125px"></asp:TextBox></td>
                <td align="center" bgcolor="#CCCCCC" height="22"></td></tr><tr><td class="style535" align="left" bgcolor="#CCCCCC" height="22">وضعیت :</td>
            <td align="right" class="style697" bgcolor="#CCCCCC" height="22"><asp:DropDownList ID="DropDownList6" runat="server" CssClass="style36" 
                            Height="24px" style="font-family: Tahoma; font-size: 9pt" Width="110px"><asp:ListItem>انتخاب کنید ...</asp:ListItem><asp:ListItem Value="1">در قید حیات</asp:ListItem><asp:ListItem Value="2">شهید</asp:ListItem><asp:ListItem Value="3">جانباز</asp:ListItem><asp:ListItem Value="4">متوفی</asp:ListItem><asp:ListItem Value="5">سایر</asp:ListItem></asp:DropDownList></td><td align="center" class="style94" bgcolor="#CCCCCC" colspan="2" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="DropDownList6" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="parent" InitialValue="انتخاب کنید ..."></asp:RequiredFieldValidator></td><td align="left" bgcolor="#CCCCCC" height="22">وضعیت تاهل :</td><td class="style96" align="right" bgcolor="#CCCCCC" height="22"><asp:DropDownList ID="DropDownList4" runat="server" CssClass="style36" 
                            Height="24px" style="font-size: 9pt; font-family: Tahoma" Width="110px"><asp:ListItem>انتخاب کنید ...</asp:ListItem><asp:ListItem Value="1">مجرد</asp:ListItem><asp:ListItem Value="2">متاهل</asp:ListItem><asp:ListItem Value="3">مطلقه</asp:ListItem><asp:ListItem Value="5">متکفل</asp:ListItem></asp:DropDownList></td>
            <td align="center" class="style699" bgcolor="#CCCCCC" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="DropDownList4" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="parent" InitialValue="انتخاب کنید ..."></asp:RequiredFieldValidator></td><td class="style98" align="left" bgcolor="#CCCCCC" height="22">
                تلفن منزل :</td><td align="right" class="style99" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtHometel1" runat="server" CssClass="style36" Height="22px" 
                            Width="125px"></asp:TextBox></td><td align="center" 
                bgcolor="#CCCCCC" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                            ControlToValidate="txtHometel1" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="parent"></asp:RequiredFieldValidator></td></tr><tr><td class="style535" align="left" bgcolor="#CCCCCC" height="22">
                تلفن همراه :</td><td align="right" class="style697" bgcolor="#CCCCCC" 
                    height="22"><asp:TextBox ID="txtMobile1" runat="server" CssClass="style36" Height="22px" 
                            Width="145px"></asp:TextBox></td><td align="center" class="style94" bgcolor="#CCCCCC" colspan="2" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                            ControlToValidate="txtMobile1" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="parent"></asp:RequiredFieldValidator></td><td align="left" bgcolor="#CCCCCC" height="22">تلفن ضروری :</td><td class="style96" align="right" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtEmergencytel1" runat="server" CssClass="style36" 
                            Height="22px" Width="110px"></asp:TextBox></td><td align="center" 
                    class="style699" bgcolor="#CCCCCC" height="22"></td><td class="style98" align="left" bgcolor="#CCCCCC" height="22">ایمیل :</td><td align="right" class="style99" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtEmail1" runat="server" CssClass="style36" Height="22px" 
                            Width="125px"></asp:TextBox></td><td align="center" 
                    bgcolor="#CCCCCC" height="22"></td></tr><tr><td class="style535" align="left" bgcolor="#CCCCCC" height="22">شغل :</td>
                <td align="right" bgcolor="#CCCCCC" height="22" class="style697"><asp:TextBox ID="txtJob1" runat="server" CssClass="style36" Height="22px" 
                            Width="145px"></asp:TextBox></td><td align="center" class="style103" bgcolor="#CCCCCC" colspan="2" height="22"></td><td align="left" bgcolor="#CCCCCC" height="22">
                مقطع تحصیلی :</td><td class="style105" align="right" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtdegree1" runat="server" CssClass="style36" Height="22px" 
                            Width="125px"></asp:TextBox></td><td align="center" 
                    class="style699" bgcolor="#CCCCCC" height="22"></td><td class="style107" align="left" bgcolor="#CCCCCC" height="22">رشته تحصیلی :</td><td align="right" class="style108" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtField1" runat="server" CssClass="style36" Height="22px" 
                            Width="125px"></asp:TextBox></td><td align="center" 
                    bgcolor="#CCCCCC" height="22"></td></tr><tr valign="top"><td class="style535" align="left" bgcolor="#CCCCCC" height="22">آدرس :</td><td align="right" class="style123" colspan="2" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtAddress1" runat="server" Height="61px" TextMode="MultiLine" 
                            Width="194px"></asp:TextBox></td><td align="center" 
                    bgcolor="#CCCCCC" height="22"><asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                            ControlToValidate="txtAddress1" ErrorMessage="*" ForeColor="#CC0000" 
                            ValidationGroup="parent"></asp:RequiredFieldValidator></td><td align="center" bgcolor="#CCCCCC" class="style123" height="22">&nbsp;</td><td align="right" class="style183" bgcolor="#CCCCCC" height="22"></td>
                <td align="center" class="style699" bgcolor="#CCCCCC" height="22"></td><td class="style189" align="left" bgcolor="#CCCCCC" height="22">شماره پرسنلی :</td><td align="right" class="style190" bgcolor="#CCCCCC" height="22"><asp:TextBox ID="txtStaff" runat="server" CssClass="style36" Height="22px" 
                            Width="125px"></asp:TextBox></td><td align="center" 
                    bgcolor="#CCCCCC" height="22"></td></tr><tr valign="top"><td align="left" bgcolor="#CCCCCC" class="style535" height="22">توضیحات:</td><td align="right" bgcolor="#CCCCCC" class="style123" colspan="2" height="22"><asp:TextBox ID="txtDescription1" runat="server" CssClass="style36" 
                            Height="62px" TextMode="MultiLine" Width="195px"></asp:TextBox></td>
                <td align="center" bgcolor="#CCCCCC" height="22">&nbsp;</td><td align="center" bgcolor="#CCCCCC" class="style123" height="22">&nbsp;</td><td align="right" bgcolor="#CCCCCC" class="style183" height="22">&nbsp;</td>
                <td align="center" bgcolor="#CCCCCC" class="style699" height="22">&nbsp;</td><td bgcolor="#CCCCCC" class="style189" height="22">&nbsp;</td><td align="right" bgcolor="#CCCCCC" class="style190" height="22">&nbsp;</td>
                <td align="center" bgcolor="#CCCCCC" height="22">&nbsp;</td></tr><tr valign="top"><td class="style536" colspan="10" 
                        
                        style="border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #999999" 
                        align="center" valign="middle"><asp:Button ID="txtInsertParents" runat="server" CssClass="style36" 
                            Height="24px" OnClick="txtInsertParents_Click" 
                            style="font-family: Tahoma; font-size: 9pt" Text="ثبت اطلاعات" 
                            ValidationGroup="parent" Width="142px" /></td></tr><tr valign="top"><td align="center" colspan="10"><br /></td></tr><tr><td align="center" class="style133" colspan="10" valign="middle">&nbsp;</td></tr></table><br /><br /><br /><br /></ContentTemplate>
    </asp:TabPanel>
    <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
        <HeaderTemplate>خدمات آموزشی<br /></HeaderTemplate>
        <ContentTemplate><br /><table cellpadding="0" dir="rtl" align="center" border="0" 
                frame="box" 
                
                style="display: block; table-layout: auto; border-collapse: collapse; width: 1024px; margin-left: 0px;"><tr><td align="left" bgcolor="#993333" class="style657" valign="middle"><table align="center" cellspacing="1" class="auto-style49" dir="rtl"><tr><td class="style671" valign="middle">سال تحصیلی:</td><td align="right" class="style672" valign="middle"><asp:DropDownList ID="DropDownList7" runat="server" AppendDataBoundItems="True" 
                                    AutoPostBack="True" CssClass="style18" DataSourceID="SqlDataSource6" 
                                    DataTextField="year" DataValueField="id_years" Height="22px" 
                                    onselectedindexchanged="DropDownList7_SelectedIndexChanged1" Width="100px"><asp:ListItem>انتخاب کنید</asp:ListItem></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" 
                                    ControlToValidate="DropDownList7" ErrorMessage="*" ForeColor="Red" 
                                    InitialValue="انتخاب کنید" ValidationGroup="s"></asp:RequiredFieldValidator></td><td align="center" class="style660" valign="middle">&nbsp;</td><td align="right" class="style461" valign="middle">&nbsp;</td></tr><tr><td class="style628" valign="middle">&nbsp;<span class="style658">کد ملی دانش آموز :&nbsp;</span></td><td align="right" class="style672" valign="middle"><asp:TextBox ID="txtCodeA" runat="server" Height="20px" 
                                    ToolTip="کد ملی دانش آموز مورد نظر را وارد کنید" Width="122px"></asp:TextBox><asp:MaskedEditExtender ID="txtCodeA_MaskedEditExtender" runat="server" 
                                    AutoComplete="False" Mask="999-999-999-9" MaskType="Number" 
                                    TargetControlID="txtCodeA" CultureAMPMPlaceholder="" 
                                    CultureCurrencySymbolPlaceholder="" CultureDateFormat="" 
                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                    InputDirection="RightToLeft" ClearMaskOnLostFocus="False"></asp:MaskedEditExtender>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" 
                                    ControlToValidate="txtCodeA" ErrorMessage="*" ForeColor="Red" 
                                    ValidationGroup="s"></asp:RequiredFieldValidator></td><td align="center" class="style660" valign="middle"><asp:Button ID="Button1" runat="server" CssClass="style439" 
                                    OnClick="Button1_Click" style="font-family: Tahoma; font-size: 9pt" 
                                    Text="انتخاب دانش آموز" 
                                    ToolTip="جهت تخصیص خدمات آموزشی ابتدا کد ملی دانش آموز را وارد کرده سپس دکمه انتخاب دانش آموز را فشار دهید" 
                                    ValidationGroup="s" Width="120px" /></td><td align="right" class="style461" valign="middle"><asp:Label ID="lblMessage" runat="server" CssClass="style574" 
                                    ForeColor="#FFCC99" style="color: #FFFF66" Visible="False"></asp:Label></td></tr></table></td></tr><tr><td bgcolor="#CCCCCC" dir="rtl"><table align="center" cellpadding="0" cellspacing="0" dir="rtl" 
                        style="width: 1009px; height: 36px"><tr><td valign="middle">مقطع :</td><td align="right" valign="middle"><asp:DropDownList ID="DropDownList13" runat="server" AutoPostBack="True" 
                                    CssClass="style430" DataSourceID="SqlDataSource5" DataTextField="degree" 
                                    DataValueField="id_degree" Height="22px" 
                                    OnSelectedIndexChanged="DropDownList13_SelectedIndexChanged1" 
                                    style="font-family: Tahoma" Width="128px" AppendDataBoundItems="True" 
                                    CausesValidation="True"><asp:ListItem Value="0">انتخاب کنید</asp:ListItem></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                                    ControlToValidate="DropDownList13" ErrorMessage="*" ForeColor="Red" 
                                    InitialValue="انتخاب کنید" ValidationGroup="max"></asp:RequiredFieldValidator></td><td class="style667" valign="middle">پایه :</td><td align="right" valign="middle"><asp:DropDownList ID="DropDownList9" runat="server" AppendDataBoundItems="True" 
                                    CssClass="style430" DataSourceID="SqlDataSource4" DataTextField="grade" 
                                    DataValueField="id_grade" Height="19px" style="font-family: Tahoma" 
                                    Width="122px"><asp:ListItem>انتخاب کنید</asp:ListItem></asp:DropDownList></td><td valign="middle">جنسیت :</td><td align="right" valign="middle"><asp:DropDownList ID="DropDownList10" runat="server" 
                                    CssClass="style430" Height="22px" style="font-family: Tahoma" Width="98px" 
                                    onselectedindexchanged="DropDownList10_SelectedIndexChanged"><asp:ListItem>انتخاب کنید</asp:ListItem><asp:ListItem Value="1">پسر</asp:ListItem><asp:ListItem Value="2">دختر</asp:ListItem></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
                                    ControlToValidate="DropDownList14" ErrorMessage="*" ForeColor="Red" 
                                    InitialValue="انتخاب کنید" ValidationGroup="max"></asp:RequiredFieldValidator></td><td valign="middle">نوع درخواست :</td><td align="right" valign="middle"><asp:DropDownList ID="DropDownList14" runat="server" 
                                    AppendDataBoundItems="True" AutoPostBack="True" CausesValidation="True" 
                                    CssClass="style39" DataSourceID="SqlDataSource3" DataTextField="type" 
                                    DataValueField="id_type" Height="22px" 
                                    OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" 
                                    ValidationGroup="max" Width="129px"><asp:ListItem Value="0">انتخاب کنید</asp:ListItem></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" 
                                    ControlToValidate="DropDownList14" ErrorMessage="*" ForeColor="Red" 
                                    InitialValue="انتخاب کنید" ValidationGroup="max"></asp:RequiredFieldValidator></td></tr></table></td></tr><tr><td bgcolor="#CCCCCC" class="style438" align="center">مبلغ خدمات فوق : <span class="style437"><asp:Label ID="lblHazine" runat="server" ForeColor="#009933" Text="0"></asp:Label><strong>&nbsp;</strong>ریال</span></td></tr><tr><td align="center" bgcolor="#CCCCCC" class="style438"><asp:Button ID="btnInsertHazine" runat="server" CssClass="style430" 
                        Height="26px" OnClick="btnInsertHazine_Click" 
                        style="font-family: Tahoma; font-size: 9pt" Text="ثبت خدمات" 
                        ValidationGroup="c" Enabled="False" /></td></tr><tr><td bgcolor="#CCCCCC" class="style646" align="center"><asp:Label ID="lblMablaghkol" runat="server" Text="0" Visible="False"></asp:Label></td></tr><tr><td align="right" 
                    bgcolor="#336699" class="style435" 
                        style="border-bottom-style: groove; border-bottom-width: 3px; border-bottom-color: #CC0000; background-color: #336699; color: #FFFFFF;"><asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" 
                        CssClass="style437" OnCheckedChanged="CheckBox3_CheckedChanged" 
                        Text="تخفیف دارد" /></td><span class="style434"></span><font size="2"></font></tr><tr><td bgcolor="#CCCCCC"><table align="center" cellpadding="0" cellspacing="0" class="style669" 
                        dir="rtl"><tr><td align="left" class="style461">طرح تخفیف :</td><td align="right" class="style461"><asp:DropDownList ID="DropDownList12" runat="server" CssClass="style430" 
                                    Enabled="False" Height="22px" style="margin-right: 0px; font-family: Tahoma;" 
                                    Width="122px"><asp:ListItem>انتخاب کنید</asp:ListItem><asp:ListItem Value="1">فرهنگی</asp:ListItem><asp:ListItem Value="2">شاهد</asp:ListItem><asp:ListItem Value="3">رافع</asp:ListItem><asp:ListItem Value="4">موسس</asp:ListItem><asp:ListItem>بستانکار</asp:ListItem>
                    <asp:ListItem>حذف خدمات</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" 
                        ControlToValidate="DropDownList12" ErrorMessage="*" ForeColor="Red" 
                        InitialValue="انتخاب کنید" ValidationGroup="t"></asp:RequiredFieldValidator>
                    </td><td align="left" class="style461">مبلغ تخفیف :</td><td align="right" class="style461"><asp:TextBox ID="txtTakhfif" runat="server" CssClass="style430" Enabled="False" 
                                    Height="22px" style="font-family: Tahoma">0</asp:TextBox><asp:MaskedEditExtender ID="txtTakhfif_MaskedEditExtender" runat="server" 
                                    AutoCompleteValue=" " ClearTextOnInvalid="True" CultureAMPMPlaceholder="" 
                                    CultureCurrencySymbolPlaceholder="" CultureDateFormat="" 
                                    CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" DisplayMoney="Right" 
                                    Enabled="True" InputDirection="RightToLeft" Mask="999,999,999" 
                                    MaskType="Number" TargetControlID="txtTakhfif"></asp:MaskedEditExtender>
                    <span class="style437"><span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" 
                        ControlToValidate="txtTakhfif" ErrorMessage="*" ForeColor="Red" 
                        InitialValue="0" ValidationGroup="t"></asp:RequiredFieldValidator>
                    </span></span></td><td align="right" class="style461">
                        <asp:Button ID="btnTakhfif" runat="server" CssClass="style430" Enabled="False" 
                                    OnClick="btnTakhfif_Click" style="font-family: Tahoma; font-size: 9pt" 
                                    Text="ثبت تخفیف" ValidationGroup="t"></asp:Button></td></tr>
                <tr>
                    <td align="left" class="style461">
                        توضیحات :</td>
                    <td align="right" colspan="3">
                        <asp:TextBox ID="TextBox2" runat="server" Width="274px"></asp:TextBox>
                    </td>
                    <td align="right" class="style461">
                        &nbsp;</td>
                </tr>
                <tr><td align="left" class="style379" colspan="5"><span class="style437"><span><table align="center" class="style673" dir="rtl"><tr><td align="center" class="style627">
                    &nbsp;</td></tr>
                    <tr>
                        <td align="center" class="style627">
                            <span class="style437"><span>
                            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="id_discount" Font-Size="9pt" ForeColor="#333333" 
                                GridLines="None" OnRowCommand="GridView7_RowCommand" 
                                OnRowDataBound="GridView7_RowDataBound" OnRowDeleting="GridView7_RowDeleting" 
                                Width="347px">
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
                    </table></span></span></td></tr></table></td></tr><tr><td class="style426" align="center"><br /><br /></td></tr><tr><td align="center" class="style426"><asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" DataKeyNames="id_financial" OnRowCommand="GridView6_RowCommand" 
                        OnRowDeleting="GridView6_RowDeleting" PageSize="5" Width="626px" 
                        style="font-size: 10pt" onrowdatabound="GridView6_RowDataBound"><Columns><asp:BoundField DataField="year" HeaderText="سال تحصیلی" /><asp:BoundField DataField="degree" HeaderText="مقطع" /><asp:BoundField DataField="grade" HeaderText="پایه" /><asp:BoundField DataField="gender" HeaderText="جنسیت" /><asp:BoundField DataField="type" HeaderText="نوع درخواست" />
                <asp:TemplateField HeaderText="مبلغ پرداختی">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("amount") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" 
                            
                            Text='<%# String.Format("{0:###,###,###}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "amount"))) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField DeleteText="حذف اطلاعات" ShowDeleteButton="True" >
                <ControlStyle Font-Size="8pt" ForeColor="#FF3300" />
                </asp:CommandField>
            </Columns><FooterStyle BackColor="#FFFFCC" ForeColor="#330099" /><HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" /><PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" /><RowStyle BackColor="White" ForeColor="#330099" /><SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" /><SortedAscendingCellStyle BackColor="#FEFCEB" /><SortedAscendingHeaderStyle BackColor="#AF0101" /><SortedDescendingCellStyle BackColor="#F6F0C0" /><SortedDescendingHeaderStyle BackColor="#7E0000" /></asp:GridView></td></tr><tr><td align="center" class="style687"><table align="center" cellspacing="1" class="style688" dir="rtl"><tr><td class="style689"><span class="style693">مبلغ تخفیف :</span></td><td class="style690"><span class="style437"><span><asp:Label ID="lblTakhfifs" runat="server" ForeColor="#009900" 
                                style="color: #FF6666" Text="0"></asp:Label>&nbsp;<span class="style565"><span class="style685"><span class="style692">ریال</span></span></span></span></span></td><td class="style674">&nbsp;</td><td class="style691"><span class="style437"><span class="style692">مبلغ پرداختی :</span></span></td><td><span class="style437"><span><asp:Label ID="lblPardakhti" runat="server" CssClass="style437" 
                                style="color: #3399FF; " Text="0"></asp:Label>&nbsp;<span class="style565"><span class="style685"><span class="style692">ریال</span></span></span></span></span></td></tr></table></td></tr><tr><td align="center" valign="middle"><asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                        SelectCommand="SELECT * FROM [Degree]"></asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                        SelectCommand="SELECT * FROM [Type_Tuition]"></asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                        SelectCommand="SELECT * FROM [Grade] WHERE ([id_degree] = @id_degree)"><SelectParameters><asp:ControlParameter ControlID="DropDownList13" Name="id_degree" 
                                PropertyName="SelectedValue" /></SelectParameters></asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DBConn %>" 
                        SelectCommand="SELECT * FROM [School_Years]"></asp:SqlDataSource></td></tr></table><br /><br /></ContentTemplate>
    </asp:TabPanel>
                    <asp:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel4">
                        <HeaderTemplate>مشخصات مالی<br /></HeaderTemplate>
                        <ContentTemplate><br /><table align="center" cellpadding="0" cellspacing="0" class="auto-style1"><tr><td align="center" valign="top"><br />
                            <table align="center" bgcolor="#990033" cellpadding="0" cellspacing="0" 
                                style="border-collapse: collapse; border-spacing: 0px; "><tr><td class="style703" 
                                        valign="middle" align="left"><span><span class="style658">سال&nbsp; تحصیلی :</span> </span></td><td class="style626" valign="middle" align="right">
                                        <asp:DropDownList ID="DropDownList16" runat="server" 
                                            AppendDataBoundItems="True" AutoPostBack="True" CssClass="style18" 
                                            DataSourceID="SqlDataSource8" DataTextField="year" DataValueField="id_years" 
                                            Height="22px" OnSelectedIndexChanged="DropDownList16_SelectedIndexChanged" 
                                            Width="119px" style="color: #000000"><asp:ListItem>انتخاب کنید</asp:ListItem></asp:DropDownList>
                                        <span><asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" 
                                                        ControlToValidate="DropDownList16" ErrorMessage="*" ForeColor="White" 
                                                        InitialValue="انتخاب کنید" ValidationGroup="ff"></asp:RequiredFieldValidator></span></td><td align="center" class="style646" colspan="2" valign="middle">&nbsp;&nbsp; </td><td align="center" class="style355" rowspan="2" valign="middle">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        AlternateText="پرینت چک و حواله ها" CssClass="style636" Enabled="False" 
                                        Height="40px" ImageUrl="~/Mehr-Design/logo.jpg" OnClick="ImageButton1_Click" 
                                        Width="40px" /></td></tr><tr><td valign="middle" align="left">
                                    <span class="style658">&nbsp;کد ملی دانش آموز :</span>&nbsp;</td><td align="right" class="style624" valign="middle"><asp:TextBox ID="txtcode3" runat="server" CssClass="style16" Enabled="False" Height="20px" Width="126px"></asp:TextBox><asp:MaskedEditExtender ID="txtcode3_MaskedEditExtender" runat="server" 
                                                        AutoComplete="False" Mask="999-999-999-9" MaskType="Number" 
                                                        TargetControlID="txtcode3" CultureAMPMPlaceholder="" 
                                                        CultureCurrencySymbolPlaceholder="" CultureDateFormat="" 
                                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                                        CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                                        InputDirection="RightToLeft" ClearMaskOnLostFocus="False"></asp:MaskedEditExtender>
                                        <span><asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" 
                                                        ControlToValidate="txtcode3" ErrorMessage="*" ForeColor="White" 
                                                        ValidationGroup="ff"></asp:RequiredFieldValidator></span></td><td align="right" class="style625" valign="middle"><asp:Button ID="btnSearchMali" runat="server" CssClass="style39" Height="24px" 
                                                        OnClick="btnSearchMali_Click" Text="جستجو" Width="85px" ValidationGroup="ff" /></td><td class="auto-style21" valign="middle"><span class="style569">&nbsp;</span><span class="style470">نام و نام خانوادگی :</span>&nbsp; <span class="style470"><span class="style17"><strong><asp:Label ID="lblMessage0" runat="server" CssClass="style570" style="color: #FFFF66"></asp:Label></strong></span></span></td></tr></table><table align="center" bgcolor="#006699" cellpadding="0" cellspacing="0" class="auto-style28" style="color: #CCCCCC; background-color: #006699"><tr><td align="center" class="auto-style40" dir="rtl" valign="middle"><span>مبلغ کل چک ها </span></td></span><span class="style470"><td align="center" class="auto-style40" dir="rtl" valign="middle"><span>مبلغ کل حواله ها </span></td><td align="center" class="auto-style40" dir="rtl" valign="middle">مبلغ چک های پاس شده</td><td align="center" class="auto-style40" dir="rtl" valign="middle">مبلغ چک های ثبت شده</td><td align="center" class="style695" dir="rtl" valign="middle">مبلغ کل پرداختی</td></span><td align="center" class="auto-style39" dir="rtl" valign="middle"><span class="style39"><font size="2">تخفیف</font></span></td><td align="center" class="auto-style39" dir="rtl" valign="middle">کل مبلغ&nbsp;بدهی </font></span></td></tr><tr><td align="center" class="style470" dir="rtl" valign="middle"><span><strong><asp:Label ID="lblkol" runat="server" Text="0"></asp:Label></strong></span></td><td align="center" dir="rtl" valign="middle"><span><strong><asp:Label ID="lblHvale" runat="server" Text="0"></asp:Label></strong></span></td><td align="center" dir="rtl" valign="middle"><strong><asp:Label ID="lblPardakhtshode" runat="server" Text="0"></asp:Label></strong></td><td align="center" dir="rtl" valign="middle"><strong><asp:Label ID="lblPardakhtnashode" runat="server" Text="0"></asp:Label></strong></td><td align="center" dir="rtl" valign="middle"><asp:Label ID="lbldarJaryan" runat="server" Text="0" 
                                style="color: #FFCC00; font-weight: 700"></asp:Label></td><td align="center" class="auto-style38" dir="rtl" valign="middle"><strong><font size="2"><asp:Label ID="lblDiscount" runat="server" CssClass="style39" Text="0"></asp:Label></font></strong></td><td align="center" class="auto-style38" dir="rtl" valign="middle"><span class="style39"><font size="2"><strong><asp:Label ID="lblBedehi" runat="server" Text="0"></asp:Label></strong></font></span></td></tr></table><br /><table align="center" cellspacing="1" class="auto-style49" dir="rtl"><tr><td align="center" class="auto-style50" style="background-color: #1277BD; border-bottom-style: ridge; border-color: #CC0000; color: #FFFFFF" valign="bottom">اطلاعات چک</td></tr><tr><td align="center" class="auto-style51" valign="top"><table align="center" class="auto-style3" dir="rtl" style="border-collapse: collapse; border-spacing: 0px" width="1000"><tr><td align="left" bgcolor="#CCCCCC" class="style437">نام بانک :</td><td align="right" bgcolor="#CCCCCC" class="style676"><span class="style17"><asp:TextBox ID="txtNameBankCheck" runat="server" CssClass="style16" Height="22px" Width="110px"></asp:TextBox></span></td><td align="center" bgcolor="#CCCCCC" class="style316"><span class="style17"><asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="txtNameBankCheck" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="check"></asp:RequiredFieldValidator></span></td><td align="center" bgcolor="#CCCCCC" rowspan="9"><span class="style17" dir="rtl"><span class="style17">
                            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
                                                                    AutoGenerateColumns="False" 
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                                                    BorderStyle="Groove" BorderWidth="2px" Caption="چک های ثبت شده" 
                                                                    CaptionAlign="Top" CellPadding="1" 
                                CellSpacing="1" DataKeyNames="id_check" 
                                                                    
                                EmptyDataText="چکی به نام این دانش اموز ثبت نشده است" Font-Size="10pt" 
                                                                    ForeColor="Black" Height="19px" HorizontalAlign="Center" 
                                                                    onpageindexchanging="GridView4_PageIndexChanging" 
                                                                    OnRowCommand="GridView4_RowCommand" OnRowDeleting="GridView4_RowDeleting" 
                                                                    PageSize="5" 
                                ShowHeaderWhenEmpty="True" Width="767px" 
                                onrowdatabound="GridView4_RowDataBound" 
                                onselectedindexchanged="GridView4_SelectedIndexChanged"><AlternatingRowStyle BackColor="PaleGoldenrod" /><Columns><asp:BoundField DataField="namebank" HeaderText="نام بانک" 
                                                                            SortExpression="namebank" /><asp:BoundField DataField="Branch" HeaderText="نام شعبه" 
                                                                            SortExpression="Branch" /><asp:BoundField DataField="seryal" HeaderText="سریال چک" 
                                                                            SortExpression="seryal" /><asp:BoundField DataField="datecheck" HeaderText="تاریخ چک" 
                                                                            SortExpression="datecheck" /><asp:BoundField DataField="accountnumber" HeaderText="شماره حساب" 
                                                                            SortExpression="accountnumber" /><asp:BoundField DataField="accountname" HeaderText="صاحب حساب" 
                                                                            SortExpression="accountname" />
                                <asp:TemplateField HeaderText="مبلغ چک" SortExpression="Amount">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" 
                                            Text='<%# String.Format("{0:###,###,### ریال}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "amount"))) %>' ></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="status" HeaderText="وضعیت چک" 
                                                                            SortExpression="status" /><asp:BoundField DataField="datedaryaft" HeaderText="تاریخ دریافت" 
                                                                            SortExpression="datedaryaft" /><asp:BoundField DataField="type" HeaderText="بابت" />
                                <asp:CommandField DeleteText="حذف چک" ShowDeleteButton="True" >
                                <ControlStyle Font-Size="8pt" ForeColor="#FF3300" Width="55px" />
                                </asp:CommandField>
                            </Columns><EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" /><FooterStyle BackColor="Tan" /><HeaderStyle BackColor="#FF6600" Font-Bold="True" Height="25px" 
                                                                        HorizontalAlign="Center" VerticalAlign="Middle" /><PagerSettings PageButtonCount="5" /><PagerStyle BackColor="#336699" ForeColor="#CCCCCC" HorizontalAlign="Center" /><RowStyle HorizontalAlign="Center" VerticalAlign="Middle" /><SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" /><SortedAscendingCellStyle BackColor="#FAFAE7" /><SortedAscendingHeaderStyle BackColor="#DAC09E" /><SortedDescendingCellStyle BackColor="#E1DB9C" /><SortedDescendingHeaderStyle BackColor="#C2A47B" /></asp:GridView></span><br />&nbsp;</span><br /> <br /></td></tr><tr><td align="left" bgcolor="#CCCCCC" class="style677">تاریخ چک :</td><td align="right" bgcolor="#CCCCCC" class="style679"><rhp:DatePicker ID="DatePicker1" runat="server" Height="22px" Width="80px" 
                                                                    DatePersian="" LabelText="" ShowOthers="False" ShowWeekNumbers="False"></rhp:DatePicker></td><td align="center" bgcolor="#CCCCCC" class="style678"><span class="style17"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                                    ControlToValidate="DatePicker1" ErrorMessage="*" ForeColor="#CC0000" 
                                                                    ValidationGroup="check"></asp:RequiredFieldValidator></span></td></tr><tr><td align="left" bgcolor="#CCCCCC" class="style677">شماره چک :</td><td align="right" bgcolor="#CCCCCC" class="style475"><asp:TextBox ID="txtShCheck" runat="server" CssClass="style16" Height="22px" Width="110px"></asp:TextBox></td><td align="center" bgcolor="#CCCCCC" class="style678"><span class="style17"><asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" 
                                                                    ControlToValidate="txtShCheck" ErrorMessage="*" ForeColor="#CC0000" 
                                                                    ValidationGroup="check"></asp:RequiredFieldValidator></span></td></tr><tr><td align="left" bgcolor="#CCCCCC" class="style677">نام شعبه :</td><td align="right" bgcolor="#CCCCCC" class="style475"><asp:TextBox ID="txtShobe" runat="server" CssClass="style16" Height="22px" Width="110px"></asp:TextBox></td><td align="center" bgcolor="#CCCCCC" class="style678"></td></tr><tr><td align="left" bgcolor="#CCCCCC" class="style677">شماره حساب :</td><td align="right" bgcolor="#CCCCCC" class="style475"><asp:TextBox ID="txtShHesab" runat="server" CssClass="style16" Height="22px" Width="110px"></asp:TextBox></td><td align="center" bgcolor="#CCCCCC" class="style678"></td></tr><tr><td align="left" bgcolor="#CCCCCC" class="style677">صاحب حساب :</td><td align="right" bgcolor="#CCCCCC" class="style475"><asp:TextBox ID="txtSahebHesab" runat="server" Height="22px" Width="108px"></asp:TextBox></td><td align="center" bgcolor="#CCCCCC" class="style678"></td></tr><tr><td align="left" bgcolor="#CCCCCC" class="style677">مبلغ (ریال) :</td><td align="right" bgcolor="#CCCCCC" class="style681"><asp:TextBox ID="txtMablagh" runat="server" CssClass="style16" Height="22px" Width="110px"></asp:TextBox><asp:MaskedEditExtender ID="txtMablagh_MaskedEditExtender" runat="server" 
                                                                    AutoCompleteValue=" " DisplayMoney="Right" InputDirection="RightToLeft" 
                                                                    Mask="999,999,999" MaskType="Number" TargetControlID="txtMablagh" 
                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                                                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                                                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True"></asp:MaskedEditExtender></td><td align="center" bgcolor="#CCCCCC" class="style678"><span class="style17"><asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="txtMablagh" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="check"></asp:RequiredFieldValidator></span></td></tr><tr><td align="left" bgcolor="#CCCCCC" class="style682">بابت :</td><td align="right" bgcolor="#CCCCCC" class="style683"><asp:DropDownList ID="DropDownList17" runat="server" 
                                                                    DataSourceID="SqlDataSource7" DataTextField="type" DataValueField="id_type" 
                                                                    Height="21px" Width="111px" AppendDataBoundItems="True"><asp:ListItem>انتخاب کنید</asp:ListItem></asp:DropDownList></td><td align="center" bgcolor="#CCCCCC" class="style316"><span class="style17"><asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" 
                                                                    ControlToValidate="DropDownList17" ErrorMessage="*" ForeColor="#CC0000" 
                                                                    InitialValue="انتخاب کنید" ValidationGroup="check"></asp:RequiredFieldValidator></span></td></tr><tr><td align="center" bgcolor="#CCCCCC" class="auto-style48" colspan="3" valign="middle"><span class="style17" dir="rtl"><span class="style17"><asp:Button ID="btnInserCheck" runat="server" CssClass="style248" Height="30px" 
                                                                    OnClick="btnInserCheck_Click" 
                                                                    style="font-family: Tahoma; font-size: 9pt; color: #FFFFFF; background-color: #006699;" 
                                                                    Text="ثبت چک" ValidationGroup="check" Width="158px" /></span></span></td></tr></table></td></tr><tr><td align="center" class="style355" style="background-color: #1277BD; border-bottom-style: ridge; border-color: #CC0000; color: #FFFFFF" valign="bottom">اطلاعات حواله</td></tr><tr><td align="center" valign="top"><table align="center" class="auto-style3" style="border-collapse: collapse; border-spacing: 0px; "><tr><td align="left" bgcolor="#CCCCCC" class="style684">نام بانک :</td><td align="right" bgcolor="#CCCCCC" class="auto-style46"><asp:TextBox ID="txtNameBankHavale" runat="server" CssClass="style16" Height="22px" Width="108px"></asp:TextBox></td><td bgcolor="#CCCCCC" class="style208"><span class="style17"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNameBankHavale" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="havale"></asp:RequiredFieldValidator></span></td><td align="center" bgcolor="#CCCCCC" rowspan="9" valign="middle" dir="rtl"><br /><span class="style17">
                            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
                                                                    AutoGenerateColumns="False" 
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                                                    BorderStyle="Groove" BorderWidth="2px" Caption="حواله  های ثبت شده" 
                                                                    CaptionAlign="Top" CellPadding="1" 
                                CellSpacing="1" DataKeyNames="id_havale" 
                                                                    
                                EmptyDataText="حواله ای به نام این دانش آموز ثبت نشده است" Font-Size="10pt" 
                                                                    ForeColor="Black" Height="18px" HorizontalAlign="Center" 
                                                                    onpageindexchanging="GridView5_PageIndexChanging" 
                                                                    OnRowCommand="GridView5_RowCommand" OnRowDeleting="GridView5_RowDeleting" 
                                                                    PageSize="5" 
                                ShowHeaderWhenEmpty="True" Width="740px" 
                                onrowdatabound="GridView5_RowDataBound"><AlternatingRowStyle BackColor="PaleGoldenrod" /><Columns><asp:BoundField DataField="accountnumber" HeaderText="شماره فیش" 
                                                                            SortExpression="accountnumber" /><asp:BoundField DataField="datehavale" HeaderText="تاریخ حواله" 
                                                                            SortExpression="datehavale" /><asp:BoundField DataField="datedaryaft" HeaderText="تاریخ دریافت " 
                                                                            SortExpression="datedaryaft" /><asp:BoundField DataField="namebank" HeaderText="نام بانک" 
                                                                            SortExpression="namebank" /><asp:BoundField DataField="Branch" HeaderText="شعبه" SortExpression="Branch" />
                                <asp:TemplateField HeaderText="مبلغ " SortExpression="Amount">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# String.Format("{0:###,###,### ریال}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "amount")))%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="type" HeaderText="بابت" /><asp:BoundField DataField="payer" HeaderText="پرداخت کننده" />
                                <asp:CommandField DeleteText="حذف حواله" ShowDeleteButton="True" >
                                <ControlStyle Font-Size="8pt" ForeColor="#FF3300" Width="55px" />
                                </asp:CommandField>
                            </Columns><EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" /><FooterStyle BackColor="Tan" /><HeaderStyle BackColor="#FF6600" Font-Bold="True" Height="25px" 
                                                                        HorizontalAlign="Center" VerticalAlign="Middle" /><PagerSettings PageButtonCount="5" /><PagerStyle BackColor="#336699" ForeColor="#CCCCCC" HorizontalAlign="Center" /><RowStyle HorizontalAlign="Center" VerticalAlign="Middle" /><SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" /><SortedAscendingCellStyle BackColor="#FAFAE7" /><SortedAscendingHeaderStyle BackColor="#DAC09E" /><SortedDescendingCellStyle BackColor="#E1DB9C" /><SortedDescendingHeaderStyle BackColor="#C2A47B" /></asp:GridView></span><br /><br /></td></tr><tr><td align="left" bgcolor="#CCCCCC" class="auto-style12">تاریخ پرداخت :</td><td align="right" bgcolor="#CCCCCC" class="style679"><rhp:DatePicker ID="DatePicker2" runat="server" Height="22px" Width="80px" 
                                                                    DatePersian="" LabelText="" ShowOthers="False" ShowWeekNumbers="False"></rhp:DatePicker></td><td bgcolor="#CCCCCC" class="style208"><span class="style17"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                                    ControlToValidate="DatePicker2" ErrorMessage="*" ForeColor="#CC0000" 
                                                                    ValidationGroup="havale"></asp:RequiredFieldValidator></span></td></tr><tr><td align="left" bgcolor="#CCCCCC" class="auto-style12">شماره فیش :</td><td align="right" bgcolor="#CCCCCC" class="auto-style46"><asp:TextBox ID="txtShFish" runat="server" CssClass="style16" Height="22px" Width="108px"></asp:TextBox></td><td bgcolor="#CCCCCC" class="style208"><span class="style17"><asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="txtShFish" ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="havale"></asp:RequiredFieldValidator></span></td></tr><tr><td align="left" bgcolor="#CCCCCC" class="auto-style12">نام شعبه :</td><td align="right" bgcolor="#CCCCCC" class="auto-style46"><asp:TextBox ID="txtshobeHavale" runat="server" CssClass="style16" Height="22px" Width="108px"></asp:TextBox></td><td bgcolor="#CCCCCC" class="style208">&nbsp;</td></tr><tr><td align="left" bgcolor="#CCCCCC" class="auto-style12">پرداخت کننده :</td><td align="right" bgcolor="#CCCCCC" class="auto-style46"><asp:TextBox ID="txtPayer" runat="server" Height="22px" Width="108px"></asp:TextBox></td><td bgcolor="#CCCCCC" class="style208">&nbsp;</td></tr><tr><td align="left" bgcolor="#CCCCCC" class="auto-style12">مبلغ (ریال) :</td><td align="right" bgcolor="#CCCCCC" class="auto-style46"><asp:TextBox ID="txtMablaghHavale" runat="server" CssClass="style16" 
                                                                    Height="22px" Width="108px"></asp:TextBox><asp:MaskedEditExtender ID="txtMablaghHavale_MaskedEditExtender" runat="server" 
                                                                    AutoCompleteValue=" " DisplayMoney="Right" InputDirection="RightToLeft" 
                                                                    Mask="999,999,999" MaskType="Number" TargetControlID="txtMablaghHavale" 
                                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                                                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                                                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True"></asp:MaskedEditExtender></td><td bgcolor="#CCCCCC" class="style208"><span class="style17"><asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                                                                    ControlToValidate="txtMablaghHavale" ErrorMessage="*" ForeColor="#CC0000" 
                                                                    ValidationGroup="havale"></asp:RequiredFieldValidator></span></td></tr><tr><td align="left" bgcolor="#CCCCCC" class="auto-style12">بابت : </td><td align="right" bgcolor="#CCCCCC" class="auto-style46"><asp:DropDownList ID="DropDownList18" runat="server" 
                                                                    AppendDataBoundItems="True" DataSourceID="SqlDataSource7" DataTextField="type" 
                                                                    DataValueField="id_type" Height="22px" Width="106px"><asp:ListItem>انتخاب کنید</asp:ListItem></asp:DropDownList></td><td bgcolor="#CCCCCC" class="style208"><span class="style17"><asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" 
                                                                    ControlToValidate="DropDownList18" ErrorMessage="*" ForeColor="#CC0000" 
                                                                    ValidationGroup="havale" InitialValue="انتخاب کنید"></asp:RequiredFieldValidator></span></td></tr><tr><td align="center" bgcolor="#CCCCCC" class="auto-style47" colspan="3" valign="middle"><asp:Button ID="btnInserHavale" runat="server" CssClass="style248" Height="31px" OnClick="btnInserHavale_Click" style="font-family: Tahoma; font-size: 9pt; color: #FFFFFF; background-color: #006699;" Text="ثبت حواله" ValidationGroup="havale" Width="129px" /></td></tr></table></td></tr></table><br /><br /><br /></td></tr></table><span><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConn %>" SelectCommand="SELECT * FROM [Students_Check]"></asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DBConn %>" SelectCommand="SELECT * FROM [Type_Tuition]"></asp:SqlDataSource></span></tr><td align="center" class="style489"></td><tr><td class="style17"><span class="style17">&nbsp;<asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:DBConn %>" SelectCommand="SELECT * FROM [School_Years]"></asp:SqlDataSource></span><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConn %>" SelectCommand="SELECT * FROM [Students_Havale]"></asp:SqlDataSource></td></tr></table></ContentTemplate>
                    </asp:TabPanel>
</asp:TabContainer>
<asp:DropShadowExtender ID="TabContainer1_DropShadowExtender" runat="server" 
    TargetControlID="TabContainer1" Opacity="5" Radius="8" Width="8">
</asp:DropShadowExtender>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

