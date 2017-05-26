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
public partial class Admin_Search : System.Web.UI.Page
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
   

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Roles.IsUserInRole("Users"))
        {
            GridView3.Columns[11].Visible = false;
            GridView1.Columns[11].Visible = false;
        }


        if (IsPostBack == false)
        {
            DataSet ds = new DataSet();
            ds = year.SelectYears();
            
            
            Session["years"] = ds.Tables["year"].Rows[ds.Tables["year"].Rows.Count-1][1].ToString();
            
            degrow.year = Session["years"].ToString();
            //degrow.year = DropDownList15.Text; 
            GridView1.DataSource = student.SearchAllPersonalInfo(degrow);
            GridView1.DataBind();
                              
            
        }
    }
    protected void btnSaerch_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
            if (txtCode.Text == "___-___-___-_")
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('کد ملی دانش آموز را وارد کنید')", true);
            else
            {
                GridView3.Visible = false;
                srow.internationalcode = txtCode.Text.Replace("-", "");
                degrow.year = DropDownList15.SelectedItem.Text;
                GridView3.Visible = false;
                GridView1.Visible = true;
                degrow.year = DropDownList15.SelectedItem.Text;
                GridView1.DataSource = student.SearchPersonalInfoByCode(srow, degrow);
                GridView1.DataBind();
            }

        if (RadioButton2.Checked)
        {
            GridView3.Visible = false;
            GridView1.Visible = true;
            degrow.year = DropDownList15.SelectedItem.Text;
            GridView1.DataSource = student.SearchAllPersonalInfo(degrow);
            GridView1.DataBind();
        }

        if (RadioButton3.Checked)
            if (txtFamily.Text == "")
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('نام خانوادگی دانش آموز را وارد کنید')", true);
            else
            {
                srow.family = txtFamily.Text;
                srow.name = txtName.Text;
                degrow.year = DropDownList15.SelectedItem.Text;
                GridView3.Visible = false;
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


            }
     
     
        
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

        degrow.year = DropDownList15.SelectedItem.Text;
        GridView1.DataSource = student.SearchAllPersonalInfo(degrow);
        GridView1.DataBind();
        txtCode.Enabled = false;
        //btnSaerch.Enabled = false;
        DropDownList10.Enabled = false;
        DropDownList9.Enabled = false;
        DropDownList7.Enabled = false;
        DropDownList13.Enabled = false;
        txtFamily.Enabled = false;
        txtName.Enabled = false;
        GridView3.Visible = false;
        GridView1.Visible = true;
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        txtCode.Enabled = true;
        //btnSaerch.Enabled = true;
        GridView3.Visible = false;
        GridView1.Visible = true;
        txtFamily.Enabled = false;
        txtName.Enabled = false;
        DropDownList10.Enabled = false;
        DropDownList9.Enabled = false;
        DropDownList7.Enabled = false;
        DropDownList13.Enabled = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Select")
        {
            Session["search"] = (string)GridView1.DataKeys[idx].Value;
            Response.Redirect("SearchInfoDetials.aspx");

        }
        if (e.CommandName == "Delete")
        {
            srow.internationalcode = (string)GridView1.DataKeys[idx].Value;
            student.DeleteStudentsInformation(srow);
            if (RadioButton1.Checked)
            {
                srow.internationalcode = txtCode.Text;
                degrow.year = DropDownList15.SelectedItem.Text;
                GridView1.DataSource = student.SearchPersonalInfoByCode(srow, degrow);
                GridView1.DataBind();

            }
            if (RadioButton2.Checked)
            {
                degrow.year = DropDownList15.SelectedItem.Text;
                GridView1.DataSource = student.SearchAllPersonalInfo(degrow);
                GridView1.DataBind();
            }
            if (RadioButton3.Checked)
            {
                srow.family = txtFamily.Text;
                srow.name = txtName.Text;
                degrow.year = DropDownList15.SelectedItem.Text;
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
            }

        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        if (RadioButton1.Checked)
        {
            GridView3.Visible = false;
            srow.internationalcode = txtCode.Text.Replace("-", "");
            degrow.year = DropDownList15.SelectedItem.Text;
            GridView3.Visible = false;
            GridView1.Visible = true;
            degrow.year = DropDownList15.SelectedItem.Text;
            GridView1.DataSource = student.SearchPersonalInfoByCode(srow, degrow);
            GridView1.DataBind();

        }
        if (RadioButton2.Checked)
        {
            GridView3.Visible = false;
            GridView1.Visible = true;
            degrow.year = DropDownList15.SelectedItem.Text;
            GridView1.DataSource = student.SearchAllPersonalInfo(degrow);
            GridView1.DataBind();
        }
        if (RadioButton3.Checked)
        {
            srow.family = txtFamily.Text;
            srow.name = txtName.Text;
            degrow.year = DropDownList15.SelectedItem.Text;
            GridView3.Visible = false;
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


        }

    }
    protected void txtFamily_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        //btnSaerch.Enabled = true;
        txtName.Enabled = true;
        txtFamily.Enabled = true;
        txtCode.Enabled = false;
        DropDownList10.Enabled = false;
        DropDownList9.Enabled = false;
        DropDownList7.Enabled = false;
        DropDownList13.Enabled = false;
        GridView3.Visible = false;
        GridView1.Visible = true;
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        //year = DropDownList7.SelectedItem.Text;
       
    }
    protected void DropDownList13_SelectedIndexChanged(object sender, EventArgs e)
    {
     // degree1 = DropDownList13.SelectedItem.Text;
       
        DropDownList9.Items.Clear();
       
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        //btnSaerch.Enabled = true;
        txtFamily.Enabled = false;
        txtName.Enabled = false;
        txtCode.Enabled = false;
        DropDownList10.Enabled = true;
        DropDownList9.Enabled = true;
        DropDownList7.Enabled = true;
        DropDownList13.Enabled = true;
        GridView3.Visible = true;
        GridView1.Visible = false;
    }
   
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        //grade = DropDownList9.SelectedItem.Text;
       
    }
    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {
       // gender = DropDownList10.SelectedItem.Text;
      
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
    }



    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Select")
        {
            Session["search"] = (string)GridView3.DataKeys[idx].Value;
            Response.Redirect("SearchInfoDetials.aspx");

        }
        if (e.CommandName == "Delete")
        {
            srow.internationalcode = (string)GridView3.DataKeys[idx].Value;
            student.DeleteStudentsInformation(srow);

           // srow.internationalcode = GridView3.Rows[idx].Cells[0].Text;
           // GridView3.DataSource = SqlDataSource6;
           GridView3.DataBind();
        }


        }

    protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        GridView3.PageSize = 200;
    }


    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowState != DataControlRowState.Edit) // check for RowState
        {
            if (e.Row.RowType == DataControlRowType.DataRow) //check for RowType
            {
                string id = e.Row.Cells[2].Text; // Get the id to be deleted
                //cast the ShowDeleteButton link to linkbutton

                LinkButton lb = (LinkButton)e.Row.Cells[11].Controls[0];
                if (lb != null)
                {
                    //attach the JavaScript function with the ID as the paramter
                    lb.Attributes.Add("onclick", "return ConfirmOnDelete('" + id + "');");
                }
            }
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowState != DataControlRowState.Edit) // check for RowState
        {
            if (e.Row.RowType == DataControlRowType.DataRow) //check for RowType
            {
                string id = e.Row.Cells[1].Text; // Get the id to be deleted
                //cast the ShowDeleteButton link to linkbutton

                LinkButton lb = (LinkButton)e.Row.Cells[11].Controls[0];
                if (lb != null)
                {
                    //attach the JavaScript function with the ID as the paramter
                    lb.Attributes.Add("onclick", "return ConfirmOnDelete('" + id + "');");
                }
            }
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }

    protected void DropDownList16_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_Load(object sender, EventArgs e)
    {
        //TextBox1.Text = DropDownList15.SelectedItem.Text.ToString();
    }

    protected void DropDownList15_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}