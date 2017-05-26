using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessFields;
using DataAccessLayer;



public partial class User_News : System.Web.UI.Page
{

TBLNewsFields nrow=new TBLNewsFields();
TBLNewsLayers news = new TBLNewsLayers();
 
static int id=0;

 
protected void  Button1_Click(object sender, EventArgs e)
{
    nrow.nid = id;
    nrow.ndate = (SDKClass.GetFarsiDate(DateTime.Now, true));
    nrow.ntitle = TextBox2.Text;
    nrow.news = TextBox3.Text;
    nrow.userid = User.Identity.Name;
    if (Session["check"].ToString() == "0")
    {
        news.Insertnews(nrow);
    }
    else if (Session["check"].ToString() == "1")
    {
        news.UpdateNews(nrow);
        Session["check"] = 0;
    }
    Grid_Refresh();
    TextBox2.Text = string.Empty;
    TextBox3.Text = string.Empty;
  

    
      
}
protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
{


}
protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
{
    int idx = Convert.ToInt32(e.CommandArgument);
    if (e.CommandName == "Select")
    {
        nrow.nid = (int)GridView1.DataKeys[idx].Value;
        DataSet ds = new DataSet();
        ds.Clear();
        ds = news.SearchNews(nrow);
        id = int.Parse(ds.Tables["SearchNews"].Rows[0][0].ToString());
      TextBox3.Text = ds.Tables["SearchNews"].Rows[0][2].ToString();
        TextBox2.Text = ds.Tables["SearchNews"].Rows[0][4].ToString();
      //  DatePicker2.Text = ds.Tables["SearchNews"].Rows[0][3].ToString();
        Session["check"] = 1;
    }
    if (e.CommandName == "Delete")
    {
        nrow.nid = (int)GridView1.DataKeys[idx].Value;
        news.DeleteNews(nrow);
        Grid_Refresh();

    }
}
void Grid_Refresh()
{
    GridView1.DataSource = news.SelectNews();
    GridView1.DataBind();
}
protected void Page_Load(object sender, EventArgs e)
{
    if (IsPostBack == false)
    {
        Grid_Refresh();
        Session["check"]=0;
    }
}
}