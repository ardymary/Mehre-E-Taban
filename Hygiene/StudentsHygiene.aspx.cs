using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.WebControls;
using DataAccessFields;
using System.Web.UI.HtmlControls;
using DataAccessLayer;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class Admin_StudentsHygiene : System.Web.UI.Page
{
    TBLStudentAmountFields arow = new TBLStudentAmountFields();
    TBLStudentAmounLayers amount = new TBLStudentAmounLayers();

    TBLSchoolYearsField yrow = new TBLSchoolYearsField();
    TBLSchoolYearsLayers year = new TBLSchoolYearsLayers();

    TBLStudentInformationFields srow = new TBLStudentInformationFields();
    TBLStudentInformationLayer student = new TBLStudentInformationLayer();

    TBLStudentsFinancialFields frow = new TBLStudentsFinancialFields();
    TBLStudentsFinancialLayers finacial = new TBLStudentsFinancialLayers();

    TBLStudentsDegreeFields degrow = new TBLStudentsDegreeFields();
    TBLStudentsDegreeLayers degree = new TBLStudentsDegreeLayers();

    TBLConsultationFields crow = new TBLConsultationFields();
    TBLConsultationLayers cons = new TBLConsultationLayers();

    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {

            Session["ch"] = 0;
            ds.Clear();
            ds = year.SelectYears();

            Session["years"] = ds.Tables["year"].Rows[ds.Tables["year"].Rows.Count - 1][1].ToString();

            degrow.year = Session["years"].ToString();

        }
    }
    protected void btnSaerch_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {

            srow.internationalcode = txtCode.Text;//.Replace("-", "");


            GridView1.Visible = true;
            degrow.year = Session["years"].ToString();
            Session["search"] = txtCode.Text;
            GridView1.DataSource = student.SearchPersonalInfoByCode(srow, degrow);
            GridView1.DataBind();
            Session["search"] = txtCode.Text;
            Grid_refresh();
        }

        if (RadioButton3.Checked)
        {
            srow.family = txtFamily.Text;
            srow.name = txtName.Text;

            degrow.year = Session["years"].ToString();
            GridView1.Visible = true;
            if (txtName.Text == string.Empty)
            {
                GridView1.DataSource = student.SearchStudentsByFamily(srow, degrow);
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = student.SearchStudentsByNameFamily(srow, degrow);
                GridView1.DataBind();
            }

            Session["search"] = 0;
            Grid_refresh();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Select")
        {
            Session["search"] = (string)GridView1.DataKeys[idx].Value;

            GridView1.Rows[idx].ForeColor = System.Drawing.Color.Blue;
            Grid_refresh();
            Session["ch"] = 0;
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;

        }
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        //GridView1.SelectedRow.ForeColor = System.Drawing.Color.FromArgb(333333);
        crow.internationalcode = Session["search"].ToString();
        crow.problem = TextBox1.Text;
        crow.recommendation = TextBox2.Text;
        crow.date = SDKClass.GetFarsiDate(DateTime.Now, false);
        crow.description = TextBox3.Text;
        crow.status = 1;

        if (Session["ch"].ToString() == "0")
        {
            cons.InsertStudentsConsultation(crow);

        }
        else if (Session["ch"].ToString() == "1")
        {
            crow.id = int.Parse(Session["id"].ToString());
            cons.UpdateConsultation(crow);
            Session["ch"] = 0;

        }

        Grid_refresh();
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        crow.id = (int)GridView2.DataKeys[e.RowIndex].Value;
        cons.DeleteConsultation(crow);
        Grid_refresh();
    }
    void Grid_refresh()
    {
        crow.internationalcode = Session["search"].ToString();
        crow.status = 1;
        ds.Clear();
        ds = cons.SearchConsultation(crow);
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Select")
        {
            int id = (int)GridView2.DataKeys[idx].Value;
            Session["id"] = id;
            crow.id = id;
            ds.Clear();
            ds = cons.SearchConsultationById(crow);
            TextBox1.Text = ds.Tables["SearchConsultationById"].Rows[0][3].ToString();
            TextBox2.Text = ds.Tables["SearchConsultationById"].Rows[0][4].ToString();
            TextBox3.Text = ds.Tables["SearchConsultationById"].Rows[0][5].ToString();
            Session["ch"] = 1;


        }
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        txtCode.Enabled = true;
        txtName.Enabled = false;
        txtFamily.Enabled = false;
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        txtCode.Enabled = false;
        txtName.Enabled = true;
        txtFamily.Enabled = true;
    }
}