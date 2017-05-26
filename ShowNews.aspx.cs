using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessFields;
using DataAccessLayer;


public partial class ShowNews : System.Web.UI.Page
{
    TBLNewsFields nrow = new TBLNewsFields();
    TBLNewsLayers news = new TBLNewsLayers();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            
            if (Session["id"] != null)
            {
                nrow.nid = int.Parse(Session["id"].ToString());
                ds = news.SearchNews(nrow);
                Label1.Text = ds.Tables["SearchNews"].Rows[0][4].ToString();
                Label2.Text = ds.Tables["SearchNews"].Rows[0][3].ToString();
                Label3.Text = ds.Tables["SearchNews"].Rows[0][1].ToString();
                TextBox1.Text = ds.Tables["SearchNews"].Rows[0][2].ToString();
            }
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}