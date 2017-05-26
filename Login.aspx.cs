using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using DataAccessFields;
using DataAccessLayer;
using System.Web.UI;
using System.Web.UI.WebControls;
using TINYLib;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
    TBLNewsFields nrow = new TBLNewsFields();
    TBLNewsLayers news = new TBLNewsLayers();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (DateTime.Now.Day == 28)
            RadNotification2.Visible = true;
       
        Grid1_Refresh();

 // TinyPlusCtrl tinyP = show();
   //  string err = tinyP.GetTPlusErrorCode().ToString();
   //   ErrorShowPlus(err, lblErr);
     
    }


    #region ArrayQuery

    string[] ArrRequest = new string[20] { "91D74F5E7DDB338BB6B9", "1767C5E0F36ED61E3DCC", "3767E5F493BDB36B1619", "FE74ACB15C532B032E31", "4866782736AA86580716", "3E76ECFF9A56F6041726", "C90F8796B5A8DC4A6978", "756B23CED1085CC6E5F4", "BFF56D7E1D2A42D8EB96", "01473FCEEDB0E86E711C", "3B73EBFC9B9EC64E5160", "B0AA630E111446C4D7F2", "88DC466574796B37D2E5", "B1CB537E03CE46FC8FAA", "8E46BC4F6A5400021530", "E1279FAEB1D72787A2B5", "2533D3E2810D633BE6E9", "54000215308D63BB6669", "144436D5E4A7D7556477", "3351E1F2859AA2485B06" };
    string[] ArrResponse = new string[20] { "11D7777055A4D4645F62", "B62E98C3BA2878C8EDA6", "D62EB8AF5A3E5404FF02", "CA4C0C178CA93969466B", "15FB15CCE3375B35EC03", "8A4ACCE146ED95CFC6FD", "4C0E8E85B048A4361F18", "877949264B9D59FBE2D9", "C113839A83B717B59083", "A1678700E552B23829D6", "C4148495843888180942", "CCBA89668BAF058F86B1", "1DD97B6259DCF21E4980", "CB19B99679DA5ADC3116", "1A5A1C715657B3B9B09B", "C1872720112E268EB9B0", "37513912FBCE04D48F92", "57B3B9B09B4E04540F12", "99718BF2E9667E083F36", "8973CBE23767372540F3" };


    #endregion



    public TinyPlusCtrl show()
    {
        TinyPlusCtrl tinyP = new TinyPlusCtrl();

        tinyP.FindFirstTPlus("97ACEB83A6EF4AB2B5F3E7903BB237", "4B43790837C230F085A07D732BD6D9EA4E9AB9481B23C9D88790AE405362CD43FB8AA96ED61C3BCA2D43DBEA8973E32334D3", "AE24B48B7289014960498E24946B523AEABC9DF678A8D6CD24E5BBA5C097FE14C4BFC28632664F484848669DB4174D15F2D5");

        return tinyP;
    }

    private void ErrorShowPlus(string err, Label lbl)
    {
        if (err == "0")
        {

            lbl.Text = err + @"  " + @"قفل متصل شده است";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Green;
            Login1.Enabled = true;



        }
        if (err == "1")
        {
            lbl.Text = err + @" - " + @"قفل  پیدا نشد";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Red;
            Login1.Enabled = false;
        }
        if (err == "2")
        {
            lbl.Text = err + @" - " + @"را صحیح وارد نمایید UserKey";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Red; Login1.Enabled = false;
        }
        if (err == "3")
        {
            lbl.Text = err + @" - " + @" را دوباره راه اندازی نمایید Tiny Service";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Red; Login1.Enabled = false;

        }
        if (err == "4")
        {
            lbl.Text = err + @" - " + @"خطا در ثبت اطلاعات روی قفل";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Red; Login1.Enabled = false;
        }
        if (err == "5")
        {
            lbl.Text = err + @" - " + @"آدرس سرور را صحیح وارد نمایید";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Red; Login1.Enabled = false;
        }
        if (err == "6")
        {
            lbl.Text = err + @" - " + @"ارتباط با سرور برقرار نشد";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Red; Login1.Enabled = false;
        }
        if (err == "7")
        {
            lbl.Text = err + @" - " + @"تعداد کاربران شبکه هماهنگ نیست";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Red; Login1.Enabled = false;
        }
        if (err == "8")
        {
            lbl.Text = err + @" - " + @"ActiveX مشکل در ";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Red; Login1.Enabled = false;
        }
        if (err == "9")
        {
            lbl.Text = err + @" - " + @"خطا در خواندن اطلاعات در شبکه";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Red; Login1.Enabled = false;
        }
        if (err == "10")
        {
            lbl.Text = err + @" - " + @"داده های قفل نا معتبر است";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Red; Login1.Enabled = false;
        }
        if (err == "11")
        {
            lbl.Text = err + @" - " + @"قفل به اشتراک گذاشته شده است";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Red; Login1.Enabled = false;
        }
        if (err == "12")
        {
            lbl.Text = err + @" - " + @"Query مشکل در";
            RadNotification3.Visible = true;
            lbl.ForeColor = Color.Red; Login1.Enabled = false;
        }
    }

    void Grid1_Refresh()
    {
       
        GridView1.DataSource = news.SelectNews();
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string GetDynamicContent(string contextKey)
    {
        return default(string);
    }
    protected void Login1_LoggedIn(object sender, EventArgs e)
    {


        if (Roles.IsUserInRole(Login1.UserName, "Admin"))
            Response.Redirect("Admin/Main.aspx");
        else
            if (Roles.IsUserInRole(Login1.UserName, "Users"))
                Response.Redirect("User/Main.aspx");
             else
                if (Roles.IsUserInRole(Login1.UserName, "Teacher"))
                    Response.Redirect("Teacher/Main.aspx");
                else
                    if (Roles.IsUserInRole(Login1.UserName, "finance"))
                        Response.Redirect("Finance/Finance.aspx");
                    else

                    if (Roles.IsUserInRole(Login1.UserName, "Students"))
                        Response.Redirect("Student/Main.aspx");
                    else if (Roles.IsUserInRole(Login1.UserName, "Hygiene"))
                           Response.Redirect("Hygiene/StudentsHygiene.aspx");
                        else if (Roles.IsUserInRole(Login1.UserName, "Consult"))
                                Response.Redirect("Consult/StudentsConsultation.aspx");
                    else
            Response.Redirect("Noaccess.aspx");
    }

    protected void Login1_LoggingIn(object sender, LoginCancelEventArgs e)
    {
       

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "select")
        {
            int id = (int)GridView1.DataKeys[idx].Value;
            Session["id"] = id;
            Response.Redirect("ShowNews.aspx");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Grid1_Refresh();
    }
    protected void RadNotification1_CallbackUpdate(object sender, Telerik.Web.UI.RadNotificationEventArgs e)
    {
       
        lbl.Text = news.SelectNews().Tables["SelectNews"].Rows[0][4].ToString();
    }
    protected void RadNotification3_CallbackUpdate(object sender, Telerik.Web.UI.RadNotificationEventArgs e)
    {

    }
}